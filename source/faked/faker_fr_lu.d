	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{621 ### ###}", q"{661 ### ###}", q"{671 ### ###}", q"{691 ### ###}", q"{+352 621 ### ###}"
		, q"{+352 661 ### ###}", q"{+352 671 ### ###}", q"{+352 691 ### ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{lu}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Diekirch}", q"{Differdange}", q"{Dudelange}", q"{Echternach}", q"{Esch-sur-Alzette}", q"{Ettelbruck}"
		, q"{Grevenmacher}", q"{Luxembourg}", q"{Remich}", q"{Rumelange}", q"{Vianden}", q"{Wiltz}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
			default: return "";
		}
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Capellen}", q"{Clervaux}", q"{Diekirch}", q"{Echternach}", q"{Esch-sur-Alzette}", q"{Grevenmacher}"
		, q"{Luxembourg}", q"{Mersch}", q"{Redange}", q"{Remich}", q"{Vianden}", q"{Wiltz}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{######}", q"{########}", q"{+352 ######}", q"{+352 ########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}
