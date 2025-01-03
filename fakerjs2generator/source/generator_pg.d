module generator_pg;

import std.array : array, appender, replace;
import std.algorithm.iteration : filter, fold, joiner, map, splitter;
import std.algorithm.searching : any, canFind, endsWith, startsWith;
import std.algorithm.sorting : sort;
import std.exception : enforce;
import std.conv : to;
import std.uni : toUpper , toLower;
import std.format : format, formattedWrite;
import std.range : empty;
import std.json;
import std.traits : FieldNameTuple;
import std.typecons : Nullable;
import std.string : indexOf;
import std.stdio;
import std.sumtype;

import helper;
import defis;

void genTopMatterPGGlobal(Out)(auto ref Out o) {
	iformat(o, 0, `CREATE TABLE Strings (
	name TEXT NOT NULL,
	lang TEXT NOT NULL,
	strings TEXT[] NOT NULL,
	PRIMARY KEY(name, lang)
);

CREATE FUNCTION numberBuild(s TEXT, sym CHAR) RETURNS TEXT
LANGUAGE SQL
AS $$
DECLARE c CHAR;
DECLARE ret TEXT;
BEGIN
	FOR idx in 0 .. s.length LOOP
		c = s[idx];
		IF c = sym THEN
			ret = ret || (floor(random() * 10 + 1)::int)::text;
		ELSE IF c = '[' THEN
	END LOOP
END
$$

final string numberBuild(string s, dchar sym = '#') {
	auto app = appender!string();
	for(size_t idx = 0; idx < s.length; ++idx) {
        dchar c = s[idx];
		if(c == sym) {
			formattedWrite(app, "%%d", uniform(0, 10, this.rnd));
        } else if(c == '[') {
            ++idx;
            size_t start = idx;
            while(idx < s.length && s[idx] != ']') {
                ++idx;
            }
            enforce(idx < s.length && s[idx] == ']');
            string[] ft = s[start .. idx].split("-");
            enforce(ft.length == 2);
            int[] ftI = ft.map!(a => to!int(a)).array;
            enforce(ft.length == 2);
            int n = uniform(ftI[0], ftI[1], this.rnd);
            formattedWrite(app, "%%d", n);
        } else if(c == '!') {
			formattedWrite(app, "%%d", uniform(2, 10, this.rnd));
		} else {
			app.put(c);
		}
	}
	return app.data;
}
`);
}

void genTopMatterPG(Out)(ref JsonFile jf, auto ref Out o, const string language, const bool base) {
}

void generatePG(Out)(JsonFile jf, const string langName, Language lang, auto ref Out o, string[] path
		, ref string[][string] methodsOfBaseClass)
{
	traversePG(jf, langName, lang, o, path, methodsOfBaseClass);
}

