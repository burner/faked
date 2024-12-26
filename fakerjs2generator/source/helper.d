module helper;

import std.array;
import std.algorithm.searching : canFind, endsWith, startsWith;
import std.algorithm.iteration : filter, joiner, map, splitter;
import std.file : exists, readText;
import std.exception;
import std.format;
import std.stdio;
import std.range : empty;
import std.conv : to;
import std.uni;
import std.utf;
import std.string : strip;

bool isImportLine(string l) {
	l = l.strip();
	return l.startsWith("import")
		&& l.endsWith(";");
}

string stripImports(string s) {
	string ret;
	bool done = false;
	foreach(l; s.splitter("\n")) {
		if(l.startsWith("//")) {
			continue;
		}
		if(done) {
			ret ~= "\n" ~ l;
		} else {
			if(l.strip.empty()) {
				ret ~= "\n" ~ l;
				continue;
			}
			const isImport = l.startsWith("import") && l.endsWith(";");
			if(!isImport) {
				done = true;
				ret ~= "\n" ~ l;
			}
		}
	}
	return ret;
}

string openAndTrimFile(string[] path) {
	const prefixes = [ "export default Object.freeze("
		, "Object.freeze("
		, "export default null;"
		, "export default"
		];
	const postfixes = [ ");", ";" ];
	string s = "faker/src/locales/" ~ path.joiner("/").to!string() ~ ".ts";
	bool e = exists(s);
	if(!e) {
		return "";
	} else {
		string r = readText(s);
		r = stripImports(r).strip();
		foreach(pre; prefixes) {
			if(r.startsWith(pre)) {
				r = r[pre.length .. $];
				r = r.strip();
			}
		}
		foreach(post; postfixes) {
			if(r.startsWith(post)) {
				r = r[0 .. $ - post.length];
				r = r.strip();
			}
		}

		return r.strip().validateString();
	}
}

string validateString(string s) {
	return s.byUTF!(dchar).to!string();
}

string stripTrailingUnderscore(string s) {
	return s.endsWith("_")
		? s[0 .. $ - 1]
		: s;
}

string camelCase(const string input, dchar[] separaters = ['_']) {
	string output;
	bool upcaseNext = false;
	foreach(c; input) {
		if (!separaters.canFind(c)) {
			if (upcaseNext) {
				output ~= c.toUpper;
				upcaseNext = false;
			}
			else
				output ~= c.toLower;
		}
		else {
			upcaseNext = true;
		}
	}

	return output;
}

string toFirstUpper(string s) {
	enforce(!s.empty);
	string ret = s[0].toUpper().to!string() ~ s[1 .. $];
	return ret;
}

void iformat(Out,Args...)(ref Out o, size_t indent, string f, Args args) {
	foreach(_; 0 .. indent) {
		o.put('\t');
	}
	formattedWrite(o, f, args);
}

void str80(Out)(ref Out o, string[] strs, size_t tabs) {
	size_t curStrCount;
	size_t curLength = tabs * 4;
	size_t curLineCount = 0;
	foreach(idx, s; strs) {
		if(curStrCount == 0) {
			if(idx > 0) {
				o.put(", ");
				curLength += 2;
			}
			o.put("q\"{");
			o.put(s);
			o.put("}\"");
			curLength += s.length + 2;
			++curStrCount;
		} else {
			if(curLength > 80) {
				curLength = tabs * 4;
				o.put('\n');
				foreach(_; 0 .. tabs) {
					o.put('\t');
				}
				curStrCount = 0;
			}
			if(idx > 0) {
				o.put(", ");
				curLength += 2;
			}
			o.put("q\"{");
			o.put(s);
			o.put("}\"");
			curLength += s.length + 2;
		}
	}
}

string pathToFuncName(string[] path) {
	path = path.map!(p => p.splitter("_"))
		.joiner
		.filter!(it => !it.empty)
		.array;
	enforce(path.length > 1, to!string(path));
	string ret = path[0];
	foreach(it; path[1 .. $]) {
		char up = to!char(it[0].toUpper());
		string ta = up ~ it[1 .. $];
		ret ~= ta;
	}
	return ret;
}
