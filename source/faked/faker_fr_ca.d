// generated by fakerjsgenerator
///
module faked.faker_fr_ca;

import faked.base;


///
class Faker_fr_ca : Faker {
@safe:
	import std.random;
	import std.array;
	import std.format;
	import std.conv : to;

	///
	this(int seed) {
        super(seed);
	}

	///
	override string phoneNumberFormats() {
		auto data = [
		"### ###-####",
		"1 ### ###-####",
		"### ###-####",
		"poste ###'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressStateAbbr() {
		auto data = [
		"AB",
		"BC",
		"MB",
		"NB",
		"NL",
		"NS",
		"NU",
		"NT",
		"ON",
		"PE",
		"QC",
		"SK",
		"YK"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		auto data = [
		"Alberta",
		"Colombie-Britannique",
		"Manitoba",
		"Nouveau-Brunswick",
		"Terre-Neuve-et-Labrador",
		"Nouvelle-Écosse",
		"Territoires du Nord-Ouest",
		"Nunavut",
		"Ontario",
		"Île-du-Prince-Édouard",
		"Québec",
		"Saskatchewan",
		"Yukon"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressPostcode() {
		auto data = [
		"A#? #?#",
		"B#? #?#",
		"C#? #?#",
		"E#? #?#",
		"G#? #?#",
		"H#? #?#",
		"J#? #?#",
		"K#? #?#",
		"L#? #?#",
		"M#? #?#",
		"N#? #?#",
		"P#? #?#",
		"R#? #?#",
		"S#? #?#",
		"T#? #?#",
		"V#? #?#",
		"X#? #?#",
		"Y#? #?#"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressDefaultCountry() {
		auto data = [
		"Canada'"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetFreeEmail() {
		auto data = [
		"gmail.com",
		"yahoo.ca",
		"hotmail.com'"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		auto data = [
		"qc.ca",
		"ca",
		"com",
		"biz",
		"info",
		"name",
		"net",
		"org'"
		];
		return choice(data, this.rnd);
	}

}