void traverseFwdPG(T,Out)(T t, ref Out o, string[] path) {
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverseFwdPG(__traits(getMember, t, mem), o, path ~ mem);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traverseFwdPG(t.get(), o, path);
		}
	} else {
		string ptfn = pathToFuncNamePG(path);
		static if(is(T == string[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		/*} else static if(is(T == Mustache[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Airplane[])) {
			iformat(o, 1, "final Airplane %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Airport[])) {
			iformat(o, 1, "final Airport %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Currency[])) {
			iformat(o, 1, "final Currency %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == ChemicalUnit[])) {
			iformat(o, 1, "final ChemicalUnit %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == ChemicalElement[])) {
			iformat(o, 1, "final ChemicalElement %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Airline[])) {
			iformat(o, 1, "final Airline %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == MustacheWeight[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Mustache[string])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Number[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		*/
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

void generatePackagePG(string[] langs) {
	auto f = File("../source/faked/package.d", "w");
	f.writefln(`module faked;

public import faked.customtypes;
public import faked.fakerenums;
public import faked.faker_base;
public import faked.faker_en;
` ~ "%--(public import faked.faker_%s;\n%);\n", langs.map!(l => l.toLower()));
}

void generateUnittestPG(JsonFile bs, JsonFile en, string[] langs, string[] funcs) {
	auto f = File("../source/faked/tests.d", "w");
	f.writefln(`module faked.tests;

import faked.customtypes;
import faked.fakerenums;
import faked.fakerforwarder;
import faked.faker_base;
import faked.faker_en;
` ~ "%--(import faked.faker_%s;\n%);\n", langs.map!(l => l.toLower()));

	foreach(l; langs.map!(it => it.toLower())) {
		f.writefln(`
unittest {
	auto f = new Faker_%s(13);
`, l);
		auto ltw = f.lockingTextWriter();
		foreach(fu; funcs) {
			iformat(ltw, 1, "foreach(i; 0 .. 4) {\n");
			iformat(ltw, 2, "f.%s();\n", fu);
			iformat(ltw, 1, "}\n");
		}
		f.writeln("}");
	}
	f.writefln(`
unittest {
	auto f = new FakerForwarder(13);
`);
	auto ltw = f.lockingTextWriter();
	foreach(fu; funcs) {
		iformat(ltw, 1, "foreach(i; 0 .. 4) {\n");
		iformat(ltw, 2, "f.%s();\n", fu);
		iformat(ltw, 1, "}\n");
	}
	f.writeln("}");
}

void generateForwardPG(JsonFile bs, JsonFile en, string[] langs) {
	auto f = File("../source/faked/fakerforwarder.d", "w");
	f.writefln(`module faked.fakerforwarder;

import std.random;

import faked.customtypes;
import faked.fakerenums;
import faked.faker_en;
` ~ "%--(%s\n%)" ~ `

class FakerForwarder {
@safe:
	Random rnd;
	Faker_en[] toPassThrough = [ ` ~ "%--(%s, %)" ~ ` ];

	this(int seed = 1338) {
		this.rnd = Random(seed);
	}

	string companyName() {
		return choice(this.toPassThrough, this.rnd).companyName();
	}
	final string internetEmoji() {
		return choice(this.toPassThrough, this.rnd).internetEmoji();
	}

	final string locationCity() {
		return choice(this.toPassThrough, this.rnd).locationCity();
	}

	final string personJobDescriptor() {
		return choice(this.toPassThrough, this.rnd).personJobDescriptor();
	}

	final string personJobType() {
		return choice(this.toPassThrough, this.rnd).personJobType();
	}

	final string personJobArea() {
		return choice(this.toPassThrough, this.rnd).personJobArea();
	}

    final string companyCatchPhrase() {
		return choice(this.toPassThrough, this.rnd).companyCatchPhrase();
	}

    final string phoneNumber() {
		return choice(this.toPassThrough, this.rnd).phoneNumber();
	}

    final string loremText(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremText(length);
	}

    final string loremParagraphs(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremParagraphs(length);
	}

    final string loremParagraph(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremParagraph(length);
	}

    final string loremSentance(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremSentance(length);
	}

    final string loremSentances(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremSentances(length);
	}
`
	, langs.map!(l => "import faked.faker_" ~ l.toLower() ~ ";")
	, langs.map!(l => "new Faker_" ~ l.toLower() ~ "(1337)")
	);

	auto ltw = f.lockingTextWriter();
	traverseFwdPG(bs.data, ltw, []);
	traverseFwdPG(en.data, ltw, []);

	f.writeln("}");
}



void traverseMustachAAsPG(T,Out)(T t, auto ref Out o, string[] path) {
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverseMustachAAsPG(__traits(getMember, t, mem), o, path ~ mem);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traverseMustachAAsPG(t.get(), o, path);
		}
	} else {
		static if(is(T == Mustache[string])) {
			string enumName = toFirstUpper(pathToFuncNamePG(path));
			formattedWrite(o, "enum %sEnum {\n", enumName);
			foreach(idx, key; t.keys()) {
				iformat(o, 1, "%s %s\n", idx == 0 ? " " : ",", key);
			}
			formattedWrite(o, "}\n\n");
		}
	}
}

private bool shouldOverridePG(string funcName, string[] chain
		, ref string[][string] methodsOfBaseClass)
{
	foreach(it; chain) {
		enforce(it in methodsOfBaseClass, it ~ " " ~
				methodsOfBaseClass.keys().to!string());
		if(canFind(methodsOfBaseClass[it], funcName)) {
			return true;
		}
	}
	return false;
}

void traversePG(T,Out)(JsonFile jf, const string langName, T t, ref Out o, string[] path
		, ref string[][string] methodsOfBaseClass)
{
	if(langName !in methodsOfBaseClass) {
		methodsOfBaseClass[langName] = [];
	}
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traversePG(jf, langName, __traits(getMember, t, mem), o, path ~ mem
					, methodsOfBaseClass);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traversePG(jf, langName, t.get(), o, path, methodsOfBaseClass);
		}
	} else {
		const string funcName = pathToFuncNamePG(path);
		const bool overWrite = shouldOverridePG(funcName, jf.chain, methodsOfBaseClass);
		static if(is(T == string[])) {
			methodsOfBaseClass[langName] ~= genStringArrayPG(t, o, path, langName, overWrite);
			formattedWrite(o, "\n\n");
		/*} else static if(is(T == Mustache[])) {
			methodsOfBaseClass[langName] ~= genMustache(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airplane[])) {
			methodsOfBaseClass[langName] ~= genAirplane(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airport[])) {
			methodsOfBaseClass[langName] ~= genAirport(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Currency[])) {
			methodsOfBaseClass[langName] ~= genCurrency(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == ChemicalUnit[])) {
			methodsOfBaseClass[langName] ~= genChemicalUnit(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == ChemicalElement[])) {
			methodsOfBaseClass[langName] ~= genChemicalElement(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airline[])) {
			methodsOfBaseClass[langName] ~= genAirline(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == MustacheWeight[])) {
			methodsOfBaseClass[langName] ~= genMustacheWeight(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Mustache[string])) {
			methodsOfBaseClass[langName] ~= genMustacheAA(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		*/
		} else static if(is(T == Number[])) {
			methodsOfBaseClass[langName] ~= genNumberPG(t, o, path, langName, overWrite);
			formattedWrite(o, "\n\n");
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

string pathToFuncNamePG(string[] path) {
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

string genStringArrayPG(Out)(string[] strs, ref Out o, string[] path
		, string lang
		, const bool overWrite)
{
	string ret = pathToFuncNamePG(path);
	iformat(o, 0, `INSERT INTO Strings(lang, name, strings)
VALUES ('%s', '%s', ARRAY[%--(%s, %)]);
`, lang, ret, strs.map!(s => "$$" ~ s ~ "$$"));

	return ret;
}

string genNumberPG(Out)(Number[] n, ref Out o, string[] path, string lang
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 0, `INSERT INTO Strings(lang, name, strings)
VALUES ('%s', '%s', ARRAY[%--(%s, %)]);
`, lang, ret, n.map!(s => "$$" ~ s.num ~ "$$"));

	//iformat(o, 1, "%sstring %s() {\n", overWrite ? "override " : "", ret);
	//iformat(o, 2, "const string[] strs =\n\t\t[ ");
	//str80(o, n.map!(it => it.num).array, 2);
	//o.put(" ];\n\n");
	//iformat(o, 2, "return numberBuild(choice(strs, this.rnd));\n");
	//iformat(o, 1, "}");
	return ret;
}
