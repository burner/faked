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
	//iformat(o, 0, "BEGIN TRANSACTION;\n\n");
	iformat(o, 0, "DROP TABLE IF EXISTS Strings;\n");
	iformat(o, 0, `CREATE TABLE Strings (
	name TEXT NOT NULL,
	lang TEXT NOT NULL,
	strings TEXT[] NOT NULL,
	PRIMARY KEY(name, lang)
);

CREATE OR REPLACE FUNCTION numberBuild(s TEXT, sym TEXT = '#') RETURNS TEXT
AS $$
DECLARE
	idx INT = 1;
	ret TEXT = '';
	front TEXT;
	lowerBound TEXT;
	upperBound TEXT;
BEGIN
	WHILE idx <= LENGTH(s) LOOP
		front = LEFT(SUBSTR(s, idx, LENGTH(s)), 1);
		IF front = '#' THEN
			ret = ret || FLOOR(random() * 9)::int::text;
			idx = idx + 1;
		ELSIF front = '!' THEN
			ret = ret || FLOOR(random() * 8 + 1)::int::text;
			idx = idx + 1;
		ELSIF front = '[' THEN
			lowerBound = extractNumber(SUBSTR(s, idx + 1, LENGTH(s)));
			upperBound = extractNumber(SUBSTR(s, idx + 2 + LENGTH(lowerBound), LENGTH(s)));
			ret = ret || FLOOR(random() * (upperBound::int-lowerBound::int+1) + lowerBound::int)::int;
			idx = idx + LENGTH(lowerBound) + LENGTH(upperBound) + 3;
		ELSE
			ret = ret || front;
			idx = idx + 1;
		END IF;
	END LOOP;
	return ret;
END
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION extractNumber(s TEXT) RETURNS TEXT
AS $$
DECLARE
	ret TEXT = '';
	front TEXT;
BEGIN
	FOR idx IN 1 .. LENGTH(s) LOOP
		front = LEFT(SUBSTR(s, idx, LENGTH(s)), 1);
		IF isdigit(front) THEN
			ret = ret || front;
		ELSE
			EXIT;
		END IF;
	END LOOP;
	RETURN ret;
END

$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION isdigit(text) RETURNS BOOLEAN AS '
select $1 ~ ''^(-)?[0-9]+$'' as result
' LANGUAGE SQL;

DROP FUNCTION IF EXISTS random_string_select;
CREATE OR REPLACE FUNCTION random_string_select(lang_chain TEXT[], field TEXT) RETURNS TEXT
AS $$
DECLARE strs TEXT[];
    idx INTEGER;
	l TEXT;
BEGIN
	FOREACH l IN ARRAY lang_chain LOOP
		SELECT strings INTO strs
		  FROM Strings AS S
		 WHERE S.lang = l AND S.name = field;

		IF ARRAY_LENGTH(strs, 1) > 0 THEN
			idx = TRUNC(RANDOM() * ARRAY_LENGTH(strs, 1) + 1);
			RETURN strs[idx];
		END IF;
	END LOOP;
	RETURN '';
END
$$ LANGUAGE 'plpgsql' STABLE;
`);
}

void genTopMatterPG(Out)(ref JsonFile jf, auto ref Out o, const string language, const bool base) {
	if(language != "en") {
		return;
	}

	string[][] toReplace =
		[ [ "locationStreet_en", "locationStreetPattern_en"]
		, [ "locationCity_en", "locationCityPattern_en"]
		, [ "personJobDescriptor_en", "personTitleDescriptor_en"]
		, [ "personJobType_en", "personTitleJob_en"]
		, [ "personJobArea_en", "personTitleLevel_en"]
		, [ "companyName_en", "companyNamePattern_en"]
		];

	foreach(it; toReplace) {
	iformat(o, 0, `
DROP FUNCTION IF EXISTS %1$s;
CREATE OR REPLACE FUNCTION %2$s() RETURNS TEXT
AS $$
BEGIN
	RETURN %2$s();
END
$$ LANGUAGE 'plpgsql' STABLE;
`,  it[0], it[1]);
	}
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
}

