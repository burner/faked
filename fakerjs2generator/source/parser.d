module parser;

import std.array : array;
import std.algorithm.searching : endsWith, startsWith;
import std.algorithm.iteration : filter, joiner, map, splitter;
import std.exception : enforce;
import std.conv : to;
import std.file : exists, readText;
import std.format : format;
import std.range : ElementEncodingType, empty;
import std.string : strip;
import std.stdio;
import std.typecons : Nullable, nullable;
import std.traits : FieldNameTuple, isArray, isIntegral, isSomeString;
import std.uni : toLower;

import json2;
import defis;
import helper;

Language parseLanguage(string folder) {
	return parseFolder!(Language)([folder]);
}

T parseFolder(T)(string[] path) {
	T ret;
	static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
		try {
			alias MemType = typeof(__traits(getMember, T, mem));
			string lowerCase = mem.toLower();
			//writefln("%--(%s, %), %s %s %s", path, mem, lowerCase, MemType.stringof);
			if(MemType.stringof.endsWith("Folder")) {
				string trimFolder = MemType.stringof[0 .. $ - 6].toLower();
				__traits(getMember, ret, mem) = parseFolder!(MemType)(path ~ trimFolder);
			} else {
				static if(is(MemType == Mustache[string])) {
					__traits(getMember, ret, mem) = parseMustacheObject(path ~ mem);
				} else static if(is(MemType == MergeArray)) {
					__traits(getMember, ret, mem) = parseMergeArray(path ~ mem);
				} else {
					__traits(getMember, ret, mem) = parseStruct!(MemType)(path ~ mem);
				}
			}
		} catch(Exception e) {
			writefln("%--(%s,%),%s %s", path, mem, e.message);
		}
	}}
	return ret;
}

string[] parseStringArray(string[] path) {
	string f = openAndTrimFile(path);
	if(f.empty) {
		//writefln("empty %(%s, %)", path);
		return [];
	} else {
		JSONValue j = parseJSON(f);
		return j.arrayNoRef
			.map!((JSONValue it) {
				return it.get!string();
			})
			.array;
	}
}

Mustache[] parseMustacheArray(string[] path) {
	string f = openAndTrimFile(path);
	if(f.empty) {
		//writefln("empty %(%s, %)", path);
		return [];
	} else {
		JSONValue j = parseJSON(f);
		return j.arrayNoRef
			.map!((JSONValue it) {
				return Mustache(it.get!string());
			})
			.array;
	}
}

Number[] parseNumberArray(string[] path) {
	string f = openAndTrimFile(path);
	if(f.empty) {
		//writefln("empty %(%s, %)", path);
		return [];
	} else {
		JSONValue j = parseJSON(f);
		return j.arrayNoRef
			.map!((JSONValue it) {
				return Number(it.get!string());
			})
			.array;
	}
}

MergeArray parseMergeArray(string[] path) {
	MergeArray ret;
	string f = openAndTrimFile(path);
	if(f.empty) {
		return ret;
	} else {
		string s = f;
		const pre = "mergeArrays(";
		const post = ");";
		enforce(s.startsWith(pre)
				, format("not mergeArray prefix '%s'", s));
		enforce(s.endsWith(post)
				, format("not mergeArray postfix '%s'", s));
		s = s[pre.length .. $ - post.length];
		return MergeArray(s.splitter(",")
				.map!(it => it.strip())
				.array);
	}
}

Mustache[string] parseMustacheObject(string[] path) {
	string f = openAndTrimFile(path);
	Mustache[string] ret;
	if(f.empty) {
		return ret;
	} else {
		JSONValue j = parseJSON(f);
		foreach(key, value; j.objectNoRef()) {
			ret[key] = Mustache(value.get!string());
		}
		return ret;
	}
}

T parseStruct(T)(string[] path) {
	string f = openAndTrimFile(path);
	T ret;
	if(f.empty) {
		return ret;
	} else {
		JSONValue j;
		try {
			j = parseJSON(f);
		} catch(Exception e) {
			throw new Exception("Failed to json parse " ~ f);
		}
		ret = parseStruct!(T)(j);
		return ret;
	}
}

T parseStruct(T)(JSONValue j) {
	static if(isArray!(T) && !isSomeString!(T)) {
		enforce(j.type == JSONType.array
				, format("Not an array but %s", j.toPrettyString()));
		alias ET = ElementEncodingType!(T);
		T ret = j.arrayNoRef()
			.map!(it => it.parseStruct!(ET)())
			.array;
		return ret;
	} else static if(isSomeString!(T)) {
		return j.get!(string)();
	} else static if(is(T == Mustache)) {
		enforce(j.type == JSONType.string
				, format("expected an Mustache got '%s'", j.toPrettyString()));
		return Mustache(j.get!string());
	} else static if(is(T == Number)) {
		enforce(j.type == JSONType.string
				, format("expected an Number got '%s'", j.toPrettyString()));
		return Number(j.get!string());
	} else static if(is(T == MustacheWeight)) {
		enforce(j.type == JSONType.object
				, format("expected an MustacheWeight got '%s'", j.toPrettyString()));
		MustacheWeight wm;

		JSONValue* vPtr = "value" in j;
		enforce(vPtr !is null
				, format("'value' not in '%s'", j.toPrettyString()));
		enforce((*vPtr).type == JSONType.string
				, format("'value' not in a string but '%s'", j.toPrettyString()));
		wm.value = Mustache((*vPtr).get!string());

		JSONValue* wPtr = "weight" in j;
		enforce(wPtr !is null
				, format("'weight' not in '%s'", j.toPrettyString()));
		enforce((wPtr).type == JSONType.integer
				, format("'weight' not in a integer but '%s'", j.toPrettyString()));
		wm.weight = (*wPtr).get!int();

		return wm;
	} else {
		T ret;
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			enum memJS = stripTrailingUnderscore(mem);
			enforce(j.type == JSONType.object
					, format("expected an object got '%s'", j.toPrettyString()));
			JSONValue* mPtr = memJS in j;
			enforce(mPtr !is null
					, format("%s not in '%s'", memJS, j.toPrettyString()));

			alias MemType = typeof(__traits(getMember, T, mem));
			static if(is(MemType == string)) {
				__traits(getMember, ret, mem) = (*mPtr).get!string();
			} else static if(isIntegral!(MemType)) {
				__traits(getMember, ret, mem) = (*mPtr).get!int();
			} else {
				__traits(getMember, ret, mem) = parseStruct!(MemType)(*mPtr);
			}
		}}
		return ret;
	}
}

string stripTrailingUnderscore(string s) {
	return s.endsWith("_")
		? s[0 .. $ - 1]
		: s;
}

