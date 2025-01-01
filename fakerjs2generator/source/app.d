import std.array;
import std.stdio;
import std.algorithm.iteration : filter, map, uniq;
import std.algorithm.sorting : sort;
import std.file : DirEntry, dirEntries, SpanMode, readText;
import std.string : lastIndexOf;
import std.typecons : tuple;
import std.uni : toLower;
import std.format;
import std.json;

import parser;
import defis;
import generator;
import generator_pg;

void genD() {
	genCustomTypes();
	string[][string] methodsOfLang;
	methodsOfLang["base"] = [];

	auto enumFile = File("../source/faked/fakerenums.d", "w");
	enumFile.writeln(`module faked.fakerenums;

`);
	auto enumFileLTW = enumFile.lockingTextWriter();
	JsonFile bs = buildBase("base.json", methodsOfLang, enumFileLTW, true);
	JsonFile en = buildBase("en.json", methodsOfLang, enumFileLTW, false);
	string[] langs;
	DirEntry[] entries = dirEntries("", "*.json", SpanMode.shallow)
			.filter!(it => it.name != "dub.json")
			.filter!(it => it.name != "base.json")
			.filter!(it => it.name != "en.json")
			.array
			.sort!((a,b) => a.name < b.name)
			.array;

	foreach(j; entries) {
		string[] dummy;
		JSONValue jv = parseJSON(readText(j.name));
		JsonFile jf = parseJson!(JsonFile)(jv, [j.name]);
		writeln(j.name, " ", jf.chain);
		backFillMergeArray(jf);
		string langName = j.name[0 .. $ - 5];
		langs ~= langName;
		{
			auto f = File(format("../source/faked/faker_%s.d", langName.toLower()), "w");
			genTopMatter(jf, f.lockingTextWriter(), langName, false);
			generate(jf, langName, jf.data, f.lockingTextWriter(), [], methodsOfLang);
			if(langName == "en") {
				traverseMustachAAs(jf.data, enumFileLTW, []);
			}
			f.writeln("}");
		}
		{
			if(langName == "en") {
				traverseMustachAAs(jf.data, enumFileLTW, []);
			}
		}
	}
	generateForward(bs, en, langs);
	string[] funcs = ([ "companyName", "internetEmoji", "locationCity"
		, "personJobDescriptor", "personJobType", "personJobArea"
		, "companyCatchPhrase", "phoneNumber", "loremText", "loremParagraphs"
		, "loremParagraph", "loremSentance", "loremSentances" ]
		~ methodsOfLang["base"] ~ methodsOfLang["en"])
		.sort
		.array
		.uniq
		.array;

	bool[string] funcsAA = funcs.map!(f => tuple(f, true)).assocArray();

	generateUnittest(bs, en, langs, funcs);
	generatePackage(langs);
}

void genPG() {
	auto pg = File("../pg.sql", "w");
	string[][string] methodsOfLang;
	methodsOfLang["base"] = [];
	genTopMatterPGGlobal(pg.lockingTextWriter());
	auto enumFile = File("../fakerenums.pg", "w");
	auto enumFileLTW = enumFile.lockingTextWriter();
	JsonFile bs = buildBase("base.json", methodsOfLang, enumFileLTW, true);
	JsonFile en = buildBase("en.json", methodsOfLang, enumFileLTW, false);
	JsonFile[string] jfs;
	jfs["en"] = en;
	genTopMatterPG(en, pg.lockingTextWriter(), "en", false);
	generatePG(en, "en", en.data, pg.lockingTextWriter(), [], methodsOfLang);
	generatePG(bs, "en", bs.data, pg.lockingTextWriter(), [], methodsOfLang);

	string[] langs;
	DirEntry[] entries = dirEntries("", "*.json", SpanMode.shallow)
			.filter!(it => it.name != "dub.json")
			.filter!(it => it.name != "base.json")
			.filter!(it => it.name != "en.json")
			.array
			.sort!((a,b) => a.name < b.name)
			.array;

	foreach(j; entries) {
		string[] dummy;
		JSONValue jv = parseJSON(readText(j.name));
		JsonFile jf = parseJson!(JsonFile)(jv, [j.name]);
		writeln(j.name, " ", jf.chain);
		backFillMergeArray(jf);
		string langName = j.name[0 .. $ - 5];
		jfs[langName] = jf;
		langs ~= langName;

		genTopMatterPG(jf, pg.lockingTextWriter(), langName, false);
		generatePG(jf, langName, jf.data, pg.lockingTextWriter(), [], methodsOfLang);
	}
	string[] funcs = ([ "companyName", "internetEmoji", "locationCity"
		, "personJobDescriptor", "personJobType", "personJobArea"
		, "companyCatchPhrase", "phoneNumber", "loremText", "loremParagraphs"
		, "loremParagraph", "loremSentance", "loremSentances" ]
		~ methodsOfLang["base"] ~ methodsOfLang["en"])
		.sort
		.array
		.uniq
		.array;

	bool[string] funcsAA = funcs.map!(f => tuple(f, true)).assocArray();

	foreach(j; entries) {
		string langName = j.name[0 .. $ - 5];
		auto ltw = pg.lockingTextWriter();
		assert(langName in methodsOfLang, j.name);
		genLateBindingsPG(ltw, langName, methodsOfLang[langName]
				, funcsAA, jfs[langName]);
	}
}

void main() {
	//genD();
	genPG();
}

JsonFile buildBase(Out)(string fn, ref string[][string] methodsOfBaseClass
		, ref Out o, const bool base)
{
	string en = fn;
	JSONValue jv = parseJSON(readText(en));
	JsonFile jf = parseJson!(JsonFile)(jv, [en]);
	backFillMergeArray(jf);
	string langName = en[0 .. $ - 5];
	auto f = File(format("../source/faked/faker_%s.d", langName), "w");
	genTopMatter(jf, f.lockingTextWriter(), langName, base);
	generate(jf, langName, jf.data, f.lockingTextWriter(), [], methodsOfBaseClass);
	f.writeln("}\n");
	traverseMustachAAs(jf.data, o, []);
	return jf;
}