void generateUnittestPG(JsonFile bs, JsonFile en, string[] langs, string[] funcs) {
}

void generateForwardPG(JsonFile bs, JsonFile en, string[] langs) {
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
			methodsOfBaseClass[langName] ~= genStringArrayPG(t, o, path,
					langName, overWrite, jf);
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
			methodsOfBaseClass[langName] ~= genNumberPG(t, o, path, langName,
					overWrite, jf);
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
		, const bool overWrite
		, JsonFile jf)
{
	string ret = pathToFuncNamePG(path);
	iformat(o, 0, `INSERT INTO Strings(lang, name, strings)
VALUES ('%s', '%s', ARRAY[%--(%s, %)]);
`, lang, ret, strs.map!(s => "$$" ~ s ~ "$$"));

	iformat(o, 0, "\nDROP FUNCTION IF EXISTS %s_%s;\n", ret, lang);
	iformat(o, 0, "CREATE OR REPLACE FUNCTION %s_%s() RETURNS TEXT\n", ret
			, lang);
	iformat(o, 0, "AS $$\n");
	iformat(o, 0, "BEGIN\n");
	iformat(o, 1, "RETURN random_string_select('%s', '%s');\n", ret, lang);
	iformat(o, 0, "END\n");
	iformat(o, 0, "$$ LANGUAGE 'plpgsql' STABLE;\n");

	return ret;
}

string genNumberPG(Out)(Number[] n, ref Out o, string[] path, string lang
		, const bool overWrite
		, JsonFile jf)
{
	string ret = pathToFuncName(path);
	iformat(o, 0, `INSERT INTO Strings(lang, name, strings)
VALUES ('%s', '%s', ARRAY[%--(%s, %)]);
`, lang, ret, n.map!(s => "$$" ~ s.num ~ "$$"));

	iformat(o, 0, "\nDROP FUNCTION IF EXISTS %s_%s;\n", ret, lang);
	iformat(o, 0, "CREATE OR REPLACE FUNCTION %s_%s() RETURNS TEXT\n", ret
			, lang);
	iformat(o, 0, "AS $$\n");
	iformat(o, 1, "DECLARE strs TEXT[];\n");
	iformat(o, 1, "    idx INTEGER;\n");
	iformat(o, 0, "BEGIN\n");
	iformat(o, 1, "SELECT strings INTO strs\n");
	iformat(o, 1, "  FROM Strings\n");
	iformat(o, 1, " WHERE lang = '%s' AND name = '%s';\n\n"
			, lang, ret
	);
	iformat(o, 1, "idx = TRUNC(RANDOM() * ARRAY_LENGTH(strs, 1) + 1);\n");
	iformat(o, 1, "RETURN numberBuild(strs[idx]);\n");

	iformat(o, 0, "END\n");
	iformat(o, 0, "$$ LANGUAGE 'plpgsql' STABLE;\n");

	return ret;
}

void genLateBindingsPG(Out)(ref Out o, string langName
		, string[] methodsOfLang, bool[string] funcs, JsonFile jf)
{
	foreach(m; methodsOfLang) {
		if(m in funcs) {
			continue;
		}

		writefln("%s %s %s", langName, m, jf.chain);

		iformat(o, 0, "\nDROP FUNCTION IF EXISTS %s_%s;\n", m
				, langName);
		iformat(o, 0, "CREATE OR REPLACE FUNCTION %s_%s() RETURNS TEXT\n", m
				, langName);
		iformat(o, 0, "AS $$\n");
		iformat(o, 0, "BEGIN\n");
		iformat(o, 1, "RETURN %s_%s();\n", m, jf.chain[0]);

		iformat(o, 0, "END\n");
		iformat(o, 0, "$$ LANGUAGE 'plpgsql' STABLE;\n");
	}
}
