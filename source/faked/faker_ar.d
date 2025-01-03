	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{###-###-####}", q"{(###) ###-####}", q"{1-###-###-####}", q"{###.###.####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{صغير}", q"{مريح}", q"{ريفي}", q"{ذكي}", q"{رائع}", q"{لا يصدق}"
		, q"{عملي}", q"{أملس}", q"{ممتاز}", q"{عام}", q"{يدويا}", q"{صنع يدوي}"
		, q"{مرخص}", q"{مشتق}", q"{بدون علامة}", q"{طيب المذاق}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{فولاذ}", q"{خشبي}", q"{خرسانة}", q"{بلاستيك}", q"{قطن}", q"{صوان}"
		, q"{مطاط}", q"{معدن}", q"{ناعم}", q"{طازج}", q"{مجمد}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{كرسي}", q"{سيارة}", q"{حاسوب}", q"{لوحة المفاتيح}", q"{فأر}"
		, q"{دراجة هوائية}", q"{كرة}", q"{قفازات}", q"{بنطال}", q"{قميص}"
		, q"{طاولة}", q"{أحذية}", q"{قبعة}", q"{مناشف}", q"{صابون}", q"{تونة}"
		, q"{دجاج}", q"{سمك}", q"{جبن}", q"{لحم خنزير مقدد}", q"{بيتزا}"
		, q"{سلطة}", q"{سجق}", q"{رقائق بطاطس}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{كتب}", q"{ألعاب}", q"{إلكترونيات}", q"{حواسيب}", q"{بيت}", q"{حديقة}"
		, q"{أدوات}", q"{بقالة}", q"{صحة}", q"{جمال}", q"{أطفال}", q"{رضع}"
		, q"{ملابس}", q"{أحذية}", q"{مجوهرات}", q"{أغراض رياضية}"
		, q"{في الهواء الطلق}", q"{السيارات}", q"{صناعة}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{كَانُون ٱلثَّانِي}", q"{شُبَاط}", q"{آذَار}", q"{نَيْسَان}"
		, q"{أَيَّار}", q"{حَزِيرَان}", q"{تَمُّوز}", q"{آب}", q"{أَيْلُول}"
		, q"{تِشْرِين ٱلْأَوَّل}", q"{تِشْرِين ٱلثَّانِي}"
		, q"{كَانُون ٱلْأَوَّل}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{يناير}", q"{فبراير}", q"{مارس}", q"{إبريل}", q"{مايو}", q"{يونيو}"
		, q"{يوليو}", q"{أغسطس}", q"{سبتمبر}", q"{أكتوبر}", q"{نوفمبر}"
		, q"{ديسمبر}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{الأحَد}", q"{الإثنين}", q"{الثلاثاء}", q"{الأربعاء}", q"{الخميس}"
		, q"{الجمعة}", q"{السبت}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#####}", q"{####}", q"{###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{مكة}", q"{المدينة}", q"{القاهرة}", q"{جدة}", q"{تونس}", q"{طرابلس}"
		, q"{بيروت}", q"{الإسكندرية}", q"{بنغازي}", q"{صفاقس}", q"{مراكش}"
		, q"{الدار البيضاء}", q"{غرناطة}", q"{فاس}", q"{وهران}", q"{الجزائر}"
		, q"{الخرطوم}", q"{مقديشو}", q"{القدس}", q"{غزة}", q"{جنين}", q"{نابلس}"
		, q"{دمشق}", q"{بغداد}", q"{البصرة}", q"{صلاح الدين}", q"{الكوفة}"
		, q"{عمان}", q"{صنعاء}", q"{حضرموت}", q"{المنامة}", q"{صيدا}", q"{بنزرت}"
		, q"{سوسة}", q"{نابل}", q"{الحمامات}", q"{جربة}", q"{حلب}", q"{الرياض}"
		, q"{الدّمام}", q"{أبها}", q"{جازان}", q"{القطيف}", q"{الدرعية}"
		, q"{عُنيزة}", q"{نجد}", q"{رابغ}", q"{دبي}", q"{العين}", q"{رأس الخيمة}"
		, q"{أبو ظبي}", q"{عجمان}", q"{الفجيرة}", q"{الرويس}", q"{مصفح}"
		, q"{دوز}", q"{السلع}", q"{الرحبة}", q"{الجهراء}", q"{الكويت}"
		, q"{الفرْوانية}", q"{حَوَلِّـي}", q"{الأحمدي}", q"{الدوحة}"
		, q"{الريان}", q"{دخان}", q"{الخور}", q"{أبو الظلوف}", q"{العريش}"
		, q"{الغنيم}", q"{الغرية}", q"{الموصل}", q"{أربيل}", q"{نينوى}"
		, q"{الأنبار}", q"{الحلة}", q"{سامراء}", q"{ذي قار}", q"{بابل}"
		, q"{واسط}", q"{القادسية}", q"{العقبة}", q"{الكرك}", q"{إربد}"
		, q"{عنجرة}", q"{المفرق}", q"{الفحيص}", q"{أريحا}", q"{يافا}", q"{عكا}"
		, q"{رام الله}", q"{بيت لحم}", q"{الرملة}", q"{بيسان}", q"{صفد}"
		, q"{قلقيلية}", q"{طولكرم}", q"{بيت حانون}", q"{صور}", q"{بعلبك}"
		, q"{مرجعيون}", q"{عنجر}", q"{الخيام}", q"{الشرقية}", q"{حمص}"
		, q"{اللاذقية}", q"{تدمر}", q"{حماة}", q"{طرسوس}", q"{بصرى}", q"{معرة النعمان}"
		, q"{دير الزور}", q"{داريا}", q"{دوما}", q"{التل}", q"{إدلب}", q"{عدن}"
		, q"{مأرب}", q"{إب}", q"{عمران}", q"{الشحر}", q"{البيضاء}", q"{بيحان}"
		, q"{يريم}", q"{تريم}", q"{معبر}", q"{الضالع}", q"{بورسعيد}", q"{أسيوط}"
		, q"{الأقصر}", q"{أسوان}", q"{المنيا}", q"{سوهاج}", q"{دمياط}"
		, q"{قنا}", q"{سبك الأحد}", q"{نواكشوط}", q"{شمقيط}", q"{وادان}"
		, q"{دورا}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
			default: return "";
		}
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{أفغانستان}", q"{ألبانيا}", q"{الجزائر}", q"{أمريكا ساماو}"
		, q"{أندورا}", q"{أنجولا}", q"{أنجويلا}", q"{أنتاركتيكا}"
		, q"{أنتيغوا وباربودا}", q"{الأرجنتين}", q"{أرمينيا}"
		, q"{أروبا}", q"{أرستراليا}", q"{أستريا}", q"{أذرابيجان}"
		, q"{بهماس}", q"{البحرين}", q"{بنغلادش}", q"{بربادوس}", q"{بلاروسيا}"
		, q"{بلجيكا}", q"{بليز}", q"{بينين}", q"{برمودا}", q"{بوتان}", q"{بوليفيا}"
		, q"{البوسنة والهرسك}", q"{بوتسوانا}", q"{جزيرة بوفيه}"
		, q"{البرازيل}", q"{إقليم المحيط الهندي البريطاني}"
		, q"{برونوي دار السلام}", q"{بلغاريا}", q"{بوركينا فاسو}"
		, q"{بوروندي}", q"{كمبوديا}", q"{كاميرون}", q"{كندا}", q"{الرأس الأخضر}"
		, q"{جزر كايمان}", q"{جمهورية إفريقيا الوسطى}", q"{التشاد}"
		, q"{شيلي}", q"{الصين}", q"{جزيرة عيد الميلاد}", q"{جزر كوكوس}"
		, q"{كولومبيا}", q"{جزر القمر}", q"{كونجو}", q"{جزر كوك}", q"{كوستا ريكا}"
		, q"{ساحل العاج}", q"{كرواتيا}", q"{كوبا}", q"{قبرص}", q"{التشيك}"
		, q"{دنمارك}", q"{جيبوتي}", q"{دومينيكا}", q"{جمهورية الدومينيكان}"
		, q"{إكوادور}", q"{مصر}", q"{السلفادور}", q"{غينيا الاستوائية}"
		, q"{إريتريا}", q"{إستونيا}", q"{أثيوبيا}", q"{جزر فارو}"
		, q"{جزر فوكلاند}", q"{فيجي}", q"{فلندا}", q"{فرنست}", q"{غويانا الفرنسية}"
		, q"{بولينزيا الفرنسية}", q"{أراض فرنسية جنوبية وأنتارتيكية}"
		, q"{جابون}", q"{غمبيا}", q"{جورجيا}", q"{ألمانيا}", q"{غانا}"
		, q"{جبل طارق}", q"{اليونان}", q"{الأرض الخضراء}", q"{غرينادا}"
		, q"{غوادلوب}", q"{غوام}", q"{غواتيمالا}", q"{غيرنزي}", q"{غينيا}"
		, q"{غينيا بيساو}", q"{غيانا}", q"{هايتي}", q"{جزيرة هيرد وجزر ماكدونالد}"
		, q"{الفاتيكان}", q"{هندوراس}", q"{هونكونغ}", q"{هنقاريا}"
		, q"{إسلاند}", q"{الهند}", q"{أندونيسيا}", q"{إيران}", q"{العراق}"
		, q"{إيرلامدا}", q"{جزيرة مان}", q"{إيطاليا}", q"{جامايكا}"
		, q"{اليابان}", q"{جيرزي}", q"{الأردن}", q"{كازاخستان}", q"{كنيا}"
		, q"{كيريباتي}", q"{كوريا الشمالية}", q"{كوريا الجنوبية}"
		, q"{الكويت}", q"{قيرغيزستان}", q"{لاوس}", q"{لتفيا}", q"{لبنان}"
		, q"{ليسوتو}", q"{ليبيريا}", q"{ليبيا}", q"{ليختنشتاين}", q"{ليتيواتيا}"
		, q"{ليكسمبورغ}", q"{ماكاو}", q"{مقدونيا}", q"{مدغشقر}", q"{ملاوي}"
		, q"{ماليزيا}", q"{ملديف}", q"{مالي}", q"{مالطا}", q"{جزر مارشال}"
		, q"{مارتينيك}", q"{موريتانيا}", q"{موريشيوس}", q"{مايوت}"
		, q"{المكسيك}", q"{ولايات ميكرونيسيا المتحدة}", q"{مولدوفا}"
		, q"{موناكو}", q"{منغوليا}", q"{مونتينيغرو}", q"{مونتسرات}"
		, q"{المغرب}", q"{موزنبيق}", q"{ميانمار}", q"{ناميبيا}", q"{ناورو}"
		, q"{نيبال}", q"{جزر الأنتيل الهولندية}", q"{هولاندا}"
		, q"{كالودونيا الجديدة}", q"{زيلاندا الجديدة}", q"{نيكاراغوا}"
		, q"{النيجر}", q"{نيجيريا}", q"{نييوي}", q"{جزيرة نورفولك}"
		, q"{جزر ماريانا الشمالية}", q"{نورواي}", q"{عمان}", q"{باكستان}"
		, q"{بالاو}", q"{فلسطين}", q"{بانما}", q"{بابوا غينيا الجديدة}"
		, q"{باراغواي}", q"{بيرو}", q"{الفيليبين}", q"{جزر بيتكيرن}"
		, q"{بولندا}", q"{البرتغال}", q"{بورتو ريكو}", q"{قطر}", q"{لا ريونيون}"
		, q"{رومانيا}", q"{روسيا}", q"{روندا}", q"{سان بارتيلمي}"
		, q"{سانت هيلانة}", q"{سانت كيتس ونيفيس}", q"{سانت لوسيا}"
		, q"{سانت نرتان}", q"{سان بيير وميكلون}", q"{سانت فينسنت والغرينادين}"
		, q"{ساماو}", q"{سان مارينو}", q"{ساو تومي وبرينسيب}"
		, q"{السعودية}", q"{السنغال}", q"{صربيا}", q"{سيشال}", q"{سيراليون}"
		, q"{سنغفورة}", q"{سلوفاكيا}", q"{سلوفينيا}", q"{جزر سليمان}"
		, q"{الصومال}", q"{جنوب إفريقيا}", q"{جورجيا الجنوبية وجزر ساندويتش الجنوبية}"
		, q"{إسبانيا}", q"{سيري لانكا}", q"{السودان}", q"{سيرينام}"
		, q"{سفالبارد ويان ماين}", q"{سوازيلاند}", q"{السويد}"
		, q"{سويسرا}", q"{سوريا}", q"{تايوات}", q"{طاجكستان}", q"{تنزانيا}"
		, q"{تايلاند}", q"{تيمور الشرقية}", q"{توغو}", q"{توكيلاو}"
		, q"{تونغوا}", q"{ترينيداد وتوباغو}", q"{تونس}", q"{تركيا}"
		, q"{تركمنستان}", q"{جزر توركس وكايكوس}", q"{توفالو}"
		, q"{أوغندا}", q"{أكرانيا}", q"{الإمارات العربية المتحدة}"
		, q"{بريطانيا}", q"{أمريكا}", q"{جزر الولايات المتحدة الصغيرة النائية}"
		, q"{أرغواي}", q"{أزباكستان}", q"{فانواتو}", q"{فينيزويلا}"
		, q"{فيتنام}", q"{جزر العذراء البريطانية}", q"{جزر العذراء الأمريكية}"
		, q"{واليس وفوتونا}", q"{اليمن}", q"{زمبيا}", q"{زمبابوي}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{المملكة العربية السعودية}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}", q"{#####-####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{### عمارة}", q"{### طابق}", q"{### شقة}", q"{### بناية}", q"{### بيت}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{القدس}", q"{تل الربيع}", q"{صفد}", q"{أريحا}", q"{بئر السبع}"
		, q"{غزة}", q"{نابلس}", q"{الناصرة}", q"{بيت لحم}", q"{الخليل}"
		, q"{يافا}", q"{حيفا}", q"{اللد}", q"{الرملة}", q"{عكا}", q"{سخنين}"
		, q"{قلنسوة}", q"{طيرة}", q"{عرابة}", q"{رام الله}", q"{طولكرم}"
		, q"{بئر السبع }", q"{تونس}", q"{بن عروس}", q"{أريانة}", q"{باجة}"
		, q"{بنزرت}", q"{قابس}", q"{قفصة}", q"{جندوبة}", q"{القيروان}"
		, q"{القصرين}", q"{قبلي}", q"{الكاف}", q"{المهدية}", q"{منوبة}"
		, q"{مدنين}", q"{المنستير}", q"{نابل}", q"{صفاقس}", q"{بوزيد}"
		, q"{سليانة}", q"{سوسة}", q"{تطاوين}", q"{توزر}", q"{زغوان}", q"{أدرار}"
		, q"{الشلف}", q"{الأغواط}", q"{أم البواقي}", q"{باتنة}", q"{بجاية}"
		, q"{بسكرة}", q"{بشار}", q"{البليدة}", q"{البويرة}", q"{تمنراست}"
		, q"{تبسة}", q"{تلمسان}", q"{تيارت}", q"{تيزي وزو}", q"{الجزائر}"
		, q"{الجلفة}", q"{جيجل}", q"{سطيف}", q"{سعيدة}", q"{سكيكدة}", q"{بلعباس}"
		, q"{عنابة}", q"{قالمة}", q"{قسنطينة}", q"{المدية}", q"{عمان}"
		, q"{الزرقاء}", q"{إربد}", q"{العقبة}", q"{السلط}", q"{المفرق}"
		, q"{جرش}", q"{معان}", q"{عجلون}", q"{حلب}", q"{دمشق}", q"{حمص}", q"{اللاذقية}"
		, q"{حماة}", q"{طرطوس}", q"{دير الزور}", q"{السويداء}", q"{الحسكة}"
		, q"{درعا}", q"{إدلب}", q"{بيروت}", q"{طرابلس}", q"{صيدا}", q"{صور}"
		, q"{النبطية}", q"{زحلة}", q"{جونيه}", q"{حبوش}", q"{بعلبك}", q"{بغداد}"
		, q"{البصرة}", q"{نينوى}", q"{أربيل}", q"{النجف}", q"{كركوك}", q"{المثنى}"
		, q"{القادسية}", q"{ بابل}", q"{كربلاء}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationBuildingNumber() ~ " " ~ locationStreet();
			case LocationStreetAddressEnum.full: return locationBuildingNumber() ~ " " ~ locationStreet() ~ " " ~ locationSecondaryAddress();
			default: return "";
		}
	}

	override string locationStreetPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " " ~ personFirstName();
			case 1: return locationStreetPrefix() ~ " " ~ personLastName();
			default: return "";
		}
	}

	string locationStreetPrefix() {
		const string[] strs =
		[ q"{درب، طريق}", q"{شارع}", q"{سبيل}", q"{جادة}", q"{رصيف}", q"{مَمَر}"
		, q"{طريق مسدود}", q"{ساحة}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{آتي}", q"{آخر}", q"{آخرون}", q"{آدم}", q"{آكل}", q"{آلام}", q"{آمل}"
		, q"{آمن}", q"{أب}", q"{أبداً}", q"{أبدي}", q"{أبدًا}", q"{أتذكر}", q"{أتصل}"
		, q"{أتفق}", q"{أثاث}", q"{أجبر}", q"{أجوف}", q"{أحاول}", q"{أحب}", q"{أحد}"
		, q"{أحسن}", q"{أحضر}", q"{أحمل}", q"{أخت}", q"{أخرى}", q"{أخسر}", q"{أخشى}"
		, q"{أخضر}", q"{أخيرا}", q"{أدافع}", q"{أدعم}", q"{أدوس}", q"{أدير}"
		, q"{أذن}", q"{أرتب}", q"{أرض}", q"{أركل}", q"{أرى}", q"{أريد}", q"{أساس}"
		, q"{أساعد}", q"{أستسلم}", q"{أسقط}", q"{أسلم}", q"{أسمع}", q"{أسود}"
		, q"{أشياء}", q"{أطفئ}", q"{أطلق}", q"{أطير}", q"{أظن}", q"{أعتبر}"
		, q"{أعترف}", q"{أعتقد}", q"{أعلق}", q"{أعلن}", q"{أعلى}", q"{أعمى}"
		, q"{أعيش}", q"{أغطي}", q"{أغنية}", q"{أفتح}", q"{أفترض}", q"{أفتقد}"
		, q"{أفضل}", q"{أفعل}", q"{أقترح}", q"{أقدر}", q"{أقسم}", q"{أقسى}"
		, q"{أقل}", q"{أقول}", q"{أقوي}", q"{أكون}", q"{ألحق}", q"{ألفت}", q"{ألم}"
		, q"{أمان}", q"{أمشط}", q"{أمشي}", q"{أميل}", q"{أن}", q"{أنا}", q"{أنت}"
		, q"{أنمو}", q"{أنهض}", q"{أو}", q"{أوافق}", q"{أوزة}", q"{أي}", q"{أين}"
		, q"{أَخَّاذ}", q"{أُطرُوحَة}", q"{إبعاد}", q"{إخلاء}", q"{إدارة}"
		, q"{إذا}", q"{إضافي}", q"{إعجاب}", q"{إلا}", q"{إلتواء}", q"{إلى}"
		, q"{إليك}", q"{إمضاء}", q"{إنني}", q"{إنه}", q"{إنها}", q"{إيداع}"
		, q"{ابرم}", q"{ابن}", q"{اتحداك}", q"{اجد}", q"{اجل}", q"{اجلس}", q"{احب}"
		, q"{احترام}", q"{احصل}", q"{اختراعات}", q"{اخترت}", q"{اخذت}"
		, q"{اخر}", q"{اخماد}", q"{ادافع}", q"{ارباح}", q"{ازعم}", q"{استراحة}"
		, q"{استطيع}", q"{استوديو}", q"{اسم}", q"{اسمنت}", q"{اشرب}", q"{اصرخ}"
		, q"{اضحك}", q"{اضع}", q"{اضفت}", q"{اعتدال}", q"{اغادر}", q"{اقتراح}"
		, q"{اقرر}", q"{اقف}", q"{اقود}", q"{اقول}", q"{اكثر}", q"{اكل}", q"{الأساسي}"
		, q"{الأكثر}", q"{الأليف}", q"{الأمل}", q"{الإحسان}", q"{الاستخدام}"
		, q"{الاقتراع}", q"{البقية}", q"{الة}", q"{الترحيل}", q"{التسلق}"
		, q"{التشقلب}", q"{التفاضل}", q"{التي}", q"{الثعالب}", q"{الجاد}"
		, q"{الجانبين}", q"{الجبر}", q"{الجرأة}", q"{الجسم}", q"{الجميع}"
		, q"{الجناح}", q"{الجنون}", q"{الحال}", q"{الحضارة}", q"{الحقيقة}"
		, q"{الحمامات}", q"{الحمدون}", q"{الحياة}", q"{الخدع}", q"{الخصم}"
		, q"{الدير}", q"{الذات}", q"{الذي}", q"{الرأفة}", q"{الرافض}", q"{الرقص}"
		, q"{الريح}", q"{السترة}", q"{السجلات}", q"{السرج}", q"{السعة}"
		, q"{السماع}", q"{السماوي}", q"{الشاعر}", q"{الشفق}", q"{الضرورات}"
		, q"{الطريق}", q"{العائلة}", q"{العاشر}", q"{العزلة}", q"{العليا}"
		, q"{العمل}", q"{العنكبوت}", q"{العنوان}", q"{الغرفة}", q"{الغزل}"
		, q"{الفائز}", q"{الفراء}", q"{الفصل}", q"{القليل}", q"{القوي}"
		, q"{القيء}", q"{الكبرى}", q"{الكل}", q"{اللطف}", q"{الماء}", q"{المجلد}"
		, q"{المحدد}", q"{المحسن}", q"{المحسنات}", q"{المحيط}", q"{المختارون}"
		, q"{المد}", q"{المدفأة}", q"{المدينة}", q"{المرسول}", q"{المرونة}"
		, q"{المسالك}", q"{المسرح}", q"{المشي}", q"{المعجل}", q"{المقصود}"
		, q"{الملابس}", q"{المنشئ}", q"{الموت}", q"{الموجة}", q"{الموسم}"
		, q"{الموعد}", q"{الموقف}", q"{الناس}", q"{النزاع}", q"{النفخ}"
		, q"{النهر}", q"{الوادي}", q"{الوصاية}", q"{الوصول}", q"{اليقظة}"
		, q"{امتعة}", q"{امتياز}", q"{امراء}", q"{امن}", q"{اناقش}", q"{انتصار}"
		, q"{انتهاء}", q"{انزعها}", q"{انعش}", q"{انهم}", q"{اهداء}", q"{ايام}"
		, q"{ايقاد}", q"{بأغلبية}", q"{باتجاه}", q"{باستمرار}", q"{باقية}"
		, q"{بالاسفل}", q"{بالباص}", q"{بالتأكيد}", q"{بالرغم}", q"{بالطبع}"
		, q"{بالغ}", q"{بالفعل}", q"{بالكاد}", q"{باهظ}", q"{بجوار}", q"{بحرص}"
		, q"{بحكمة}", q"{بدأت}", q"{بدانة}", q"{بداهة}", q"{برعاية}", q"{برودة}"
		, q"{برونز}", q"{بسرعة}", q"{بشكل}", q"{بطريقة}", q"{بعنف}", q"{بعيد}"
		, q"{بقدر}", q"{بقرة}", q"{بكثرة}", q"{بكمل}", q"{بلدة}", q"{بلطف}"
		, q"{بهجة}", q"{بوق}", q"{بيئة}", q"{بِكر}", q"{تأكيد}", q"{تاج}", q"{تبعًا}"
		, q"{تبني}", q"{تتدفق}", q"{تجريبي}", q"{تجمع}", q"{تحت}", q"{تحدث}"
		, q"{تحمل}", q"{تحميل}", q"{تحية}", q"{تخمين}", q"{تدريبات}", q"{تدليك}"
		, q"{تدوس}", q"{تذوق}", q"{تريد}", q"{تستوعب}", q"{تصدع}", q"{تصل}"
		, q"{تصويت}", q"{تعال}", q"{تعتاد}", q"{تعرُّف}", q"{تقطر}", q"{تكون}"
		, q"{تم}", q"{تماثيل}", q"{تملق}", q"{تنبيه}", q"{تهور}", q"{تواصل}"
		, q"{توربيني}", q"{ثابت}", q"{ثالاسانوس}", q"{ثالث}", q"{ثقافة}"
		, q"{ثلاث}", q"{ثلاثة}", q"{ثلاثون}", q"{ثم}", q"{جاذبية}", q"{جار}"
		, q"{جداً}", q"{جرس}", q"{جري}", q"{جسم}", q"{جمال}", q"{جمع}", q"{جمهور}"
		, q"{جميع}", q"{جميل}", q"{جهاز}", q"{جهد}", q"{جوية}", q"{جيد}", q"{جَذّاب}"
		, q"{حاضر}", q"{حال}", q"{حامض}", q"{حب}", q"{حبيب}", q"{حتى}", q"{حجاب}"
		, q"{حجرة}", q"{حذاء}", q"{حذر}", q"{حر}", q"{حزن}", q"{حزين}", q"{حزينين}"
		, q"{حساب}", q"{حساس}", q"{حسنة}", q"{حسنًا}", q"{حصلت}", q"{حضري}"
		, q"{حضن}", q"{حق}", q"{حقا}", q"{حقيقة}", q"{حقيقي}", q"{حقًا}", q"{حل}"
		, q"{حلاق}", q"{حلها}", q"{حياة}", q"{خادمة}", q"{خاشع}", q"{خجول}"
		, q"{خزان}", q"{خزانة}", q"{خشن}", q"{خط}", q"{خطأ}", q"{خطة}", q"{خفض}"
		, q"{خلف}", q"{خلوق}", q"{خيار}", q"{خيره}", q"{دخول}", q"{دعه}", q"{دعوى}"
		, q"{دواء}", q"{دور}", q"{دورة}", q"{دولة}", q"{ديكور}", q"{ديون}", q"{ذاهب}"
		, q"{ذراع}", q"{ذلك}", q"{ذهب}", q"{ذهبي}", q"{ذيل}", q"{رأس}", q"{رأى}"
		, q"{رابطة}", q"{راحة}", q"{ربط}", q"{ربيع}", q"{رجل}", q"{رجولي}", q"{رحلة}"
		, q"{رسغ}", q"{رسمي}", q"{رعاية}", q"{رفض}", q"{رفيع}", q"{رقابة}", q"{رقبة}"
		, q"{ركن}", q"{رماد}", q"{رمي}", q"{رهيب}", q"{روح}", q"{رياح}", q"{زال}"
		, q"{زجاجة}", q"{زحف}", q"{زعتر}", q"{زوجة}", q"{زيادة}", q"{سأخبرك}"
		, q"{سأشرح}", q"{سأفتح}", q"{سألتصق}", q"{ساحقة}", q"{ساطع}", q"{سبب}"
		, q"{سبورة}", q"{سرور}", q"{سريع}", q"{سلام}", q"{سلب}", q"{سلسلة}"
		, q"{سلم}", q"{سليم}", q"{سماء}", q"{سمة}", q"{سمحت}", q"{سن}", q"{سنة}"
		, q"{سنشتاق}", q"{سهل}", q"{سهم}", q"{سوف}", q"{سويا}", q"{سيارة}", q"{سير}"
		, q"{سيصيبني}", q"{سيل}", q"{شئ}", q"{شائع}", q"{شاب}", q"{شاهد}", q"{شجرة}"
		, q"{شجيرة}", q"{شخص}", q"{شراب}", q"{شرط}", q"{شروط}", q"{شريك}", q"{شعر}"
		, q"{شمس}", q"{شهرة}", q"{شيء}", q"{شيأ}", q"{صالح}", q"{صامت}", q"{صبرا}"
		, q"{صحة}", q"{صحيح}", q"{صداقة}", q"{صدر}", q"{صدقة}", q"{صده}", q"{صدوق}"
		, q"{صديق}", q"{صريح}", q"{صغير}", q"{صلب}", q"{صندوق}", q"{صنعت}", q"{صوت}"
		, q"{صورة}", q"{صيف}", q"{ضجة}", q"{ضد}", q"{ضعيف}", q"{ضيق}", q"{طالب}"
		, q"{طاولة}", q"{طباشير}", q"{طبقة}", q"{طريق}", q"{طعام}", q"{طويل}"
		, q"{ظل}", q"{عادة}", q"{عاصف}", q"{عاقل}", q"{عالميا}", q"{عالي}", q"{عباس}"
		, q"{عتيق}", q"{عجز}", q"{عدالة}", q"{عدد}", q"{عريض}", q"{عزيز}", q"{عزيزتي}"
		, q"{عزيزي}", q"{عشاء}", q"{عشر}", q"{عصا}", q"{عصفور}", q"{عضوية}"
		, q"{عفوية}", q"{عقل}", q"{علاج}", q"{على}", q"{علي}", q"{عليه}", q"{عم}"
		, q"{عمة}", q"{عمر}", q"{عمل}", q"{عن}", q"{عنوان}", q"{عير}", q"{غائب}"
		, q"{غالباً}", q"{غداً}", q"{غربال}", q"{غرفة}", q"{غير}", q"{فائدة}"
		, q"{فاجأ}", q"{فارغ}", q"{فجأة}", q"{فحم}", q"{فرن}", q"{فريق}", q"{فزت}"
		, q"{فشيأ}", q"{فضائي}", q"{فضة}", q"{فضول}", q"{فضيلة}", q"{فقط}", q"{فقير}"
		, q"{فليكن}", q"{فن}", q"{فوز}", q"{فوق}", q"{في}", q"{فيما}", q"{قادم}"
		, q"{قال}", q"{قبل}", q"{قبلت}", q"{قبول}", q"{قديم}", q"{قصير}", q"{قطة}"
		, q"{قف}", q"{قليل}", q"{قميص}", q"{قوة}", q"{قوي}", q"{قيد}", q"{قيمة}"
		, q"{قَوس}", q"{كائن}", q"{كاحل}", q"{كارثة}", q"{كافٍ}", q"{كان}", q"{كبير}"
		, q"{كتف}", q"{كثيرة}", q"{كرامة}", q"{كرس}", q"{كرمة}", q"{كريم}", q"{كشط}"
		, q"{كل}", q"{كلا}", q"{كلاهما}", q"{كلب}", q"{كلمة}", q"{كما}", q"{كنز}"
		, q"{كنيس}", q"{كوب}", q"{كومة}", q"{كيف}", q"{كيك}", q"{ل}", q"{لأن}", q"{لإختيار}"
		, q"{لا}", q"{لجأ}", q"{لحية}", q"{لذا}", q"{لذلك}", q"{لطيف}", q"{لك}", q"{لكم}"
		, q"{لكن}", q"{للرفض}", q"{للمتابعة}", q"{لماذا}", q"{له}", q"{لو}"
		, q"{لوت}", q"{لوم}", q"{لون}", q"{ليتم}", q"{ليونة}", q"{ليّن}", q"{مأخوذ}"
		, q"{مؤلف}", q"{ما}", q"{ماء}", q"{مائة}", q"{مادة}", q"{ماذا}", q"{ماشية}"
		, q"{مال}", q"{ماهر}", q"{مبتذلة}", q"{مبروك}", q"{مبنى}", q"{متأثر}"
		, q"{متأخر}", q"{متألق}", q"{متزوجة}", q"{متساوي}", q"{متشوق}"
		, q"{متطابقة}", q"{متطور}", q"{متطوع}", q"{متع}", q"{متقلب}", q"{متماسك}"
		, q"{متنوع}", q"{متوسط}", q"{متى}", q"{مثاب}", q"{مثل}", q"{مجال}", q"{مجمع}"
		, q"{مجموع}", q"{مجموعة}", q"{محبوب}", q"{محفوظ}", q"{محكمة}", q"{محل}"
		, q"{مخترع}", q"{مختفي}", q"{مخزون}", q"{مخمن}", q"{مدح}", q"{مدهش}"
		, q"{مدينة}", q"{مرآة}", q"{مرات}", q"{مرارًا}", q"{مراعاة}", q"{مربع}"
		, q"{مرة}", q"{مرتين}", q"{مرحبا}", q"{مرحبًا}", q"{مرسوم}", q"{مرهق}"
		, q"{مريح}", q"{مزايا}", q"{مزيج}", q"{مساء}", q"{مستقر}", q"{مستمر}"
		, q"{مستمع}", q"{مسرح}", q"{مشرق}", q"{مشط}", q"{مشهد}", q"{مشهور}"
		, q"{مشين}", q"{مصطنع}", q"{مصلح}", q"{مضت}", q"{مضيف}", q"{مظلمة}"
		, q"{مع}", q"{معبد}", q"{معتاد}", q"{معركة}", q"{معظم}", q"{معك}", q"{معماري}"
		, q"{مفيد}", q"{مقابلة}", q"{مقاطعة}", q"{مقبول}", q"{مقرر}", q"{مقنع}"
		, q"{مكاتب}", q"{مكان}", q"{مكعب}", q"{ملائم}", q"{ملاك}", q"{ملعقة}"
		, q"{ملكنا}", q"{ملل}", q"{ملموس}", q"{ممتع}", q"{من}", q"{منتج}", q"{منتصف}"
		, q"{منجلي}", q"{منحن}", q"{منحنى}", q"{منطقة}", q"{منهم}", q"{مهارات}"
		, q"{مهجور}", q"{مهد}", q"{مهدئ}", q"{مهندس}", q"{مواطن}", q"{مواطنة}"
		, q"{مواطنون}", q"{موافق}", q"{مُطبَّق}", q"{مِرفَق}", q"{نائب}"
		, q"{ناعم}", q"{نتهم}", q"{نتيجة}", q"{نجح}", q"{نجحت}", q"{نجمة}", q"{نحن}"
		, q"{نستنتج}", q"{نسج}", q"{نسر}", q"{نشأ}", q"{نشط}", q"{نظيف}", q"{نعسان}"
		, q"{نعل}", q"{نفسه}", q"{نفسها}", q"{نفع}", q"{نقود}", q"{نكون}", q"{نهاية}"
		, q"{نَسِيج}", q"{هؤلاء}", q"{هذا}", q"{هم}", q"{هنا}", q"{هو}", q"{هواء}"
		, q"{هي}", q"{و}", q"{وأود}", q"{واحد}", q"{واسع}", q"{واع}", q"{والتكامل}"
		, q"{والنسيج}", q"{وحشي}", q"{وذلك}", q"{وسعنا}", q"{وسوف}", q"{وسيم}"
		, q"{وظائف}", q"{وفير}", q"{وقت}", q"{ولا}", q"{وميض}", q"{ويفر}", q"{ويل}"
		, q"{وَرَاءَ}", q"{وَسَط}", q"{وُلِدّ}", q"{يأتي}", q"{يأخذ}", q"{يأسر}"
		, q"{يأمل}", q"{يبحث}", q"{يبدو}", q"{يبعد}", q"{يتبنى}", q"{يتحقق}"
		, q"{يتدحرج}", q"{يتذكر}", q"{يترتب}", q"{يتردد}", q"{يتعقب}", q"{يتعلم}"
		, q"{يتقدم}", q"{يتمتع}", q"{يجب}", q"{يحب}", q"{يحذب}", q"{يحشد}", q"{يحضر}"
		, q"{يحفظ}", q"{يحل}", q"{يدفع}", q"{يدق}", q"{يرتجف}", q"{يرتفع}", q"{يرتقع}"
		, q"{يرفع}", q"{يزيل}", q"{يساعد}", q"{يسامح}", q"{يساهم}", q"{يستثني}"
		, q"{يستخدم}", q"{يستوعب}", q"{يسلم}", q"{يسير}", q"{يشمل}", q"{يصدق}"
		, q"{يصلح}", q"{يضحك}", q"{يظهر}", q"{يعبر}", q"{يعرفون}", q"{يعيق}"
		, q"{يغني}", q"{يفتح}", q"{يفترض}", q"{يفحص}", q"{يفصل}", q"{يفضل}"
		, q"{يفعل}", q"{يقارن}", q"{يقام}", q"{يقدموا}", q"{يقرر}", q"{يقفز}"
		, q"{يقلق}", q"{يقود}", q"{يقولون}", q"{يقي}", q"{يكتسب}", q"{يكلف}"
		, q"{يكنس}", q"{يكون}", q"{يلائم}", q"{يلاحظ}", q"{يلمس}", q"{يليق}"
		, q"{يمارس}", q"{يمثل}", q"{يمسح}", q"{يمين}", q"{يناسب}", q"{ينام}"
		, q"{ينتقد}", q"{ينضم}", q"{ينظر}", q"{ينظف}", q"{ينمو}", q"{يهرب}"
		, q"{يهمني}", q"{يوضح}", q"{يوم}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{فاطمه}", q"{خلود}", q"{عوضية}", q"{عنود}", q"{نوف}", q"{ريم}", q"{اروي}"
		, q"{براءة}", q"{بتول}", q"{بلسم}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{سيدة}", q"{آنسة}", q"{دكتور}", q"{بروفيسور}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{محمد}", q"{أحمد}", q"{آسر}", q"{أركان}", q"{أسامة}", q"{أسعد}", q"{أشرف}"
		, q"{أكرم}", q"{أليف}", q"{أمان}", q"{أمجد}", q"{أمير}", q"{أمين}", q"{أنس}"
		, q"{أنيس}", q"{أوس}", q"{أيمن}", q"{إسلام}", q"{إيهاب}", q"{إياد}"
		, q"{إياس}", q"{القاسم}", q"{المقداد}", q"{باسل}", q"{باسم}", q"{بدر}"
		, q"{بدران}", q"{بركات}", q"{برهان}", q"{بسام}", q"{بسيم}", q"{بشار}"
		, q"{بلال}", q"{بلبل}", q"{بليغ}", q"{بندر}", q"{بهيج}", q"{تميم}", q"{توفيق}"
		, q"{تيسير}", q"{ثابت}", q"{جابر}", q"{جاد}", q"{جاسر}", q"{جاسم}", q"{جبريل}"
		, q"{جسور}", q"{جعفر}", q"{جلال}", q"{جليل}", q"{جمال}", q"{جمعة}", q"{جميل}"
		, q"{جهاد}", q"{جوهر}", q"{حاتم}", q"{حاجب}", q"{حارث}", q"{حازم}", q"{حافظ}"
		, q"{حامد}", q"{حبيب}", q"{حذيفة}", q"{حسام}", q"{حسان}", q"{حسني}"
		, q"{حسون}", q"{حطاب}", q"{حفيظ}", q"{حكيم}", q"{حلمي}", q"{حليم}", q"{حمدان}"
		, q"{حمدي}", q"{حمزة}", q"{حمودة}", q"{حميد}", q"{حيدرة}", q"{خالد}"
		, q"{خباب}", q"{خلدون}", q"{خليل}", q"{خيري}", q"{داوود}", q"{دريد}"
		, q"{ديسم}", q"{ذاكر}", q"{رؤوف}", q"{رائد}", q"{رائف}", q"{رابح}", q"{راتب}"
		, q"{راسم}", q"{راشد}", q"{راغب}", q"{راكان}", q"{رامز}", q"{رامي}"
		, q"{ربيع}", q"{رتيب}", q"{رجب}", q"{رزق}", q"{رسلان}", q"{رشاد}", q"{رشدي}"
		, q"{رشيد}", q"{رضا}", q"{رضوان}", q"{رعد}", q"{رفيع}", q"{رفيق}", q"{ركان}"
		, q"{رمزي}", q"{رمضان}", q"{رنيم}", q"{رياض}", q"{ريان}", q"{زاهر}"
		, q"{زياد}", q"{زيدون}", q"{زين الدين}", q"{سالم}", q"{سامح}", q"{سامر}"
		, q"{سامي}", q"{سراج}", q"{سرحان}", q"{سرمد}", q"{سريج}", q"{سعد}", q"{سعيد}"
		, q"{سفيان}", q"{سلامة}", q"{سلمان}", q"{سليم}", q"{سماح}", q"{سمير}"
		, q"{سهيل}", q"{سيف}", q"{شادي}", q"{شاكر}", q"{شريف}", q"{شعبان}", q"{شفيع}"
		, q"{شفيق}", q"{شكري}", q"{شكيب}", q"{شمس الدين}", q"{شهاب}", q"{شوقي}"
		, q"{صابر}", q"{صادق}", q"{صبحي}", q"{صبري}", q"{صخر}", q"{صداح}", q"{صدقي}"
		, q"{صفوان}", q"{صقر}", q"{صلاح}", q"{صهيب}", q"{ضياء}", q"{طارق}", q"{طاهر}"
		, q"{طلال}", q"{طيب}", q"{ظافر}", q"{عادل}", q"{عارف}", q"{عاشور}", q"{عاصم}"
		, q"{عاصي}", q"{عاطف}", q"{عامر}", q"{عباس}", q"{عثمان}", q"{عجمي}"
		, q"{عدلان}", q"{عدلي}", q"{عدنان}", q"{عدي}", q"{عرفات}", q"{عرفان}"
		, q"{عز الدين}", q"{عزام}", q"{عزمي}", q"{عزيز}", q"{عطا}", q"{عطية}"
		, q"{عفيف}", q"{علاء}", q"{علوي}", q"{علي}", q"{عماد}", q"{عمار}", q"{عمر}"
		, q"{عمران}", q"{عياض}", q"{غازي}", q"{غانم}", q"{غسان}", q"{غفار}"
		, q"{غيث}", q"{فؤاد}", q"{فائز}", q"{فاخر}", q"{فادي}", q"{فارس}", q"{فاروق}"
		, q"{فاضل}", q"{فاكر}", q"{فتاح}", q"{فتحي}", q"{فخري}", q"{فراس}", q"{فرج}"
		, q"{فرحات}", q"{فريد}", q"{فضل}", q"{فضيل}", q"{فكري}", q"{فهد}", q"{فهمي}"
		, q"{فواز}", q"{فوزي}", q"{فيصل}", q"{قاسم}", q"{قدري}", q"{قيس}", q"{كاظم}"
		, q"{كامل}", q"{كرم}", q"{كمال}", q"{لبيب}", q"{لطفي}", q"{ليث}", q"{مأمون}"
		, q"{مؤمن}", q"{مؤنس}", q"{ماجد}", q"{مازن}", q"{مبارك}", q"{مبروك}"
		, q"{مجاهد}", q"{مجد}", q"{مجدي}", q"{مجيد}", q"{محجوب}", q"{محرز}"
		, q"{محسن}", q"{محفوظ}", q"{محمود}", q"{مختار}", q"{مخلص}", q"{مراد}"
		, q"{مرتضى}", q"{مرزوق}", q"{مرسي}", q"{مرشد}", q"{مرعي}", q"{مروان}"
		, q"{مستعين}", q"{مسعد}", q"{مسعود}", q"{مصطفى}", q"{مصعب}", q"{مصلح}"
		, q"{مطيع}", q"{معاذ}", q"{معتز}", q"{معز}", q"{معين}", q"{مفتاح}", q"{مقداد}"
		, q"{ممتاز}", q"{ممدوح}", q"{منتصر}", q"{منذر}", q"{منصف}", q"{منصور}"
		, q"{منعم}", q"{منيب}", q"{منير}", q"{مهدي}", q"{مهند}", q"{مهيب}", q"{ناجح}"
		, q"{ناجي}", q"{نادر}", q"{ناصح}", q"{ناصر}", q"{ناصف}", q"{ناظم}", q"{نافع}"
		, q"{نبيل}", q"{نجيب}", q"{نديم}", q"{نزار}", q"{نزيه}", q"{نسيم}", q"{نصحي}"
		, q"{نصر}", q"{نضال}", q"{نعمان}", q"{نعيم}", q"{نهاد}", q"{نور الدين}"
		, q"{نوري}", q"{نوفل}", q"{هاشم}", q"{هاني}", q"{هشام}", q"{هيثم}", q"{هيكل}"
		, q"{وائل}", q"{واصف}", q"{وجدي}", q"{وديع}", q"{وسام}", q"{وسيم}", q"{وصفي}"
		, q"{وليد}", q"{ياسر}", q"{ياسين}", q"{يافع}", q"{يامن}", q"{يحيى}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{يافع}", q"{هذيل}", q"{همدان}", q"{الأشراف}", q"{الكراي}", q"{الرقيق}"
		, q"{بودوارة}", q"{خنفير}", q"{السقا}", q"{الطريقي}", q"{الشريف}"
		, q"{المنيف}", q"{النفير}", q"{الشتيوي}", q"{الشيباني}", q"{الخليفي}"
		, q"{المولدي}", q"{الكافي}", q"{العواني}", q"{بن عبد السلام}"
		, q"{عاشور}", q"{النفطي}", q"{بن عثمان}", q"{بن عاشور}", q"{البشيري}"
		, q"{السقاط}", q"{ادريس}", q"{بن حسين}", q"{القلشاني}", q"{الحجيج}"
		, q"{بن عبد الكريم}", q"{فقوسة}", q"{بن حمودة}", q"{العنابي}"
		, q"{القلال}", q"{الدنوني}", q"{النقاش}", q"{الغربي}", q"{نيفر}"
		, q"{العطار}", q"{المحجوب}", q"{زقية}", q"{تومي}", q"{بن عبدالله}"
		, q"{سعيد}", q"{النابلي}", q"{بن عمر}", q"{شنيق}", q"{عنون}", q"{الرصاع}"
		, q"{النخلي}", q"{الصفار}", q"{الزوابي}", q"{العلاني}", q"{الع لويني}"
		, q"{الحمامي}", q"{جاوحدو}", q"{شقرون}", q"{العلايمي}", q"{الصغير}"
		, q"{جابالله}", q"{بنسلامة}", q"{جراد}", q"{بوديبة}", q"{الدرقاش}"
		, q"{بوهاها}", q"{عطالله}", q"{سويس}", q"{عظومة}", q"{المدقي}"
		, q"{الوحيشي}", q"{لخشين}", q"{زروق}", q"{النجار}", q"{غويلة}"
		, q"{الطويل}" ];

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
		[ q"{محمد}", q"{أحمد}", q"{حسن}", q"{على}", q"{ابراهيم}", q"{عبد الله}"
		, q"{آسر}", q"{أركان}", q"{أسامة}", q"{أسعد}", q"{أشرف}", q"{أكرم}"
		, q"{أليف}", q"{أمان}", q"{أمجد}", q"{أمير}", q"{أمين}", q"{أنس}", q"{أنيس}"
		, q"{أوس}", q"{أيمن}", q"{إسلام}", q"{إيهاب}", q"{إياد}", q"{إياس}"
		, q"{القاسم}", q"{المقداد}", q"{باسل}", q"{باسم}", q"{بدر}", q"{بدران}"
		, q"{بركات}", q"{برهان}", q"{بسام}", q"{بسيم}", q"{بشار}", q"{بلال}"
		, q"{بلبل}", q"{بليغ}", q"{بندر}", q"{بهيج}", q"{تميم}", q"{توفيق}"
		, q"{تيسير}", q"{ثابت}", q"{جابر}", q"{جاد}", q"{جاسر}", q"{جاسم}", q"{جبريل}"
		, q"{جسور}", q"{جعفر}", q"{جلال}", q"{جليل}", q"{جمال}", q"{جمعة}", q"{جميل}"
		, q"{جهاد}", q"{جوهر}", q"{حاتم}", q"{حاجب}", q"{حارث}", q"{حازم}", q"{حافظ}"
		, q"{حامد}", q"{حبيب}", q"{حذيفة}", q"{حسام}", q"{حسان}", q"{حسني}"
		, q"{حسون}", q"{حطاب}", q"{حفيظ}", q"{حكيم}", q"{حلمي}", q"{حليم}", q"{حمدان}"
		, q"{حمدي}", q"{حمزة}", q"{حمودة}", q"{حميد}", q"{حيدرة}", q"{خالد}"
		, q"{خباب}", q"{خلدون}", q"{خليل}", q"{خيري}", q"{داوود}", q"{دريد}"
		, q"{ديسم}", q"{ذاكر}", q"{رؤوف}", q"{رائد}", q"{رائف}", q"{رابح}", q"{راتب}"
		, q"{راسم}", q"{راشد}", q"{راغب}", q"{راكان}", q"{رامز}", q"{رامي}"
		, q"{ربيع}", q"{رتيب}", q"{رجب}", q"{رزق}", q"{رسلان}", q"{رشاد}", q"{رشدي}"
		, q"{رشيد}", q"{رضا}", q"{رضوان}", q"{رعد}", q"{رفيع}", q"{رفيق}", q"{ركان}"
		, q"{رمزي}", q"{رمضان}", q"{رنيم}", q"{رياض}", q"{ريان}", q"{زاهر}"
		, q"{زياد}", q"{زيدون}", q"{زين الدين}", q"{سالم}", q"{سامح}", q"{سامر}"
		, q"{سامي}", q"{سراج}", q"{سرحان}", q"{سرمد}", q"{سريج}", q"{سعد}", q"{سعيد}"
		, q"{سفيان}", q"{سلامة}", q"{سلمان}", q"{سليم}", q"{سماح}", q"{سمير}"
		, q"{سهيل}", q"{سيف}", q"{شادي}", q"{شاكر}", q"{شريف}", q"{شعبان}", q"{شفيع}"
		, q"{شفيق}", q"{شكري}", q"{شكيب}", q"{شمس الدين}", q"{شهاب}", q"{شوقي}"
		, q"{صابر}", q"{صادق}", q"{صبحي}", q"{صبري}", q"{صخر}", q"{صداح}", q"{صدقي}"
		, q"{صفوان}", q"{صقر}", q"{صلاح}", q"{صهيب}", q"{ضياء}", q"{طارق}", q"{طاهر}"
		, q"{طلال}", q"{طيب}", q"{ظافر}", q"{عادل}", q"{عارف}", q"{عاشور}", q"{عاصم}"
		, q"{عاصي}", q"{عاطف}", q"{عامر}", q"{عباس}", q"{عثمان}", q"{عجمي}"
		, q"{عدلان}", q"{عدلي}", q"{عدنان}", q"{عدي}", q"{عرفات}", q"{عرفان}"
		, q"{عز الدين}", q"{عزام}", q"{عزمي}", q"{عزيز}", q"{عطا}", q"{عطية}"
		, q"{عفيف}", q"{علاء}", q"{علوي}", q"{علي}", q"{عماد}", q"{عمار}", q"{عمر}"
		, q"{عمران}", q"{عياض}", q"{غازي}", q"{غانم}", q"{غسان}", q"{غفار}"
		, q"{غيث}", q"{فؤاد}", q"{فائز}", q"{فاخر}", q"{فادي}", q"{فارس}", q"{فاروق}"
		, q"{فاضل}", q"{فاكر}", q"{فتاح}", q"{فتحي}", q"{فخري}", q"{فراس}", q"{فرج}"
		, q"{فرحات}", q"{فريد}", q"{فضل}", q"{فضيل}", q"{فكري}", q"{فهد}", q"{فهمي}"
		, q"{فواز}", q"{فوزي}", q"{فيصل}", q"{قاسم}", q"{قدري}", q"{قيس}", q"{كاظم}"
		, q"{كامل}", q"{كرم}", q"{كمال}", q"{لبيب}", q"{لطفي}", q"{ليث}", q"{مأمون}"
		, q"{مؤمن}", q"{مؤنس}", q"{ماجد}", q"{مازن}", q"{مبارك}", q"{مبروك}"
		, q"{مجاهد}", q"{مجد}", q"{مجدي}", q"{مجيد}", q"{محجوب}", q"{محرز}"
		, q"{محسن}", q"{محفوظ}", q"{محمود}", q"{مختار}", q"{مخلص}", q"{مراد}"
		, q"{مرتضى}", q"{مرزوق}", q"{مرسي}", q"{مرشد}", q"{مرعي}", q"{مروان}"
		, q"{مستعين}", q"{مسعد}", q"{مسعود}", q"{مصطفى}", q"{مصعب}", q"{مصلح}"
		, q"{مطيع}", q"{معاذ}", q"{معتز}", q"{معز}", q"{معين}", q"{مفتاح}", q"{مقداد}"
		, q"{ممتاز}", q"{ممدوح}", q"{منتصر}", q"{منذر}", q"{منصف}", q"{منصور}"
		, q"{منعم}", q"{منيب}", q"{منير}", q"{مهدي}", q"{مهند}", q"{مهيب}", q"{ناجح}"
		, q"{ناجي}", q"{نادر}", q"{ناصح}", q"{ناصر}", q"{ناصف}", q"{ناظم}", q"{نافع}"
		, q"{نبيل}", q"{نجيب}", q"{نديم}", q"{نزار}", q"{نزيه}", q"{نسيم}", q"{نصحي}"
		, q"{نصر}", q"{نضال}", q"{نعمان}", q"{نعيم}", q"{نهاد}", q"{نور الدين}"
		, q"{نوري}", q"{نوفل}", q"{هاشم}", q"{هاني}", q"{هشام}", q"{هيثم}", q"{هيكل}"
		, q"{وائل}", q"{واصف}", q"{وجدي}", q"{وديع}", q"{وسام}", q"{وسيم}", q"{وصفي}"
		, q"{وليد}", q"{ياسر}", q"{ياسين}", q"{يافع}", q"{يامن}", q"{يحيى}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{سيد}", q"{دكتور}", q"{بروفيسور}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 11, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 6) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 6 && rndInt < 11) {
			return personLastName() ~ " " ~ personFirstName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{آنسة}", q"{بروفيسور}", q"{دكتور}", q"{سيد}", q"{سيدة}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{المحترم}", q"{المبجل}", q"{حفظه الله}", q"{الموقر}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{مشرف}", q"{تنفيذي}", q"{مدير}", q"{مهندس}", q"{متخصص}", q"{رئيس مؤسسة}"
		, q"{منسق}", q"{إداري}", q"{مخطط}", q"{محلل}", q"{مصمم}", q"{تقني}"
		, q"{مبرمج}", q"{منتج}", q"{مستشار}", q"{مساعد}", q"{وكيل}", q"{متدرب}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{###-###-####}", q"{(###) ###-####}", q"{1-###-###-####}", q"{###.###.####}", q"{###-###-#### x###}"
		, q"{(###) ###-#### x###}", q"{1-###-###-#### x###}", q"{###.###.#### x###}", q"{###-###-#### x####}"
		, q"{(###) ###-#### x####}", q"{1-###-###-#### x####}", q"{###.###.#### x####}", q"{###-###-#### x#####}"
		, q"{(###) ###-#### x#####}", q"{1-###-###-#### x#####}", q"{###.###.#### x#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string teamCreature() {
		const string[] strs =
		[ q"{النمل}", q"{الخفافيش}", q"{تتحمل}", q"{النحل}", q"{الطيور}"
		, q"{الجاموس}", q"{القطط}", q"{دجاجة}", q"{ماشية}", q"{الكلاب}"
		, q"{الدلافين}", q"{البط}", q"{الفيلة}", q"{الأسماك}", q"{الثعالب}"
		, q"{الضفادع}", q"{أوز}", q"{الماعز}", q"{خيل}", q"{الكنغر}", q"{الأسود}"
		, q"{القرود}", q"{البوم}", q"{الثيران}", q"{طيور البطريق}"
		, q"{اشخاص}", q"{الخنازير}", q"{الأرانب}", q"{خروف}", q"{النمور}"
		, q"{الحيتان}", q"{الذئاب}", q"{حمار}", q"{الشؤم}", q"{الغربان}"
		, q"{قطط سوداء}", q"{الوهم}", q"{أشباح}", q"{المتآمرين}", q"{التنين}"
		, q"{الأقزام}", q"{الجان}", q"{السحرة}", q"{التعويذيون}", q"{أبناء}"
		, q"{الأعداء}", q"{العمالقة}", q"{التماثيل}", q"{العفاريت}"
		, q"{لحم الوز}", q"{العنقاء}", q"{استذئاب}", q"{عدو}", q"{الغيلان}"
		, q"{أقوال}", q"{الأنبياء}", q"{العناكب}", q"{معنويات}", q"{مصاصي دماء}"
		, q"{ذئاب ضارية}", q"{عبدة}", q"{الاموات الاحياء}", q"{درويدس}" ];

		return choice(strs, this.rnd);
	}

	override string teamName() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationState() ~ " " ~ teamCreature();
			default: return "";
		}
	}

	override string vehicleFuel() {
		const string[] strs =
		[ q"{ديزل}", q"{كهربائي}", q"{بنزين}", q"{هجين}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleManufacturer() {
		const string[] strs =
		[ q"{شيفروليه}", q"{كاديلاك}", q"{فورد}", q"{كرايسلر}", q"{دودج}"
		, q"{جيب}", q"{تسلا}", q"{تويوتا}", q"{هوندا}", q"{نيسان}", q"{أودي}"
		, q"{مرسيدس بنز}", q"{بي إم دبليو}", q"{فولكس واجن}", q"{بورش}"
		, q"{جاكوار}", q"{استون مارتن}", q"{لاند روفر}", q"{بنتلي}"
		, q"{ميني}", q"{رولزرويس}", q"{فيات}", q"{لامبورغيني}", q"{مازيراتي}"
		, q"{فيراري}", q"{بوجاتي}", q"{كيا}", q"{هيونداي}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleModel() {
		const string[] strs =
		[ q"{فييستا}", q"{التركيز}", q"{الثور}", q"{موستانج}", q"{اكسبلورر}"
		, q"{البعثة}", q"{نموذج T}", q"{رانتشيرو}", q"{فولت}", q"{كروز}"
		, q"{ماليبو}", q"{إمبالا}", q"{كامارو}", q"{كورفيت}", q"{كولورادو}"
		, q"{سيلفرادو}", q"{ش كامينو}", q"{إسكاليد}", q"{جبال الألب}"
		, q"{شاحن}", q"{لو بارون}", q"{بي تي كروزر}", q"{تشالنجر}"
		, q"{دورانجو}", q"{القافلة الكبرى}", q"{رانجلر}", q"{جراند شيروكي}"
		, q"{رودستر}", q"{عارضات ازياء}", q"{النموذج 3}", q"{كامري}"
		, q"{بريوس}", q"{لاند كروزر}", q"{اتفاق}", q"{المدنية}", q"{جزء}"
		, q"{سنترا}", q"{ألتيما}", q"{خنفساء}", q"{جيتا}", q"{جولف}", q"{سبايدر}"
		, q"{الكونتاش}", q"{مورسيلاغو}", q"{أفينتادور}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleType() {
		const string[] strs =
		[ q"{كارغو فان}", q"{مكشوفة}", q"{كوبيه}", q"{طاقم الكابينة بيك آب}"
		, q"{تمديد الكابينة بيك آب}", q"{هاتشباك}", q"{ميني فان}"
		, q"{سيارة الركاب}", q"{سيارة رياضية}", q"{سيدان}", q"{عربة}" ];

		return choice(strs, this.rnd);
	}

}
