// generated by fakerjsgenerator
///
module faked.faker_en_ca;

import faked.base;


///
class Faker_en_ca : Faker {
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
		"!##-!##-####",
		"(!##)!##-####",
		"!##.!##.####",
		"1-!##-###-####",
		"!##-!##-#### x###",
		"(!##)!##-#### x###",
		"1-!##-!##-#### x###",
		"!##.!##.#### x###",
		"!##-!##-#### x####",
		"(!##)!##-#### x####",
		"1-!##-!##-#### x####",
		"!##.!##.#### x####",
		"!##-!##-#### x#####",
		"(!##)!##-#### x#####",
		"1-!##-!##-#### x#####",
		"!##.!##.#### x#####"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressCityName() {
		auto data = [
		"Argentia",
		"Asbestos",
		"Baddeck",
		"Baie-Comeau",
		"Bancroft",
		"Banff",
		"Barkerville",
		"Barrie",
		"Bathurst",
		"Batoche",
		"Belleville",
		"Beloeil",
		"Bonavista",
		"Borden",
		"Brampton",
		"Brandon",
		"Brantford",
		"Brockville",
		"Brooks",
		"Burlington",
		"Burnaby",
		"Calgary",
		"Cambridge",
		"Campbell River",
		"Cap-de-la-Madeleine",
		"Caraquet",
		"Cavendish",
		"Chambly",
		"Channel-Port aux Basques",
		"Charlesbourg",
		"Charlottetown",
		"Châteauguay",
		"Chatham",
		"Chatham-Kent",
		"Chibougamau",
		"Chilliwack",
		"Churchill",
		"Corner Brook",
		"Cornwall",
		"Côte-Saint-Luc",
		"Courtenay",
		"Cranbrook",
		"Cumberland House",
		"Dalhousie",
		"Dauphin",
		"Dawson",
		"Dawson Creek",
		"Delta",
		"Digby",
		"Dorval",
		"Edmonton",
		"Elliot Lake",
		"Esquimalt",
		"Estevan",
		"Etobicoke",
		"Ferryland",
		"Flin Flon",
		"Flin Flon",
		"Fort Erie",
		"Fort Frances",
		"Fort McMurray",
		"Fort Saint James",
		"Fort Saint John",
		"Fort Smith",
		"Fredericton",
		"Gananoque",
		"Gander",
		"Gaspé",
		"Gatineau",
		"Glace Bay",
		"Granby",
		"Grand Falls–Windsor",
		"Grande Prairie",
		"Guelph",
		"Halifax",
		"Hamilton",
		"Happy Valley–Goose Bay",
		"Harbour Grace",
		"Havre-Saint-Pierre",
		"Hay River",
		"Hope",
		"Hull",
		"Inuvik",
		"Iqaluit",
		"Iroquois Falls",
		"Jasper",
		"Jonquière",
		"Kamloops",
		"Kapuskasing",
		"Kawartha Lakes",
		"Kelowna",
		"Kenora",
		"Kildonan",
		"Kimberley",
		"Kingston",
		"Kirkland Lake",
		"Kitchener",
		"Kitimat",
		"Kuujjuaq",
		"La Salle",
		"La Tuque",
		"Labrador City",
		"Lachine",
		"Lake Louise",
		"Langley",
		"Laurentian Hills",
		"Laval",
		"Lethbridge",
		"Lévis",
		"Liverpool",
		"London",
		"Longueuil",
		"Louisbourg",
		"Lunenburg",
		"Magog",
		"Matane",
		"Medicine Hat",
		"Midland",
		"Miramichi",
		"Mississauga",
		"Moncton",
		"Montreal",
		"Montréal-Nord",
		"Moose Factory",
		"Moose Jaw",
		"Moosonee",
		"Nanaimo",
		"Nelson",
		"New Westminster",
		"Niagara Falls",
		"Niagara-on-the-Lake",
		"North Bay",
		"North Vancouver",
		"North York",
		"Oak Bay",
		"Oakville",
		"Orillia",
		"Oshawa",
		"Ottawa",
		"Parry Sound",
		"Penticton",
		"Percé",
		"Perth",
		"Peterborough",
		"Picton",
		"Pictou",
		"Placentia",
		"Port Colborne",
		"Port Hawkesbury",
		"Port-Cartier",
		"Powell River",
		"Prince Albert",
		"Prince George",
		"Prince Rupert",
		"Quebec",
		"Quesnel",
		"Red Deer",
		"Regina",
		"Revelstoke",
		"Rimouski",
		"Rossland",
		"Rouyn-Noranda",
		"Saguenay",
		"Saint Albert",
		"Saint Anthony",
		"Saint Boniface",
		"Saint Catharines",
		"Saint John",
		"Saint Thomas",
		"Saint-Eustache",
		"Saint-Hubert",
		"Sainte-Anne-de-Beaupré",
		"Sainte-Foy",
		"Sainte-Thérèse",
		"Sarnia-Clearwater",
		"Saskatoon",
		"Sault Sainte Marie",
		"Scarborough",
		"Sept-Îles",
		"Sherbrooke",
		"Simcoe",
		"Sorel-Tracy",
		"Souris",
		"Springhill",
		"St. John’s",
		"Stratford",
		"Sudbury",
		"Summerside",
		"Swan River",
		"Sydney",
		"Temiskaming Shores",
		"Thompson",
		"Thorold",
		"Thunder Bay",
		"Timmins",
		"Toronto",
		"Trail",
		"Trenton",
		"Trois-Rivières",
		"Tuktoyaktuk",
		"Uranium City",
		"Val-d’Or",
		"Vancouver",
		"Vernon",
		"Victoria",
		"Wabana",
		"Waskaganish",
		"Waterloo",
		"Watson Lake",
		"Welland",
		"West Nipissing",
		"West Vancouver",
		"White Rock",
		"Whitehorse",
		"Windsor",
		"Winnipeg",
		"Woodstock",
		"Yarmouth",
		"Yellowknife",
		"York",
		"York Factory"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		auto data = [
		"Alberta",
		"British Columbia",
		"Manitoba",
		"New Brunswick",
		"Newfoundland and Labrador",
		"Nova Scotia",
		"Northwest Territories",
		"Nunavut",
		"Ontario",
		"Prince Edward Island",
		"Quebec",
		"Saskatchewan",
		"Yukon"
		];
		return choice(data, this.rnd);
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
		"YT"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDefaultCountry() {
		auto data = [
		"Canada'"
		];
		return choice(data, this.rnd);
	}


	override string addressStreet() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return nameFirstName() ~ " " ~ addressStreetSuffix();
			case 1: return nameLastName() ~ " " ~ addressStreetSuffix();
		}
	}


	override string addressCity() {
		final switch(uniform(0, 4, this.rnd)) {
			case 0: return addressCityPrefix() ~ " " ~ nameFirstName() ~ addressCitySuffix();
			case 1: return addressCityPrefix() ~ " " ~ nameFirstName();
			case 2: return nameFirstName() ~ addressCitySuffix();
			case 3: return nameLastName() ~ addressCitySuffix();
		}
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
