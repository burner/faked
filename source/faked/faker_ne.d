module faker.faker_ne;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_ne : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Pvt Ltd}", q"{Group}", q"{Ltd}", q"{Limited}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{np}", q"{com}", q"{info}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{worldlink.com.np}", q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Bhaktapur}", q"{Biratnagar}", q"{Birendranagar}", q"{Birgunj}", q"{Butwal}", q"{Damak}", q"{Dharan}"
		, q"{Gaur}", q"{Gorkha}", q"{Hetauda}", q"{Itahari}", q"{Janakpur}", q"{Kathmandu}", q"{Lahan}"
		, q"{Nepalgunj}", q"{Pokhara}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Nepal}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{Baglung}", q"{Banke}", q"{Bara}", q"{Bardiya}", q"{Bhaktapur}", q"{Bhojupu}", q"{Chitwan}", q"{Dailekh}"
		, q"{Dang}", q"{Dhading}", q"{Dhankuta}", q"{Dhanusa}", q"{Dolakha}", q"{Dolpha}", q"{Gorkha}"
		, q"{Gulmi}", q"{Humla}", q"{Ilam}", q"{Jajarkot}", q"{Jhapa}", q"{Jumla}", q"{Kabhrepalanchok}"
		, q"{Kalikot}", q"{Kapilvastu}", q"{Kaski}", q"{Kathmandu}", q"{Lalitpur}", q"{Lamjung}", q"{Manang}"
		, q"{Mohottari}", q"{Morang}", q"{Mugu}", q"{Mustang}", q"{Myagdi}", q"{Nawalparasi}", q"{Nuwakot}"
		, q"{Palpa}", q"{Parbat}", q"{Parsa}", q"{Ramechhap}", q"{Rauswa}", q"{Rautahat}", q"{Rolpa}", q"{Rupandehi}"
		, q"{Sankhuwasabha}", q"{Sarlahi}", q"{Sindhuli}", q"{Sindhupalchok}", q"{Sunsari}", q"{Surket}"
		, q"{Syangja}", q"{Tanahu}", q"{Terhathum}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Ajita}", q"{Amita}", q"{Ashmi}", q"{Asmita}", q"{Bina}", q"{Deepika}", q"{Laxmi}", q"{Manisha}"
		, q"{Nikita}", q"{Pooja}", q"{Rajina}", q"{Ratna}", q"{Sarita}", q"{Shilpa}", q"{Shirisha}", q"{Shristi}"
		, q"{Sunita}", q"{Susan}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aarav}", q"{Ajita}", q"{Amit}", q"{Amita}", q"{Amrit}", q"{Arijit}", q"{Ashmi}", q"{Asmita}", q"{Bibek}"
		, q"{Bijay}", q"{Bikash}", q"{Bina}", q"{Bishal}", q"{Bishnu}", q"{Buddha}", q"{Deepika}", q"{Dipendra}"
		, q"{Gagan}", q"{Ganesh}", q"{Khem}", q"{Krishna}", q"{Laxmi}", q"{Manisha}", q"{Nabin}", q"{Nikita}"
		, q"{Niraj}", q"{Nischal}", q"{Padam}", q"{Pooja}", q"{Prabin}", q"{Prakash}", q"{Prashant}", q"{Prem}"
		, q"{Purna}", q"{Rajendra}", q"{Rajina}", q"{Raju}", q"{Rakesh}", q"{Ranjan}", q"{Ratna}", q"{Sagar}"
		, q"{Sandeep}", q"{Sanjay}", q"{Santosh}", q"{Sarita}", q"{Shilpa}", q"{Shirisha}", q"{Shristi}"
		, q"{Siddhartha}", q"{Subash}", q"{Sumeet}", q"{Sunita}", q"{Suraj}", q"{Susan}", q"{Sushant}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Adhikari}", q"{Aryal}", q"{Baral}", q"{Basnet}", q"{Bastola}", q"{Basynat}", q"{Bhandari}", q"{Bhattarai}"
		, q"{Chettri}", q"{Devkota}", q"{Dhakal}", q"{Dongol}", q"{Ghale}", q"{Gurung}", q"{Gyawali}", q"{Hamal}"
		, q"{Jung}", q"{KC}", q"{Kafle}", q"{Karki}", q"{Khadka}", q"{Koirala}", q"{Lama}", q"{Limbu}", q"{Magar}"
		, q"{Maharjan}", q"{Niroula}", q"{Pandey}", q"{Pradhan}", q"{Rana}", q"{Raut}", q"{Sai}", q"{Shai}"
		, q"{Shakya}", q"{Sherpa}", q"{Shrestha}", q"{Subedi}", q"{Tamang}", q"{Thapa}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Aarav}", q"{Amit}", q"{Amrit}", q"{Arijit}", q"{Bibek}", q"{Bijay}", q"{Bikash}", q"{Bishal}", q"{Bishnu}"
		, q"{Buddha}", q"{Dipendra}", q"{Gagan}", q"{Ganesh}", q"{Khem}", q"{Krishna}", q"{Nabin}", q"{Niraj}"
		, q"{Nischal}", q"{Padam}", q"{Prabin}", q"{Prakash}", q"{Prashant}", q"{Prem}", q"{Purna}", q"{Rajendra}"
		, q"{Raju}", q"{Rakesh}", q"{Ranjan}", q"{Sagar}", q"{Sandeep}", q"{Sanjay}", q"{Santosh}", q"{Siddhartha}"
		, q"{Subash}", q"{Sumeet}", q"{Suraj}", q"{Sushant}" ];

		return choice(strs, this.rnd);
	}

}
