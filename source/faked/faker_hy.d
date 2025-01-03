	override string dateMonthWide() {
		const string[] strs =
		[ q"{Հունվար}", q"{Փետրվար}", q"{Մարտ}", q"{Ապրիլ}", q"{Մայիս}"
		, q"{Հունիս}", q"{Հուլիս}", q"{Օգոստոս}", q"{Սեպտեմբեր}", q"{Հոկտեմբեր}"
		, q"{Նոյեմբեր}", q"{Դեկտեմբեր}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{Հնվ}", q"{Փտր}", q"{Մրտ}", q"{Ապր}", q"{Մյս}", q"{Հնս}", q"{Հլս}", q"{Օգս}"
		, q"{Սպտ}", q"{Հկտ}", q"{Նմբ}", q"{Դկտ}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Կիրակի}", q"{Երկուշաբթի}", q"{Երեքշաբթի}", q"{Չորեքշաբթի}"
		, q"{Հինգշաբթի}", q"{Ուրբաթ}", q"{Շաբաթ}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{կրկ}", q"{երկ}", q"{երք}", q"{չրք}", q"{հնգ}", q"{ուրբ}", q"{շբթ}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}", q"{am}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{###/#}", q"{##}", q"{##/#}", q"{#}", q"{#/#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personLastName();
			case 1: return personLastName() ~ locationCitySuffix();
			default: return "";
		}
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{Հյուսիսային}", q"{Արևելյան}", q"{Արևմտյան}", q"{Հարավային}"
		, q"{Նոր}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{ակերտ}", q"{աշեն}", q"{աշատ}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{ԱՄՆ}", q"{Ադրբեջան}", q"{Ալբանիա}", q"{Ալժիր}", q"{Ամերիկյան Սամոա}"
		, q"{Ամերիկյան Վիրջինյան կղզիներ}", q"{Անգիլիա}"
		, q"{Անգոլա}", q"{Անդորրա}", q"{Անտիգուա և Բարբուդա}"
		, q"{Ավստրալիա}", q"{Ավստրիա}", q"{Արգենտինա}", q"{Արուբա}"
		, q"{Արցախի Հանրապետություն}", q"{Արևելյան Թիմոր}"
		, q"{Աֆղանստան}", q"{Բահամներ}", q"{Բահրեյն}", q"{Բանգլադեշ}"
		, q"{Բարբադոս}", q"{Բելառուս}", q"{Բելիզ}", q"{Բենին}", q"{Բերմուդա}"
		, q"{Բոլիվիա}", q"{Բոսնիա և Հերցեգովինա}", q"{Բոտսվանա}"
		, q"{Բութան}", q"{Բուլղարիա}", q"{Բուրկինա Ֆասո}", q"{Բուրունդի}"
		, q"{Բրազիլիա}", q"{Բրիտանական Վիրջինյան Կղզիներ}"
		, q"{Բրունեյ}", q"{Գաբոն}", q"{Գամբիա}", q"{Գայանա}", q"{Գերմանիա}"
		, q"{Գերնսի}", q"{Գուամ}", q"{Գվատեմալա}", q"{Գվինեա}", q"{Գվինեա-Բիսաու}"
		, q"{Գրենադա}", q"{Դանիա}", q"{Դոմինիկա}", q"{Դոմինիկյան Հանրապետություն}"
		, q"{Եգիպտոս}", q"{Եթովպիա}", q"{Եմեն}", q"{Զամբիա}", q"{Զիմբաբվե}"
		, q"{Էկվադոր}", q"{Էստոնիա}", q"{Էրիտրեա}", q"{Թաիլանդ}", q"{Թայվան}"
		, q"{Թըրքս և Կայկոս կղզիներ}", q"{Թունիս}", q"{Թուրքիա}"
		, q"{Թուրքմենստան}", q"{Ինդոնեզիա}", q"{Իռլանդիա}", q"{Իսլանդիա}"
		, q"{Իսպանիա}", q"{Իսրայել}", q"{Իտալիա}", q"{Իրան}", q"{Իրաք}"
		, q"{Լաոս}", q"{Լատվիա}", q"{Լեհաստան}", q"{Լեսոթո}", q"{Լիբանան}"
		, q"{Լիբերիա}", q"{Լիբիա}", q"{Լիխտենշտայն}", q"{Լիտվա}", q"{Լյուքսեմբուրգ}"
		, q"{Խորվաթիա}", q"{Կաբո Վերդե}", q"{Կամբոջա}", q"{Կամերուն}"
		, q"{Կայմանյան կղզիներ}", q"{Կանադա}", q"{Կատար}", q"{Կենտրոնաաֆրիկյան Հանրապետություն}"
		, q"{Կիպրոս}", q"{Կիրիբատի}", q"{Կոլումբիա}", q"{Կոմորներ}"
		, q"{Կոնգոյի Հանրապետություն}", q"{ԿոնգոյիԴեմոկրատական Հանրապետություն ԿԴՀ}"
		, q"{Կոստա Ռիկա}", q"{Կոտ դ'Իվուար}", q"{Կուբա}", q"{Կուկի կղզիներ}"
		, q"{Հայաստան}", q"{Հայիթի}", q"{Հասարակածային Գվինեա}"
		, q"{Հարավային Կորեա}", q"{Հարավաֆրիկյան Հանրապետություն}"
		, q"{Հյուսիսային Կորեա}", q"{Հյուսիսային Մակեդոնիա}"
		, q"{Հյուսիսային Մարիանյան կղզիներ}", q"{Հնդկաստան}"
		, q"{Հոնդուրաս}", q"{Հոնկոնգ}", q"{Հորդանան}", q"{Հունաստան}"
		, q"{Հունգարիա}", q"{Ղազախստան}", q"{Ղրղզստան}", q"{Ճամայկա}"
		, q"{Ճապոնիա}", q"{ՄԱԷ}", q"{ՄԹ}", q"{Մադագասկար}", q"{Մալայզիա}"
		, q"{Մալավի}", q"{Մալդիվներ}", q"{Մալթա}", q"{Մալի}", q"{Մակաու}"
		, q"{Մայոտ}", q"{Մավրիկիոս}", q"{Մավրիտանիա}", q"{Մարշալյան կղզիներ}"
		, q"{Մարոկկո}", q"{Մեն կղզի}", q"{Մեքսիկա}", q"{Միկրոնեզիա}"
		, q"{Մյանմա}", q"{Մոզամբիկ}", q"{Մոլդովա}", q"{Մոնակո}", q"{Մոնղոլիա}"
		, q"{Մոնտսերատ}", q"{Նամիբիա}", q"{Նաուրու}", q"{Նեպալ}", q"{Նիգեր}"
		, q"{Նիգերիա}", q"{Նիդերլանդյան Անտիլներ}", q"{Նիդերլանդներ}"
		, q"{Նիկարագուա}", q"{Նիուե}", q"{Նոր Զելանդիա}", q"{Նոր Կալեդոնիա}"
		, q"{Նորվեգիա}", q"{Նորֆոլք կղզի}", q"{Շվեդիա}", q"{Շվեյցարիա}"
		, q"{Շրի Լանկա}", q"{Ուգանդա}", q"{Ուզբեկստան}", q"{Ուկրաինա}"
		, q"{Ուոլիս և Ֆուտունա}", q"{Ուրուգվայ}", q"{Չադ}", q"{Չեխիա}"
		, q"{Չեռնոգորիա}", q"{Չիլի}", q"{Չինաստան}", q"{Պալաու}", q"{Պակիստան}"
		, q"{Պաղեստին}", q"{Պանամա}", q"{Պապուա Նոր Գվինեա}", q"{Պարագվայ}"
		, q"{Պերու}", q"{Պորտուգալիա}", q"{Պուերտո Ռիկո}", q"{Ջերսի}"
		, q"{Ջիբութի}", q"{Ջիբրալթար}", q"{Ռուանդա}", q"{Ռումինիա}"
		, q"{Ռուսաստան}", q"{Սալվադոր}", q"{Սահրավիա}", q"{Սամոա}"
		, q"{Սան Մարինո}", q"{Սան Տոմե և Պրինսիպի}", q"{Սաուդյան Արաբիա}"
		, q"{Սեյշելներ}", q"{Սեն Մարտեն (Ֆրանսիական Անտիլներ)}"
		, q"{Սենեգալ}", q"{Սենտ Լյուսիա}", q"{Սենտ Կիտս և Նևիս}"
		, q"{Սենտ Պիեռ և Միկելոն}", q"{Սենտ Վինսենտ և Գրենադիներ}"
		, q"{Սերբիա}", q"{Սիեռա Լեոնե}", q"{Սինգապուր}", q"{Սիրիա}"
		, q"{Սլովակիա}", q"{Սլովենիա}", q"{Սողոմոնյան Կղզիներ}"
		, q"{Սոմալիա}", q"{Սուդան}", q"{Սուրբ Բարդուղիմեոսի կղզի}"
		, q"{Սուրբ Հեղինեի կղզի}", q"{Սուրինամ}", q"{Սվազիլենդ}"
		, q"{Վանուատու}", q"{Վատիկան}", q"{Վենեսուելա}", q"{Վիետնամ}"
		, q"{Վրաստան}", q"{Տանզանիա}", q"{Տաջիկստան}", q"{Տոգո}", q"{Տոկելաու}"
		, q"{Տոնգա}", q"{Տուվալու}", q"{Տրինիդադ Տոբագո}", q"{Փիթքերն կղզիներ}"
		, q"{Քենիա}", q"{Քուվեյթ}", q"{Օման}", q"{Ֆարերյան կղզիներ}"
		, q"{Ֆիլիպիններ}", q"{Ֆինլանդիա}", q"{Ֆիջի}", q"{Ֆոլկլենդյան կղզիներ}"
		, q"{Ֆրանսիա}", q"{Ֆրանսիական Պոլինեզիա}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Արցախի Հանրապետություն}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{Հյուսիսային}", q"{Արևելյան}", q"{Հարավային}", q"{Արևմտյան}"
		, q"{Հյուսիսարևելյան}", q"{Հյուսիսարևմտյան}", q"{Հարավարևելյան}"
		, q"{Հարավարևմտյան}" ];

		return choice(strs, this.rnd);
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Բն. ###}", q"{Տուն ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Արագածոտն}", q"{Արարատ}", q"{Արմավիր}", q"{Գեղարքունիք}"
		, q"{Կոտայք}", q"{Լոռի}", q"{Շիրակ}", q"{Սյունիք}", q"{Տավուշ}"
		, q"{Վայոց ձոր}", q"{Երևան}", q"{Ստեփանակերտ}", q"{Ասկերան}"
		, q"{Հադրութ}", q"{Մարտակերտ}", q"{Մարտունի}", q"{Շահումյան}"
		, q"{Շուշի}", q"{Քաշաթաղ}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
			default: return "";
		}
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return personLastName() ~ " " ~ locationStreetSuffix();
			default: return "";
		}
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{ փողոց}", q"{ պողոտա}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{տարի}", q"{որ}", q"{փոխեց}", q"{ամեն}", q"{ինչ}", q"{կենցաղից}"
		, q"{մինչև}", q"{համաշխարհային}", q"{տնտեսություն}", q"{մի}"
		, q"{քանի}", q"{շաբաթում}", q"{բնականոն}", q"{դարձնելով}"
		, q"{այն}", q"{դեռ}", q"{երեկ}", q"{անհնար}", q"{էր}", q"{թվում}", q"{ը}"
		, q"{շատերի}", q"{համար}", q"{կմնա}", q"{որպես}", q"{անտեսանելի}"
		, q"{աղետի}", q"{խստագույն}", q"{սահմանափակումների}"
		, q"{մարդկային}", q"{կորուստների}", q"{և}", q"{գործազրկության}"
		, q"{Տարեսկզբին}", q"{չինական}", q"{Վուհանի}", q"{շուկայում}"
		, q"{ենթադրաբար}", q"{չղջիկից}", q"{մարդուն}", q"{փոխանցված}"
		, q"{վիրուսն}", q"{ապացուցեց}", q"{տեխնոլոգիական}", q"{նվաճումների}"
		, q"{հասած}", q"{մարդկությունը}", q"{դեռևս}", q"{շատ}", q"{բան}"
		, q"{չգիտի}", q"{իր}", q"{սեփական}", q"{առողջության}", q"{բնության}"
		, q"{ու}", q"{դրա}", q"{հետ}", q"{հարաբերությունների}", q"{մասին}"
		, q"{Գարնանը}", q"{երբ}", q"{վիրուսը}", q"{կաթվածահար}", q"{արեց}"
		, q"{կյանքը}", q"{գրեթե}", q"{ողջ}", q"{աշխարհում}", q"{Հռոմի}"
		, q"{կաթոլիկ}", q"{եկեղեցու}", q"{առաջնորդն}", q"{հավատացյալ}"
		, q"{հոտին}", q"{դիմեց}", q"{աղոթքով}", q"{տարվա}", q"{ընթացքում}"
		, q"{շատերն}", q"{էին}", q"{հիշում}", q"{մեջբերում}", q"{Մենք}"
		, q"{առաջ}", q"{էինք}", q"{շարժվում}", q"{գլխապտույտ}", q"{արագությամբ}"
		, q"{վստահ}", q"{ուժեղ}", q"{ենք}", q"{կարող}", q"{անել}", q"{կամենանք}"
		, q"{Ձգտելով}", q"{անձնական}", q"{բարեկեցության}", q"{մենք}"
		, q"{թույլ}", q"{տալիս}", q"{մեզ}", q"{տարվել}", q"{նյութականով}"
		, q"{վազում}", q"{շահի}", q"{ետևից}", q"{չէին}", q"{կանգնեցնում}"
		, q"{մեր}", q"{շուրջ}", q"{մոլեգնող}", q"{պատերազմներն}", q"{անարդարությունը}"
		, q"{ոչ}", q"{էլ}", q"{աղքատների}", q"{օգնություն}", q"{աղերսող}"
		, q"{ձայնն}", q"{լսում}", q"{շարունակում}", q"{ընթացքը}", q"{չնայելով}"
		, q"{բանի}", q"{առողջ}", q"{մնալ}", q"{հիվանդ}", q"{հայտարարել}"
		, q"{պապը}", q"{Անտեսանելի}", q"{առեղծվածային}", q"{մեկ}"
		, q"{տարում}", q"{խլեց}", q"{ավելի}", q"{քան}", q"{միլիոն}", q"{հազար}"
		, q"{մարդու}", q"{կյանք}", q"{վարակվեցին}", q"{միլիոնից}"
		, q"{ավելին}", q"{վարակվածներից}", q"{յուրաքանչյուր}"
		, q"{չորրորդը}", q"{մոտ}", q"{միլիոնը}", q"{այս}", q"{պահին}", q"{պայքարում}"
		, q"{է}", q"{հիվանդության}", q"{դեմ}", q"{մարդ}", q"{գտնվում}"
		, q"{ծայրահեղ}", q"{ծանր}", q"{վիճակում}", q"{Եվ}", q"{եթե}", q"{տարեսկզբին}"
		, q"{որոշ}", q"{պետություններ}", q"{պարծենալ}", q"{իրենց}"
		, q"{առողջապահական}", q"{համակարգերով}", q"{նորագույն}"
		, q"{տեխնոլոգիաներով}", q"{ապա}", q"{համավարակից}", q"{հետո}"
		, q"{ակնհայտ}", q"{դարձավ}", q"{անկախ}", q"{բյուջի}", q"{չափից}"
		, q"{հնարավորություններից}", q"{հարուստ}", q"{թե}", q"{աղքատ}"
		, q"{բոլորն}", q"{են}", q"{նույն}", q"{նավակում}", q"{նույնքան}"
		, q"{անպաշտպան}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Մարիա}", q"{Նարե}", q"{Մանե}", q"{Մարի}", q"{Մարիամ}", q"{Անի}"
		, q"{Անգելինա}", q"{Անահիտ}", q"{Էլեն}", q"{Միլենա}", q"{Եվա}"
		, q"{Աննա}", q"{Արփի}", q"{Գայանե}", q"{Լիլիթ}", q"{Մերի}", q"{Վիկտորյա}"
		, q"{Արինա}", q"{Յանա}", q"{Սոնա}", q"{Նատալի}", q"{Գոհար}", q"{Հասմիկ}"
		, q"{Սոֆի}", q"{Էմիլի}", q"{Սուսաննա}", q"{Արևիկ}", q"{Կարինե}"
		, q"{Լյուսի}", q"{Արիանա}", q"{Տաթև}", q"{Լիկա}", q"{Ռուզաննա}"
		, q"{Լիլի}", q"{Սոֆյա}", q"{Անուշ}", q"{Էլինա}", q"{Սառա}", q"{Նանե}"
		, q"{Էվա}", q"{Լիանա}", q"{Մոնիկա}", q"{Կարինա}", q"{Լիա}", q"{Նարինե}"
		, q"{Լուսինե}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Մարիա}", q"{Նարե}", q"{Մանե}", q"{Մարի}", q"{Մարիամ}", q"{Անի}"
		, q"{Անգելինա}", q"{Անահիտ}", q"{Էլեն}", q"{Միլենա}", q"{Եվա}"
		, q"{Աննա}", q"{Արփի}", q"{Գայանե}", q"{Լիլիթ}", q"{Մերի}", q"{Վիկտորյա}"
		, q"{Արինա}", q"{Յանա}", q"{Սոնա}", q"{Նատալի}", q"{Գոհար}", q"{Հասմիկ}"
		, q"{Սոֆի}", q"{Էմիլի}", q"{Սուսաննա}", q"{Արևիկ}", q"{Կարինե}"
		, q"{Լյուսի}", q"{Արիանա}", q"{Տաթև}", q"{Լիկա}", q"{Ռուզաննա}"
		, q"{Լիլի}", q"{Սոֆյա}", q"{Անուշ}", q"{Էլինա}", q"{Սառա}", q"{Նանե}"
		, q"{Էվա}", q"{Լիանա}", q"{Մոնիկա}", q"{Կարինա}", q"{Լիա}", q"{Նարինե}"
		, q"{Լուսինե}", q"{Դավիթ}", q"{Նարեկ}", q"{Ալեքս}", q"{Տիգրան}"
		, q"{Հայկ}", q"{Գոռ}", q"{Արթուր}", q"{Արմեն}", q"{Մարկ}", q"{Էրիկ}"
		, q"{Արամ}", q"{Սամվել}", q"{Արման}", q"{Ալեն}", q"{Աշոտ}", q"{Արեն}"
		, q"{Գագիկ}", q"{Դանիել}", q"{Արեգ}", q"{Ռոբերտ}", q"{Արտյոմ}"
		, q"{Արսեն}", q"{Միքայել}", q"{Սարգիս}", q"{Հովհաննես}", q"{Վահե}"
		, q"{Կարեն}", q"{Գևորգ}", q"{Լևոն}", q"{Վարդան}", q"{Ռուբեն}", q"{Սուրեն}"
		, q"{Հակոբ}", q"{Մհեր}", q"{Անդրանիկ}", q"{Ավետ}", q"{Գրիգոր}"
		, q"{Ռաֆայել}", q"{Ալեքսանդր}", q"{Մոնթե}", q"{Հարություն}"
		, q"{Էդուարդ}", q"{Ալբերտ}", q"{Գարիկ}", q"{Համլետ}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Հարությունյան}", q"{Սարգսյան}", q"{Հովհաննիսյան}"
		, q"{Գրիգորյան}", q"{Խաչատրյան}", q"{Հակոբյան}", q"{Վարդանյան}"
		, q"{Պետրոսյան}", q"{Կարապետյան}", q"{Գևորգյան}", q"{Մկրտչյան}"
		, q"{Ղազարյան}", q"{Մանուկյան}", q"{Պողոսյան}", q"{Ավետիսյան}"
		, q"{Մարտիրոսյան}", q"{Սահակյան}", q"{Դավթյան}", q"{Առաքելյան}"
		, q"{Մարգարյան}", q"{Գալստյան}", q"{Բաղդասարյան}", q"{Ստեփանյան}"
		, q"{Հայրապետյան}", q"{Սիմոնյան}", q"{Ավագյան}", q"{Գասպարյան}"
		, q"{Մուրադյան}", q"{Ասատրյան}", q"{Հովսեփյան}", q"{Աբրահամյան}"
		, q"{Զաքարյան}", q"{Մելքոնյան}", q"{Ալեքսանյան}", q"{Մխիթարյան}"
		, q"{Բարսեղյան}", q"{Մովսիսյան}", q"{Կիրակոսյան}", q"{Եղիազարյան}"
		, q"{Բաբայան}", q"{Մնացականյան}", q"{Թադևոսյան}", q"{Մինասյան}"
		, q"{Համբարձումյան}", q"{Այվազյան}", q"{Գաբրիելյան}"
		, q"{Ներսիսյան}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Դավիթ}", q"{Նարեկ}", q"{Ալեքս}", q"{Տիգրան}", q"{Հայկ}", q"{Գոռ}"
		, q"{Արթուր}", q"{Արմեն}", q"{Մարկ}", q"{Էրիկ}", q"{Արամ}", q"{Սամվել}"
		, q"{Արման}", q"{Ալեն}", q"{Աշոտ}", q"{Արեն}", q"{Գագիկ}", q"{Դանիել}"
		, q"{Արեգ}", q"{Ռոբերտ}", q"{Արտյոմ}", q"{Արսեն}", q"{Միքայել}"
		, q"{Սարգիս}", q"{Հովհաննես}", q"{Վահե}", q"{Կարեն}", q"{Գևորգ}"
		, q"{Լևոն}", q"{Վարդան}", q"{Ռուբեն}", q"{Սուրեն}", q"{Հակոբ}"
		, q"{Մհեր}", q"{Անդրանիկ}", q"{Ավետ}", q"{Գրիգոր}", q"{Ռաֆայել}"
		, q"{Ալեքսանդր}", q"{Մոնթե}", q"{Հարություն}", q"{Էդուարդ}"
		, q"{Ալբերտ}", q"{Գարիկ}", q"{Համլետ}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}
		if(rndInt >= 2 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{+374 ## ######}", q"{+374 ### #####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}
