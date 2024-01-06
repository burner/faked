module faker.faker_fa;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_fa : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{کوچک}", q"{ارگونومیک}", q"{باهوش}", q"{جذاب}", q"{باور نکردنی}"
		, q"{خارق العاده}", q"{کاربردی}", q"{براق}", q"{عالی}", q"{معمولی}"
		, q"{دست ساز}", q"{لطیف}", q"{بدون محدودیت}", q"{خوش طعم}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{استیل}", q"{چوبی}", q"{بتنی}", q"{پلاستیکی}", q"{کتان}", q"{گرانیتی}"
		, q"{فلزی}", q"{نرم}", q"{تازه}", q"{یخ زده}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{صندلی}", q"{ماشین}", q"{کامپیوتر}", q"{کیبورد}", q"{ماوس}"
		, q"{دوچرخه}", q"{توپ}", q"{دستکش}", q"{شلوار}", q"{پیراهن}", q"{میز}"
		, q"{کفش}", q"{کلاه}", q"{حوله}", q"{صابون}", q"{تن ماهی}", q"{مرغ}"
		, q"{ماهی}", q"{پنیر}", q"{بیکن}", q"{پیتزا}", q"{سالاد}", q"{سوسیس}"
		, q"{چیپس}" ];

		return choice(strs, this.rnd);
	}

	override string companyAdjective() {
		const string[] strs =
		[ q"{انطباقی}", q"{پیشرفته}", q"{بهبود یافته}", q"{جذب شده}"
		, q"{خودکار}", q"{متعادل}", q"{متمرکز بر تجارت}", q"{متمرکز}"
		, q"{کلون شده}", q"{سازگار}", q"{قابل تنظیم}", q"{گروه متقابل}"
		, q"{متمرکز بر مشتری}", q"{غیر متمرکز}", q"{مهندسی شده}"
		, q"{دیجیتالی شده}", q"{توزیع شده}", q"{گوناگون}", q"{کوچک شده}"
		, q"{ارگونومیک}", q"{انحصاری}", q"{منبسط}", q"{تمدید شده}"
		, q"{رو در رو}", q"{متمرکز شده}", q"{خط مقدم}", q"{کاملاً قابل تنظیم}"
		, q"{مبتنی بر عملکرد}", q"{اساسی}", q"{ضد آینده}", q"{افقی}"
		, q"{پیاده سازی شده}", q"{خلاقانه}", q"{یکپارچه}", q"{شهودی}"
		, q"{معکوس}", q"{اجباری}", q"{نظارت شده}", q"{چند کاناله}"
		, q"{چند جانبی}", q"{متن باز}", q"{عملیاتی}", q"{بهینه شده}"
		, q"{اختیاری}", q"{ارگانیک}", q"{سازمان یافته}", q"{پشتکار}"
		, q"{مداوم}", q"{درجه}", q"{قطبی}", q"{فعال}", q"{متمرکز بر سود}"
		, q"{ژرف}", q"{قابل برنامه ریزی}", q"{ترقی خواه}", q"{متمرکز بر کیفیت}"
		, q"{واکنش گرا}", q"{تصحیح شده}", q"{رکود}", q"{مهندسی معکوس}"
		, q"{قدرتمند}", q"{بدون درز}", q"{امن}", q"{خود توانمندی}"
		, q"{همه کاره}", q"{مجازی}", q"{بینایی}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzAdjective() {
		const string[] strs =
		[ q"{ارزش افزوده}", q"{عمودی}", q"{فعال}", q"{قدرتمند}", q"{انقلابی}"
		, q"{مقیاس پذیر}", q"{پیشرو}", q"{خلاقانه}", q"{شهودی}", q"{راهبردی}"
		, q"{تجارت الکترونیکی}", q"{ماموریت بحرانی}", q"{چسبنده}"
		, q"{یک به یک}", q"{24/7}", q"{جهانی}", q"{دانه ای}", q"{بدون اصطکاک}"
		, q"{مجازی}", q"{ویروسی}", q"{پویا}", q"{24/365}", q"{مغناطیسی}", q"{عقب}"
		, q"{موثر}", q"{توزیع شده}", q"{بدون درز}", q"{قابل توسعه}"
		, q"{کلاس جهانی}", q"{متن باز}", q"{هم افزایی}", q"{بینایی}"
		, q"{سفارشی}", q"{مبتنی بر همکاری}", q"{متقاعد کننده}"
		, q"{جامع}", q"{پولدار}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzNoun() {
		const string[] strs =
		[ q"{هم افزایی}", q"{بازارها}", q"{شراکت}", q"{زیرساخت ها}"
		, q"{پلتفرم}", q"{ابتکار عمل}", q"{کانال ها}", q"{اجتماعات}"
		, q"{راه حل ها}", q"{خدمات الکترونیکی}", q"{موارد عملی}"
		, q"{پورتال ها}", q"{سوله}", q"{فن آوری ها}", q"{محتوا}", q"{زنجیره تامین}"
		, q"{همگرایی}", q"{روابط}", q"{معماری}", q"{رابط ها}", q"{بازارهای الکترونیکی}"
		, q"{تجارت الکترونیک}", q"{سیستم ها}", q"{پهنای باند}"
		, q"{مدل ها}", q"{ذهنیت}", q"{تحویل دادنی ها}", q"{کاربران}"
		, q"{شبکه ها}", q"{برنامه های کاربردی}", q"{تجارت الکترونیکی}"
		, q"{ویژگی ها}", q"{تجربیات}", q"{روش شناسی}", q"{بلاکچین}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzVerb() {
		const string[] strs =
		[ q"{پیاده سازی}", q"{استفاده}", q"{ادغام}", q"{ساده سازی}"
		, q"{بهینه سازی}", q"{تبدیل}", q"{پذیرفتن}", q"{فعال کردن}"
		, q"{نفوذ کردن}", q"{اختراع دوباره}", q"{تجمیع}", q"{معماری}"
		, q"{تحریک کردن}", q"{مورف}", q"{قدرت دادن}", q"{پیش بینی کننده}"
		, q"{کسب درآمد}", q"{مهار}", q"{تسهیل کردن}", q"{تصاحب کردن}"
		, q"{بی تفاوت}", q"{هم افزایی}", q"{استراتژی کردن}", q"{استقرار}"
		, q"{نام تجاری}", q"{رشد کردن}", q"{هدف}" ];

		return choice(strs, this.rnd);
	}

	override string companyDescriptor() {
		const string[] strs =
		[ q"{24 ساعت}", q"{24/7}", q"{نسل سوم}", q"{نسل چهارم}", q"{نسل پنجم}"
		, q"{نسل ششم}", q"{تجزیه و تحلیل}", q"{نامتقارن}", q"{ناهمگام}"
		, q"{نگرش محور}", q"{پس زمینه}", q"{پهنای باند پایش}", q"{دو جهته}"
		, q"{دوتایی}", q"{روشن اندیشی}", q"{مشتری محور}", q"{سرویس دهنده مشتری}"
		, q"{منسجم}", q"{مرکب}", q"{حساس به متن}", q"{مبتنی بر متن}"
		, q"{مبتنی بر محتوا}", q"{اختصاصی}", q"{تقاضا محور}", q"{اموزشی}"
		, q"{جهت دار}", q"{گسسته}", q"{بی تفاوت}", q"{پویا}", q"{محیط زیست}"
		, q"{توانمند سازی}", q"{اجرایی}", q"{صریح}", q"{خطاپذيری}"
		, q"{پیش زمینه}", q"{پایدار}", q"{ثابت}", q"{سیستمی}", q"{شایسته سیستم}"
		, q"{محسوس}", q"{انتقالی}", q"{یکسان}", q"{روند رو به بالا}"
		, q"{تحمل صفر}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		assert(false);
	}

	override string companyNoun() {
		const string[] strs =
		[ q"{توانایی}", q"{دسترسی}", q"{آداپتور}", q"{الگوریتم}", q"{اتحاد}"
		, q"{تحلیلگر}", q"{کاربرد}", q"{رویکرد}", q"{معماری}", q"{بایگانی}"
		, q"{هوش مصنوعی}", q"{آرایه}", q"{نگرش}", q"{معیار}", q"{مدیریت بودجه}"
		, q"{قابلیت}", q"{ظرفیت}", q"{چالش}", q"{جریان}", q"{همکاری}", q"{پیچیدگی}"
		, q"{مفهوم}", q"{اجتماع}", q"{احتمالی}", q"{هسته}", q"{بانک اطلاعاتی}"
		, q"{پایگاه داده تحلیلی}", q"{تعریف}", q"{شبیه سازی}"
		, q"{رمزگذاری}", q"{اکسترانت}", q"{سیستم عامل}", q"{انعطاف پذیری}"
		, q"{نیروی کار}" ];

		return choice(strs, this.rnd);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{کارخانه}", q"{و پسران}", q"{شرکت با مسئولیت محدود}"
		, q"{گروه}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{فروردین}", q"{اردیبهشت}", q"{خرداد}", q"{تیر}", q"{مرداد}"
		, q"{شهریور}", q"{مهر}", q"{آبان}", q"{آذر}", q"{دی}", q"{بهمن}", q"{اسفند}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{فرو}", q"{ارد}", q"{خرد}", q"{تیر}", q"{مرد}", q"{شهر}", q"{مهر}", q"{آبا}"
		, q"{آذر}", q"{دی}", q"{بهم}", q"{اسف}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{شنبه}", q"{یکشنبه}", q"{دوشنبه}", q"{سه شنبه}", q"{چهارشنبه}"
		, q"{پتچشنبه}", q"{جمعه}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{ش}", q"{ی}", q"{د}", q"{س}", q"{چ}", q"{پ}", q"{ج}" ];

		return choice(strs, this.rnd);
	}

	override string financeAccountType() {
		const string[] strs =
		[ q"{پس انداز}", q"{سرمایه گذاری}", q"{وام مسکن}", q"{کارت اعتباری}"
		, q"{وام خودرو}", q"{وام شخصی}" ];

		return choice(strs, this.rnd);
	}

	override string financeTransactionType() {
		const string[] strs =
		[ q"{سپرده}", q"{برداشت از حساب}", q"{پرداخت}", q"{صورتحساب}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{ir}", q"{info}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetExampleEmail() {
		const string[] strs =
		[ q"{example.org}", q"{example.com}", q"{example.net}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{تهران}", q"{مشهد}", q"{اصفهان}", q"{کرج}", q"{تبریز}", q"{شیراز}"
		, q"{اهواز}", q"{قم}", q"{کرمانشاه}", q"{ارومیه}", q"{رشت}", q"{زاهدان}"
		, q"{کرمان}", q"{اراک}", q"{همدان}", q"{یزد}", q"{اردبیل}", q"{بندرعباس}"
		, q"{اسلام‌شهر}", q"{زنجان}", q"{قزوین}", q"{سنندج}", q"{خرم‌آباد}"
		, q"{گرگان}", q"{ساری}", q"{ملارد}", q"{قدس}", q"{کاشان}", q"{گلستان}"
		, q"{شهریار}", q"{دزفول}", q"{خمینی‌شهر}", q"{بروجرد}", q"{نیشابور}"
		, q"{سبزوار}", q"{نجف‌آباد}", q"{آمل}", q"{بابل}", q"{ورامین}"
		, q"{آبادان}", q"{پاکدشت}", q"{خوی}", q"{ساوه}", q"{بجنورد}", q"{قائم‌شهر}"
		, q"{بوشهر}", q"{قرچک}", q"{سیرجان}", q"{بیرجند}", q"{ایلام}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{شمال}", q"{شرق}", q"{غرب}", q"{جنوب}", q"{جدید}", q"{جزیره}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{روستا}", q"{شهر}", q"{دهکده}", q"{بندر}", q"{دژ}", q"{بندرگاه}"
		, q"{ناحیه}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{چین}", q"{هند}", q"{ایالات متحده آمریکا}", q"{اندونزی}"
		, q"{برزیل}", q"{بنگلادش}", q"{روسیه}", q"{ژاپن}", q"{پاکستان}"
		, q"{ویتنام}", q"{نیجریه}", q"{مکزیک}", q"{اتیوپی}", q"{آلمان}"
		, q"{فیلیپین}", q"{تایلند}", q"{جمهوری دموکراتیک کنگو}"
		, q"{میانمار}", q"{بریتانیا}", q"{فرانسه}", q"{ترکیه}", q"{ایران}"
		, q"{مصر}", q"{کره جنوبی}", q"{ایتالیا}", q"{تانزانیا}", q"{کلمبیا}"
		, q"{اسپانیا}", q"{اوکراین}", q"{کنیا}", q"{کانادا}", q"{آفریقای جنوبی}"
		, q"{لهستان}", q"{اوگاندا}", q"{آرژانتین}", q"{ازبکستان}"
		, q"{پرو}", q"{نپال}", q"{ونزوئلا}", q"{مالزی}", q"{کره شمالی}"
		, q"{استرالیا}", q"{غنا}", q"{سودان}", q"{مراکش}", q"{تایوان}"
		, q"{الجزایر}", q"{موزامبیک}", q"{ماداگاسکار}", q"{رومانی}"
		, q"{قزاقستان}", q"{آنگولا}", q"{عراق}", q"{سریلانکا}", q"{کامرون}"
		, q"{عربستان سعودی}", q"{شیلی}", q"{هلند}", q"{ساحل عاج}", q"{کامبوج}"
		, q"{افغانستان}", q"{یمن}", q"{اکوادور}", q"{بورکینافاسو}"
		, q"{زامبیا}", q"{سنگال}", q"{مالاوی}", q"{گینه}", q"{پرتغال}"
		, q"{جمهوری چک}", q"{کوبا}", q"{بلژیک}", q"{سوئد}", q"{سوریه}"
		, q"{بلاروس}", q"{سوئیس}", q"{بولیوی}", q"{یونان}", q"{جمهوری دومینیکن}"
		, q"{هائیتی}", q"{نیجر}", q"{جمهوری آذربایجان}", q"{امارات متحده عربی}"
		, q"{گواتمالا}", q"{رواندا}", q"{چاد}", q"{مجارستان}", q"{بوروندی}"
		, q"{پاپوآ گینه نو}", q"{تونس}", q"{زیمبابوه}", q"{هنگ کنگ}"
		, q"{اتریش}", q"{بنین}", q"{هندوراس}", q"{اسرائیل}", q"{سومالی}"
		, q"{سنگاپور}", q"{لائوس}", q"{مالی}", q"{پاراگوئه}", q"{نیکاراگوئه}"
		, q"{اریتره}", q"{جمهوری کنگو}", q"{دانمارک}", q"{السالوادور}"
		, q"{اسلواکی}", q"{نروژ}", q"{فنلاند}", q"{توگو}", q"{بلغارستان}"
		, q"{نیوزیلند}", q"{کویت}", q"{قرقیزستان}", q"{ترکمنستان}"
		, q"{کاستاریکا}", q"{تاجیکستان}", q"{سیرالئون}", q"{جمهوری ایرلند}"
		, q"{جمهوری آفریقای مرکزی}", q"{گرجستان}", q"{اردن}", q"{کرواسی}"
		, q"{صربستان}", q"{اروگوئه}", q"{لیبی}", q"{پاناما}", q"{بوسنی و هرزگوین}"
		, q"{لبنان}", q"{لیتوانی}", q"{قطر}", q"{ارمنستان}", q"{لیبریا}"
		, q"{موریتانی}", q"{بوتسوانا}", q"{پورتوریکو}", q"{جامائیکا}"
		, q"{مولداوی}", q"{آلبانی}", q"{مغولستان}", q"{لتونی}", q"{عمان}"
		, q"{جمهوری مقدونیه}", q"{اسلوونی}", q"{نامیبیا}", q"{لسوتو}"
		, q"{کوزوو}", q"{گامبیا}", q"{بحرین}", q"{استونی}", q"{موریس}"
		, q"{گینه بیسائو}", q"{گابن}", q"{ترینیداد و توباگو}"
		, q"{قبرس}", q"{اسواتینی}", q"{تیمور شرقی}", q"{ماکائو}", q"{نوار غزه}"
		, q"{پادشاهی بوتان}", q"{فیجی}", q"{گویان}", q"{جیبوتی}", q"{مونتهنگرو}"
		, q"{کومور}", q"{لوکزامبورگ}", q"{برونئی}", q"{جزایر سلیمان}"
		, q"{باهاما}", q"{کیپ ورد}", q"{گینه استوایی}", q"{مالت}", q"{ایسلند}"
		, q"{سورینام}", q"{مالدیو}", q"{صحرای غربی}", q"{باربادوس}"
		, q"{بلیز}", q"{پلینزی فرانسه}", q"{وانواتو}", q"{کالدونیای جدید}"
		, q"{سنت لوسیا}", q"{کوراسائو}", q"{گوآم}", q"{گرنادا}", q"{سنت وینسنت و گرنادینها}"
		, q"{جرسی}", q"{سائوتومه و پرنسیپ}", q"{موناکو}", q"{آروبا}"
		, q"{جزایر ویرجین ایالات متحده}", q"{ساموآ}", q"{جزیره من}"
		, q"{تونگا}", q"{سیشل}", q"{جزایر کیمن}", q"{جزایر ماریانای شمالی}"
		, q"{برمودا}", q"{آندورا}", q"{لیختناشتاین}", q"{جزایر فارو}"
		, q"{گرنزی}", q"{آنتیگوا و باربودا}", q"{گرینلند}", q"{دومینیکا}"
		, q"{سنت مارتین}", q"{سان مارینو}", q"{سنت کیتس و نویس}"
		, q"{ساموای آمریکا}", q"{ایالات فدرال میکرونزی}"
		, q"{جزایر ویرجین انگلستان}", q"{جبل طارق}", q"{جزایر مارشال}"
		, q"{پالائو}", q"{کیریباتی}", q"{جزایر کوک}", q"{آنگویلا}"
		, q"{جزایر فالکلند}", q"{جزایر تورکس و کایکوس}", q"{مونتسرات}"
		, q"{تووالو}", q"{سنت پیر و ماژلان}", q"{والیس و فوتونا}"
		, q"{واتیکان}", q"{سینت هلینا}", q"{سوالبارد}", q"{جزیره نورفولک}"
		, q"{نیووی}", q"{توکلائو}", q"{جزایر پیتکرن}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{ایران}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{شمال}", q"{شرق}", q"{جنوب}", q"{غرب}", q"{شمال شرق}", q"{شمال غرب}"
		, q"{جنوب شرق}", q"{جنوب غرب}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{آذربایجان شرقی}", q"{آذربایجان غربی}", q"{اردبیل}"
		, q"{اصفهان}", q"{البرز}", q"{ایلام}", q"{بوشهر}", q"{تهران}", q"{چهارمحال و بختیاری}"
		, q"{خراسان جنوبی}", q"{خراسان رضوی}", q"{خراسان شمالی}"
		, q"{خوزستان}", q"{زنجان}", q"{سمنان}", q"{سیستان و بلوچستان}"
		, q"{فارس}", q"{قزوین}", q"{قم}", q"{کردستان}", q"{کرمان}", q"{کرمانشاه}"
		, q"{کهگیلویه و بویراحمد}", q"{گلستان}", q"{گیلان}", q"{لرستان}"
		, q"{مازندران}", q"{مرکزی}", q"{هرمزگان}", q"{همدان}", q"{یزد}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{آزادی}", q"{آفریقا}", q"{آذربایجان}", q"{حقانی}", q"{امیرکبیر}"
		, q"{اجاره دار}", q"{اقبال لاهوری}", q"{ابوذر}", q"{قدس}", q"{سباری}"
		, q"{فاطمی}", q"{مالک اشتر}", q"{نیایش}", q"{دیباجی}", q"{واعظی}"
		, q"{دستغیب}", q"{موحد دانش}", q"{کارگر شمالی}", q"{استاد قریب}"
		, q"{یادگار امام}", q"{دکتر چمران}", q"{رسالت}", q"{سمیه}"
		, q"{شهید مطهری}", q"{هویزه}", q"{دماوند}", q"{توحید}", q"{ستارخان}"
		, q"{کارون}", q"{استادمعین}", q"{رامین}", q"{اندرزگو}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{لورم}", q"{ایپسوم}", q"{متن}", q"{ساختگی}", q"{با،}", q"{تولید}"
		, q"{سادگی}", q"{نامفهوم،}", q"{از}", q"{صنعت}", q"{چاپ}", q"{و با}"
		, q"{استفاده}", q"{طراحان}", q"{گرافیک}", q"{است}", q"{چاپگرها}"
		, q"{و متون}", q"{بلکه}", q"{روزنامه.}", q"{و مجله}", q"{در}", q"{ستون}"
		, q"{و سطر}", q"{آنچنان}", q"{که،}", q"{لازم}", q"{و برای}", q"{شرایط}"
		, q"{فعلی}", q"{تکنولوژی}", q"{مورد نیاز}", q"{و کاربردهای}"
		, q"{متنوع}", q"{با هدف}", q"{بهبود}", q"{ابزارهای کاربردی}"
		, q"{می باشد}", q"{کتابهای}", q"{زیادی}", q"{شصت و سه درصد}"
		, q"{گذشته}", q"{حال}", q"{و آینده}", q"{شناخت}", q"{فراوان}", q"{جامعه}"
		, q"{و}", q"{متخصصان}", q"{را}", q"{می طلبد}", q"{تا با،}", q"{نرم افزارها}"
		, q"{بیشتری را}", q"{برای}", q"{رایانه ای}", q"{علی الخصوص }"
		, q"{طراحان خلاقی}", q"{و فرهنگ پیشرو}", q"{در زبان فارسی }"
		, q"{ایجاد}", q"{کرد}", q"{در این صورت}", q"{می توان}", q"{امید}"
		, q"{داشت}", q"{که}", q"{تمام}", q"{و دشواری}", q"{موجود}", q"{ارائه}"
		, q"{راهکارها}", q"{سخت}", q"{تایپ}", q"{به پایان}", q"{ و زمان}"
		, q"{شامل}", q"{حروفچینی}", q"{دستاوردهای}", q"{اصلی}", q"{جوابگوی}"
		, q"{سوالات}", q"{پیوسته}", q"{اهل}", q"{دنیای}", q"{طراحی}", q"{اساسا}"
		, q"{مورد}", q"{قرار گیرد}" ];

		return choice(strs, this.rnd);
	}

	override string musicGenre() {
		const string[] strs =
		[ q"{راک}", q"{متال}", q"{پاپ}", q"{الکترونیک}", q"{محلی}", q"{جهانی}"
		, q"{کانتری}", q"{جاز}", q"{فانک}", q"{سول}", q"{هیپ هاپ}", q"{کلاسیک}"
		, q"{لاتین}", q"{رگه}", q"{بلوز}", q"{غیرموسیقی}", q"{رپ}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{مریم}", q"{نازنین}", q"{غزاله}", q"{محدثه}", q"{بهناز}", q"{زینب}"
		, q"{کیمیا}", q"{سوسن}", q"{لاله}", q"{آنا}", q"{آناهیتا}", q"{آنیتا}"
		, q"{آرمیتا}", q"{آتوسا}", q"{آیدا}", q"{بنفشه}", q"{بهار}", q"{بیتا}"
		, q"{پارمیس}", q"{پریناز}", q"{پریسا}", q"{پرنیان}", q"{سارا}"
		, q"{پگاه}", q"{ترانه}", q"{چکاوک}", q"{دریا}", q"{درسا}", q"{فرشته}"
		, q"{ملیسا}", q"{ملیکا}", q"{رویا}", q"{زیبا}", q"{یاسمن}", q"{سپیده}"
		, q"{سمیرا}", q"{سیما}", q"{شادی}", q"{هانیه}", q"{شهرزاد}", q"{شکوه}"
		, q"{سمیه}", q"{شهلا}", q"{شیدا}", q"{شیوا}", q"{فرانک}", q"{فرزانه}"
		, q"{فرناز}", q"{فریبا}", q"{فریماه}", q"{کتایون}", q"{گلاره}"
		, q"{گیتی}", q"{گیسو}", q"{مروارید}", q"{مهرناز}", q"{مهسا}", q"{مینا}"
		, q"{مینو}", q"{مهوش}", q"{میترا}", q"{نگین}", q"{نگار}", q"{نیلوفر}"
		, q"{رز}", q"{هلیا}", q"{هستی}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{خانم}", q"{دکتر}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{آبان دخت}", q"{آبتین}", q"{آتوسا}", q"{آفر}", q"{آفره دخت}"
		, q"{آذرنوش‌}", q"{آذین}", q"{آراه}", q"{آرزو}", q"{آرش}", q"{آرتین}"
		, q"{آرتام}", q"{آرتمن}", q"{آرشام}", q"{آرمان}", q"{آرمین}", q"{آرمیتا}"
		, q"{آریا فر}", q"{آریا}", q"{آریا مهر}", q"{آرین}", q"{آزاده}"
		, q"{آزرم}", q"{آزرمدخت}", q"{آزیتا}", q"{آناهیتا}", q"{آونگ}"
		, q"{آهو}", q"{آیدا}", q"{اختر}", q"{ارد}", q"{اردشیر}", q"{اردوان}"
		, q"{ارژن}", q"{ارژنگ}", q"{ارسلان}", q"{ارغوان}", q"{ارمغان}"
		, q"{ارنواز}", q"{اروانه}", q"{استر}", q"{اسفندیار}", q"{اشکان}"
		, q"{اشکبوس}", q"{افسانه}", q"{افسون}", q"{افشین}", q"{امید}", q"{آنوشا}"
		, q"{انوشروان}", q"{اورنگ}", q"{اوژن}", q"{اوستا}", q"{اهورا}"
		, q"{ایاز}", q"{ایران}", q"{ایراندخت}", q"{ایرج}", q"{ایزدیار}"
		, q"{بابک}", q"{باپوک}", q"{باربد}", q"{بارمان}", q"{بامداد}", q"{بامشاد}"
		, q"{بانو}", q"{بختیار}", q"{برانوش}", q"{بردیا}", q"{برزو}", q"{برزویه}"
		, q"{برزین}", q"{برمک}", q"{بزرگمهر}", q"{بنفشه}", q"{بوژان}", q"{بویان}"
		, q"{بهار}", q"{بهارک}", q"{بهاره}", q"{بهتاش}", q"{بهداد}", q"{بهرام}"
		, q"{بهدیس}", q"{بهرخ}", q"{بهرنگ}", q"{بهروز}", q"{بهزاد}", q"{بهشاد}"
		, q"{بهمن}", q"{بهناز}", q"{بهنام}", q"{بهنود}", q"{بهنوش}", q"{بیتا}"
		, q"{بیژن}", q"{پارسا}", q"{پاکان}", q"{پاکتن}", q"{پاکدخت}", q"{پانته آ}"
		, q"{پدرام}", q"{پرتو}", q"{پرشنگ}", q"{پرستو}", q"{پرویز}", q"{پردیس}"
		, q"{پرهام}", q"{پژمان}", q"{پژوا}", q"{پرنیا}", q"{پشنگ}", q"{پروانه}"
		, q"{پروین}", q"{پری}", q"{پریچهر}", q"{پریدخت}", q"{پریسا}", q"{پرناز}"
		, q"{پریوش}", q"{پریا}", q"{پوپک}", q"{پوران}", q"{پوراندخت}", q"{پوریا}"
		, q"{پولاد}", q"{پویا}", q"{پونه}", q"{پیام}", q"{پیروز}", q"{پیمان}"
		, q"{تابان}", q"{تاباندخت}", q"{تاجی}", q"{تارا}", q"{تاویار}"
		, q"{ترانه}", q"{تناز}", q"{توران}", q"{توراندخت}", q"{تورج}", q"{تورتک}"
		, q"{توفان}", q"{توژال}", q"{تیر داد}", q"{تینا}", q"{تینو}", q"{جابان}"
		, q"{جامین}", q"{جاوید}", q"{جریره}", q"{جمشید}", q"{جوان}", q"{جویا}"
		, q"{جهان}", q"{جهانبخت}", q"{جهانبخش}", q"{جهاندار}", q"{جهانگیر}"
		, q"{جهان بانو}", q"{جهاندخت}", q"{جهان ناز}", q"{جیران}", q"{چابک}"
		, q"{چالاک}", q"{چاوش}", q"{چوبین}", q"{چهرزاد}", q"{خاوردخت}"
		, q"{خداداد}", q"{خدایار}", q"{خرم}", q"{خرمدخت}", q"{خسرو}", q"{خشایار}"
		, q"{خورشید}", q"{دادمهر}", q"{دارا}", q"{داراب}", q"{داریا}", q"{داریوش}"
		, q"{دانوش}", q"{داور‌}", q"{دایان}", q"{دریا}", q"{دل آرا}", q"{دل آویز}"
		, q"{دلارام}", q"{دل انگیز}", q"{دلبر}", q"{دلبند}", q"{دلربا}"
		, q"{دلشاد}", q"{دلکش}", q"{دلناز}", q"{دلنواز}", q"{دورشاسب}"
		, q"{دنیا}", q"{دیااکو}", q"{دیانوش}", q"{دیبا}", q"{دیبا دخت}"
		, q"{رابو}", q"{رابین}", q"{رادبانو}", q"{رادمان}", q"{رازبان}"
		, q"{راژانه}", q"{راسا}", q"{رامتین}", q"{رامش}", q"{رامشگر}", q"{رامونا}"
		, q"{رامیار}", q"{رامیلا}", q"{رامین}", q"{راویار}", q"{رژینا}"
		, q"{رخپاک}", q"{رخسار}", q"{رخشانه}", q"{رخشنده}", q"{رزمیار}"
		, q"{رستم}", q"{رکسانا}", q"{روبینا}", q"{رودابه}", q"{روزبه}"
		, q"{روشنک}", q"{روناک}", q"{رهام}", q"{رهی}", q"{ریبار}", q"{راسپینا}"
		, q"{زادبخت}", q"{زاد به}", q"{زاد چهر}", q"{زاد فر}", q"{زال}"
		, q"{زادماسب}", q"{زاوا}", q"{زردشت}", q"{زرنگار}", q"{زری}", q"{زرین}"
		, q"{زرینه}", q"{زمانه}", q"{زونا}", q"{زیبا}", q"{زیبار}", q"{زیما}"
		, q"{زینو}", q"{ژاله}", q"{ژالان}", q"{ژیار}", q"{ژینا}", q"{ژیوار}"
		, q"{سارا}", q"{سارک}", q"{سارنگ}", q"{ساره}", q"{ساسان}", q"{ساغر}"
		, q"{سام}", q"{سامان}", q"{سانا}", q"{ساناز}", q"{سانیار}", q"{ساویز}"
		, q"{ساهی}", q"{ساینا}", q"{سایه}", q"{سپنتا}", q"{سپند}", q"{سپهر}"
		, q"{سپهرداد}", q"{سپیدار}", q"{سپید بانو}", q"{سپیده}", q"{ستاره}"
		, q"{ستی}", q"{سرافراز}", q"{سرور}", q"{سروش}", q"{سوبا}", q"{سوبار}"
		, q"{سنبله}", q"{سودابه}", q"{سوری}", q"{سورن}", q"{سورنا}", q"{سوزان}"
		, q"{سوزه}", q"{سوسن}", q"{سومار}", q"{سولان}", q"{سولماز}", q"{سوگند}"
		, q"{سهراب}", q"{سهره}", q"{سهند}", q"{سیامک}", q"{سیاوش}", q"{سیبوبه ‌}"
		, q"{سیما}", q"{سیمدخت}", q"{سینا}", q"{سیمین}", q"{سیمین دخت}"
		, q"{شاپرک}", q"{شادی}", q"{شادمهر}", q"{شاران}", q"{شاهپور}", q"{شاهدخت}"
		, q"{شاهرخ}", q"{شاهین}", q"{شاهیندخت}", q"{شایسته}", q"{شباهنگ}"
		, q"{شب بو}", q"{شبدیز}", q"{شبنم}", q"{شراره}", q"{شرمین}", q"{شروین}"
		, q"{شکوفه}", q"{شکفته}", q"{شمشاد}", q"{شمین}", q"{شوان}", q"{شمیلا}"
		, q"{شورانگیز}", q"{شوری}", q"{شهاب}", q"{شهبار}", q"{شهباز}", q"{شهبال}"
		, q"{شهپر}", q"{شهداد}", q"{شهرآرا}", q"{شهرام}", q"{شهربانو}"
		, q"{شهرزاد}", q"{شهرناز}", q"{شهرنوش}", q"{شهره}", q"{شهریار}"
		, q"{شهلا}", q"{شهنواز}", q"{شهین}", q"{شیبا}", q"{شیدا}", q"{شیده}"
		, q"{شیردل}", q"{شیرزاد}", q"{شیرنگ}", q"{شیرو}", q"{شیرین دخت}"
		, q"{شیما}", q"{شینا}", q"{شیرین}", q"{شیوا}", q"{طوس}", q"{طوطی}", q"{طهماسب}"
		, q"{طهمورث}", q"{غوغا}", q"{غنچه}", q"{فتانه}", q"{فدا}", q"{فراز}"
		, q"{فرامرز}", q"{فرانک}", q"{فراهان}", q"{فربد}", q"{فربغ}", q"{فرجاد}"
		, q"{فرخ}", q"{فرخ پی}", q"{فرخ داد}", q"{فرخ رو}", q"{فرخ زاد}"
		, q"{فرخ لقا}", q"{فرخ مهر}", q"{فرداد}", q"{فردیس}", q"{فرین}"
		, q"{فرزاد}", q"{فرزام}", q"{فرزان}", q"{فرزانه}", q"{فرزین}", q"{فرشاد}"
		, q"{فرشته}", q"{فرشید}", q"{فرمان}", q"{فرناز}", q"{فرنگیس}", q"{فرنود}"
		, q"{فرنوش}", q"{فرنیا}", q"{فروتن}", q"{فرود}", q"{فروز}", q"{فروزان}"
		, q"{فروزش}", q"{فروزنده}", q"{فروغ}", q"{فرهاد}", q"{فرهنگ}", q"{فرهود}"
		, q"{فربار}", q"{فریبا}", q"{فرید}", q"{فریدخت}", q"{فریدون}", q"{فریمان}"
		, q"{فریناز}", q"{فرینوش}", q"{فریوش}", q"{فیروز}", q"{فیروزه}"
		, q"{قابوس}", q"{قباد}", q"{قدسی}", q"{کابان}", q"{کابوک}", q"{کارا}"
		, q"{کارو}", q"{کاراکو}", q"{کامبخت}", q"{کامبخش}", q"{کامبیز}"
		, q"{کامجو}", q"{کامدین}", q"{کامران}", q"{کامراوا}", q"{کامک}"
		, q"{کامنوش}", q"{کامیار}", q"{کانیار}", q"{کاووس}", q"{کاوه}"
		, q"{کتایون}", q"{کرشمه}", q"{کسری}", q"{کلاله}", q"{کمبوجیه}"
		, q"{کوشا}", q"{کهبد}", q"{کهرام}", q"{کهزاد}", q"{کیارش}", q"{کیان}"
		, q"{کیانا}", q"{کیانچهر}", q"{کیاندخت}", q"{کیانوش}", q"{کیاوش}"
		, q"{کیخسرو}", q"{کیقباد}", q"{کیکاووس}", q"{کیوان}", q"{کیوان دخت}"
		, q"{کیومرث}", q"{کیهان}", q"{کیهانه}", q"{گرد آفرید}", q"{گردان}"
		, q"{گرشا}", q"{گرشاسب}", q"{گرشین}", q"{گرگین}", q"{گزل}", q"{گشتاسب}"
		, q"{گشسب بانو}", q"{گل}", q"{گل آذین}", q"{گل آرا‌}", q"{گلاره}"
		, q"{گل افروز}", q"{گلاله}", q"{گل اندام}", q"{گلاویز}", q"{گلباد}"
		, q"{گلبار}", q"{گلبام}", q"{گلبان}", q"{گلبانو}", q"{گلبرگ}", q"{گلبو}"
		, q"{گلبهار}", q"{گلبیز}", q"{گلپاره}", q"{گلپر}", q"{گلپری}", q"{گلپوش}"
		, q"{گل پونه}", q"{گلچین}", q"{گلدخت}", q"{گلدیس}", q"{گلربا}"
		, q"{گلرخ}", q"{گلرنگ}", q"{گلرو}", q"{گلشن}", q"{گلریز}", q"{گلزاد}"
		, q"{گلزار}", q"{گلسا}", q"{گلشید}", q"{گلنار}", q"{گلناز}", q"{گلنسا}"
		, q"{گلنواز}", q"{گلنوش}", q"{گلی}", q"{گودرز}", q"{گوماتو}", q"{گهر چهر}"
		, q"{گوهر ناز}", q"{گیتی}", q"{گیسو}", q"{گیلدا}", q"{گیو}", q"{لادن}"
		, q"{لاله}", q"{لاله رخ}", q"{لاله دخت}", q"{لبخند}", q"{لقاء}"
		, q"{لومانا}", q"{لهراسب}", q"{مارال}", q"{ماری}", q"{مازیار}"
		, q"{ماکان}", q"{مامک}", q"{مانا}", q"{ماندانا}", q"{مانوش}", q"{مانی}"
		, q"{مانیا}", q"{ماهان}", q"{ماهاندخت}", q"{ماه برزین}", q"{ماه جهان}"
		, q"{ماهچهر}", q"{ماهدخت}", q"{ماهور}", q"{ماهرخ}", q"{ماهزاد}"
		, q"{مردآویز}", q"{مرداس}", q"{مرزبان}", q"{مرمر}", q"{مریم}", q"{مزدک}"
		, q"{مژده}", q"{مژگان}", q"{مستان}", q"{مستانه}", q"{مشکاندخت}"
		, q"{مشکناز}", q"{مشکین دخت}", q"{منیژه}", q"{منوچهر}", q"{مهبانو}"
		, q"{مهبد}", q"{مه داد}", q"{مهتاب}", q"{مهدیس}", q"{مه جبین}", q"{مه دخت}"
		, q"{مهر آذر}", q"{مهر آرا}", q"{مهر آسا}", q"{مهر آفاق}", q"{مهر افرین}"
		, q"{مهرآب}", q"{مهرداد}", q"{مهر افزون}", q"{مهرام}", q"{مهران}"
		, q"{مهراندخت}", q"{مهراندیش}", q"{مهرانفر}", q"{مهرانگیز}"
		, q"{مهر دخت}", q"{مهرزاده ‌}", q"{مهرناز}", q"{مهرنوش}", q"{مهرنکار}"
		, q"{مهرنیا}", q"{مهروز}", q"{مهری}", q"{مهریار}", q"{مهسا}", q"{مهستی}"
		, q"{مه سیما}", q"{مهشاد}", q"{مهشید}", q"{مهنام}", q"{مهناز}"
		, q"{مهنوش}", q"{مهوش}", q"{مهیار}", q"{مهین}", q"{مهین دخت}", q"{میترا}"
		, q"{میخک}", q"{مینا}", q"{مینا دخت}", q"{مینو}", q"{مینودخت}"
		, q"{مینو فر}", q"{نادر}", q"{ناز آفرین}", q"{نازبانو}", q"{نازپرور}"
		, q"{نازچهر}", q"{نازفر}", q"{نازلی}", q"{نازی}", q"{نازیدخت}"
		, q"{نامور}", q"{ناهید}", q"{ندا}", q"{نرسی}", q"{نرگس}", q"{نرمک}"
		, q"{نرمین}", q"{نریمان}", q"{نسترن}", q"{نسرین}", q"{نسرین دخت}"
		, q"{نسرین نوش}", q"{نکیسا}", q"{نگار}", q"{نگاره}", q"{نگارین}"
		, q"{نگین}", q"{نوا}", q"{نوش}", q"{نوش آذر}", q"{نوش آور}", q"{نوشا}"
		, q"{نوش آفرین}", q"{نوشدخت}", q"{نوشروان}", q"{نوشفر}", q"{نوشناز}"
		, q"{نوشین}", q"{نوید}", q"{نوین}", q"{نوین دخت}", q"{نیشا}", q"{نیک بین}"
		, q"{نیک پی}", q"{نیک چهر}", q"{نیک خواه}", q"{نیکداد}", q"{نیکدخت}"
		, q"{نیکدل}", q"{نیکزاد}", q"{نیلوفر}", q"{نیما}", q"{وامق}", q"{ورجاوند}"
		, q"{وریا}", q"{وشمگیر}", q"{وهرز}", q"{وهسودان}", q"{ویدا}", q"{ویس}"
		, q"{ویشتاسب}", q"{ویگن}", q"{هژیر}", q"{هخامنش}", q"{هیربد}", q"{هرمز}"
		, q"{همایون}", q"{هما}", q"{همادخت}", q"{همدم}", q"{همراز}", q"{همراه}"
		, q"{هنگامه}", q"{هوتن}", q"{هور}", q"{هورتاش}", q"{هورچهر}", q"{هورداد}"
		, q"{هوردخت}", q"{هورزاد}", q"{هورمند}", q"{هوروش}", q"{هوشنگ}"
		, q"{هوشیار}", q"{هومان}", q"{هومن}", q"{هونام}", q"{هویدا}", q"{هیتاسب}"
		, q"{هیرمند}", q"{هیما}", q"{هیوا}", q"{یادگار}", q"{یاسمن}", q"{یاشار}"
		, q"{یاور}", q"{یزدان}", q"{یگانه}", q"{یوشیتا}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{عارف}", q"{عاشوری}", q"{عالی}", q"{عبادی}", q"{عبدالکریمی}"
		, q"{عبدالملکی}", q"{عراقی}", q"{عزیزی}", q"{عصار}", q"{عقیلی}"
		, q"{علم}", q"{علم‌الهدی}", q"{علی عسگری}", q"{علی‌آبادی}"
		, q"{علیا}", q"{علی‌پور}", q"{علی‌زمانی}", q"{عنایت}", q"{غضنفری}"
		, q"{غنی}", q"{فارسی}", q"{فاطمی}", q"{فانی}", q"{فتاحی}", q"{فرامرزی}"
		, q"{فرج}", q"{فرشیدورد}", q"{فرمانفرمائیان}", q"{فروتن}"
		, q"{فرهنگ}", q"{فریاد}", q"{فنایی}", q"{فنی‌زاده}", q"{فولادوند}"
		, q"{فهمیده}", q"{قاضی}", q"{قانعی}", q"{قانونی}", q"{قمیشی}", q"{قنبری}"
		, q"{قهرمان}", q"{قهرمانی}", q"{قهرمانیان}", q"{قهستانی}"
		, q"{کاشی}", q"{کاکاوند}", q"{کامکار}", q"{کاملی}", q"{کاویانی}"
		, q"{کدیور}", q"{کردبچه}", q"{کرمانی}", q"{کریمی}", q"{کلباسی}"
		, q"{کمالی}", q"{کوشکی}", q"{کهنمویی}", q"{کیان}", q"{کیانی}", q"{کیمیایی}"
		, q"{گل محمدی}", q"{گلپایگانی}", q"{گنجی}", q"{لاجوردی}", q"{لاچینی}"
		, q"{لاهوتی}", q"{لنکرانی}", q"{لوکس}", q"{مجاهد}", q"{مجتبایی}"
		, q"{مجتبوی}", q"{مجتهد شبستری}", q"{مجتهدی}", q"{مجرد}", q"{محجوب}"
		, q"{محجوبی}", q"{محدثی}", q"{محمدرضایی}", q"{محمدی}", q"{مددی}"
		, q"{مرادخانی}", q"{مرتضوی}", q"{مستوفی}", q"{مشا}", q"{مصاحب}"
		, q"{مصباح}", q"{مصباح‌زاده}", q"{مطهری}", q"{مظفر}", q"{معارف}"
		, q"{معروف}", q"{معین}", q"{مفتاح}", q"{مفتح}", q"{مقدم}", q"{ملایری}"
		, q"{ملک}", q"{ملکیان}", q"{منوچهری}", q"{موحد}", q"{موسوی}", q"{موسویان}"
		, q"{مهاجرانی}", q"{مهدی‌پور}", q"{میرباقری}", q"{میردامادی}"
		, q"{میرزاده}", q"{میرسپاسی}", q"{میزبانی}", q"{ناظری}", q"{نامور}"
		, q"{نجفی}", q"{ندوشن}", q"{نراقی}", q"{نعمت‌زاده}", q"{نقدی}"
		, q"{نقیب‌زاده}", q"{نواب}", q"{نوبخت}", q"{نوبختی}", q"{نهاوندی}"
		, q"{نیشابوری}", q"{نیلوفری}", q"{واثقی}", q"{واعظ}", q"{واعظ‌زاده}"
		, q"{واعظی}", q"{وکیلی}", q"{هاشمی}", q"{هاشمی رفسنجانی}"
		, q"{هاشمیان}", q"{هامون}", q"{هدایت}", q"{هراتی}", q"{هروی}", q"{همایون}"
		, q"{همت}", q"{همدانی}", q"{هوشیار}", q"{هومن}", q"{یاحقی}", q"{یادگار}"
		, q"{یثربی}", q"{یلدا}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{علی}", q"{حسن}", q"{محمد}", q"{مهدی}", q"{مسعود}", q"{دانیال}", q"{سجاد}"
		, q"{امیر}", q"{رضا}", q"{مازیار}", q"{مهیار}", q"{محمدرضا}", q"{فرهاد}"
		, q"{افشین}", q"{مهرداد}", q"{مهراد}", q"{کیانوش}", q"{کیوان}"
		, q"{کامران}", q"{مهران}", q"{سروش}", q"{سامان}", q"{هادی}", q"{همایون}"
		, q"{ایمان}", q"{رامین}", q"{رامتین}", q"{امین}", q"{سپهر}", q"{سهیل}"
		, q"{عرفان}", q"{جواد}", q"{نیما}", q"{پرهام}", q"{میلاد}", q"{شایان}"
		, q"{شهاب}", q"{کاوه}", q"{بهمن}", q"{سیاوش}", q"{سعید}", q"{امید}"
		, q"{حسین}", q"{سینا}", q"{مهدیار}", q"{صدرا}", q"{عباس}", q"{امیرسینا}"
		, q"{نوید}", q"{پیمان}", q"{پژمان}", q"{مجید}", q"{حمید}", q"{وحید}"
		, q"{علیرضا}", q"{آیدین}", q"{آرمان}", q"{امیرحسین}", q"{آرین}"
		, q"{کسرا}", q"{جمشید}", q"{فریبرز}", q"{قاسم}", q"{صمد}", q"{حامد}"
		, q"{فرزاد}", q"{فریدون}", q"{فربد}", q"{فرگام}", q"{یاسین}", q"{آرش}"
		, q"{آرمین}", q"{شهروز}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{آقای}", q"{دکتر}" ];

		return choice(strs, this.rnd);
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{آقای}", q"{خانم}", q"{دکتر}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{رهبر}", q"{ارشد}", q"{مستقیم}", q"{پویا}", q"{آینده}", q"{محصول}"
		, q"{ملی}", q"{منطقه}", q"{ناحیه}", q"{مرکزی}", q"{جهانی}", q"{مشتری}"
		, q"{سرمایه گذار}", q"{بین المللی}", q"{میراث}", q"{داخلی}"
		, q"{انسان}", q"{رئیس}", q"{مدیر اصلی}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{راه حل ها}", q"{برنامه}", q"{نام تجاری}", q"{امنیت}", q"{پژوهش}"
		, q"{بازار یابی}", q"{رهنمود}", q"{پیاده سازی}", q"{ادغام}"
		, q"{عملکرد}", q"{واکنش}", q"{الگو}", q"{تدابیر}", q"{شناسایی}"
		, q"{بازارها}", q"{گروه ها}", q"{بخش}", q"{برنامه های کاربردی}"
		, q"{بهينه سازي}", q"{عملیات}", q"{زیر ساخت}", q"{اینترانت}"
		, q"{ارتباطات}", q"{وب}", q"{کیفیت}", q"{اطمینان}", q"{پویایی}"
		, q"{حساب ها}", q"{داده ها}", q"{خلاقیت}", q"{پیکربندی}", q"{مسئوليت}"
		, q"{فعل و انفعالات}", q"{عوامل}", q"{قابلیت استفاده}"
		, q"{معیار}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{کارگر ساده}", q"{سرپرست کارگاه}", q"{ناظر}", q"{مهندس پروژه}"
		, q"{کارفرما}", q"{مدیر}", q"{سرپرست}", q"{اموردفتری}", q"{کارمند}"
		, q"{مسئول}", q"{مدیرعامل}", q"{رئیس هیئت مدیره}", q"{عضو هیئت مدیره}"
		, q"{کارشناس}", q"{مربی}", q"{مدرس}", q"{منشی}", q"{فروشنده}", q"{متصدی}"
		, q"{تکنسین}", q"{استادکار}", q"{نصاب}", q"{حسابدار}", q"{راننده}"
		, q"{نگهبان}", q"{رئیس}", q"{مهندس}", q"{مدیرفروش}", q"{کارشناس فنی}"
		, q"{مسئول فنی}", q"{کارگر فنی}", q"{بازاریاب}", q"{کارپرداز}"
		, q"{خدمتگزار}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleFuel() {
		const string[] strs =
		[ q"{دیزل}", q"{الکتریکی}", q"{بنزین}", q"{هیبرید}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleManufacturer() {
		const string[] strs =
		[ q"{شورولت}", q"{کادیلاک}", q"{فورد}", q"{کرایسلر}", q"{دوج}", q"{جیپ}"
		, q"{تسلا}", q"{تویوتا}", q"{هوندا}", q"{نیسان}", q"{آٔ‌ئودی}"
		, q"{مرسدس بنز}", q"{بی ام و}", q"{ولکس واگن}", q"{پورشه}", q"{جگوار}"
		, q"{استون مارتین}", q"{لندرور}", q"{بنتلی}", q"{مینی}", q"{رولز رویس}"
		, q"{فیات}", q"{لامبورگینی}", q"{مازراتی}", q"{فراری}", q"{بوگاتی}"
		, q"{کیا}", q"{هیوندای}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleModel() {
		const string[] strs =
		[ q"{فیستا}", q"{فوکوس}", q"{تاروس}", q"{موستانگ}", q"{اکسپلورر}"
		, q"{کروز}", q"{مالیبو}", q"{ایمپالا}", q"{کامارو}", q"{کروت}"
		, q"{کولورادو}", q"{سیلورادو}", q"{اسکالید}", q"{آلپاین}"
		, q"{چارجر}", q"{چلنجر}", q"{رانگلر}", q"{گرند چروکی}", q"{رودستر}"
		, q"{کمری}", q"{پریوس}", q"{لندکروزر}", q"{آکورد}", q"{سیویک}"
		, q"{المنت}", q"{سنترا}", q"{آلتیما}", q"{یبتل}", q"{جتا}", q"{گلف}"
		, q"{911}", q"{اسپایدر}", q"{کونتاچ}", q"{مورسیه لاگو}", q"{اونتادور}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleType() {
		const string[] strs =
		[ q"{ون}", q"{کوپه}", q"{پیکاپ}", q"{مینی ون}", q"{ون مسافرتی}", q"{شاسی بلند}"
		, q"{سدان}", q"{استیشن}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{زیبا}", q"{بزرگ}", q"{کوچک}", q"{قدیمی}", q"{جدید}", q"{خوب}", q"{بد}"
		, q"{داغ}", q"{سریع}", q"{کند}", q"{پر}", q"{خالی}", q"{پرت}", q"{خوشحال}"
		, q"{غمگین}", q"{خسته}", q"{شاد}", q"{تاریک}", q"{روشن}", q"{نرم}", q"{سخت}"
		, q"{دشوار}", q"{آسان}", q"{پایین}", q"{بالا}", q"{ضعیف}", q"{قوی}"
		, q"{نازک}", q"{ضخیم}", q"{تنگ}", q"{گشاد}", q"{بارانی}", q"{خشک}", q"{زنده}"
		, q"{مرده}", q"{نزدیک}", q"{دور}", q"{ساده}", q"{پیچیده}", q"{فوق‌العاده}"
		, q"{عادی}", q"{گرم}", q"{سرد}", q"{پوشیده}", q"{باز}", q"{بسته}", q"{بلند}"
		, q"{کوتاه}", q"{دقیق}", q"{نامرئی}", q"{مشهور}", q"{ناشناخته}"
		, q"{پرنده}", q"{خیابانی}", q"{روستایی}", q"{شهری}", q"{دانشجویی}"
		, q"{کارمندی}", q"{تولیدی}", q"{ساحلی}", q"{کوهستانی}", q"{کشاورزی}"
		, q"{فنی}", q"{علمی}", q"{خبری}", q"{ورزشی}", q"{هنری}", q"{شیرین}"
		, q"{تلخ}", q"{شور}", q"{بوییده}", q"{بی‌بو}", q"{تازه}", q"{خراب}"
		, q"{شکسته}", q"{مناسب}", q"{نامناسب}", q"{عالی}", q"{خام}", q"{کامل}"
		, q"{ناقص}", q"{موفق}", q"{ناموفق}", q"{سرگرم‌کننده}", q"{خسته‌کننده}"
		, q"{آشنا}", q"{ناشنا}", q"{اصلی}", q"{ثانوی}", q"{محلی}", q"{بین‌المللی}"
		, q"{فارسی}", q"{انگلیسی}", q"{مفید}", q"{بی‌فایده}" ];

		return choice(strs, this.rnd);
	}

	override string wordConjunction() {
		const string[] strs =
		[ q"{و}", q"{یا}", q"{اما}", q"{بلکه}", q"{لیکن}", q"{زیرا}", q"{چون}", q"{هر چند}"
		, q"{تا}", q"{همچنین}", q"{بنابراین}", q"{اگرچه}", q"{همچون}" ];

		return choice(strs, this.rnd);
	}

	override string wordInterjection() {
		const string[] strs =
		[ q"{آه}", q"{وای}", q"{اوه}", q"{اوف}", q"{اَخ}", q"{آهان}", q"{اِی وای}"
		, q"{وایسا}", q"{آفرین}", q"{هورا}", q"{واو}", q"{یاالله}" ];

		return choice(strs, this.rnd);
	}

	override string wordNoun() {
		const string[] strs =
		[ q"{میوه}", q"{گل}", q"{کتاب}", q"{خانه}", q"{ماشین}", q"{دست}", q"{پدر}"
		, q"{مادر}", q"{بچه}", q"{دختر}", q"{پسر}", q"{مرد}", q"{زن}", q"{دوست}"
		, q"{خواب}", q"{آسمان}", q"{دریا}", q"{شیر}", q"{گربه}", q"{سگ}", q"{میز}"
		, q"{صندلی}", q"{پنجره}", q"{در}", q"{روز}", q"{ماه}", q"{سال}", q"{صبح}"
		, q"{شب}", q"{کوه}", q"{درخت}", q"{باغ}", q"{رنگ}", q"{آب}", q"{آتش}", q"{خورشید}"
		, q"{ماهی}", q"{پرنده}", q"{حیوان}", q"{مرغ}", q"{میمون}", q"{گوش}"
		, q"{چشم}", q"{زبان}", q"{دندان}", q"{صدا}", q"{خنده}", q"{گریه}", q"{خیابان}"
		, q"{شهر}", q"{روستا}", q"{مدرسه}", q"{دانشگاه}", q"{پزشک}", q"{دندانپزشک}"
		, q"{مهندس}", q"{آهنگ}", q"{فیلم}", q"{تئاتر}", q"{نقاشی}", q"{عکس}"
		, q"{خبر}", q"{روزنامه}", q"{مجله}", q"{تلویزیون}", q"{رادیو}"
		, q"{موسیقی}", q"{رقص}", q"{ورزش}", q"{فوتبال}", q"{بسکتبال}", q"{والیبال}"
		, q"{شنا}", q"{تنیس}", q"{بیسبال}", q"{هنر}", q"{نقش}", q"{خواننده}"
		, q"{هنرمند}", q"{نویسنده}", q"{شاعر}", q"{کارگر}", q"{مدیر}", q"{رئیس}"
		, q"{کشاورز}", q"{فروشنده}", q"{مشتری}", q"{کامپیوتر}", q"{تلفن}"
		, q"{اینترنت}", q"{موبایل}", q"{تبلت}", q"{دوربین}", q"{نظارت}"
		, q"{ساعت}", q"{کیف}", q"{کفش}", q"{لباس}", q"{شلوار}", q"{پیراهن}"
		, q"{دستکش}", q"{شال}", q"{کلاه}", q"{عینک}", q"{شامپو}", q"{صابون}" ];

		return choice(strs, this.rnd);
	}

	override string wordPreposition() {
		const string[] strs =
		[ q"{با}", q"{بدون}", q"{برای}", q"{درباره}", q"{بین}", q"{از}", q"{تا}", q"{روی}"
		, q"{به‌وسیله}", q"{در}", q"{علی‌رغم}", q"{بعد از}", q"{قبل از}"
		, q"{بالا}", q"{پایین}", q"{در جلوی}", q"{پشت}", q"{در کنار}", q"{در دسترس}"
		, q"{در ضد}", q"{نزد}", q"{در عین حال}", q"{برابر با}", q"{میان}"
		, q"{در عوض}", q"{به دلیل}", q"{نزدیک}", q"{دور}", q"{با توجه به}"
		, q"{به عنوان}", q"{علاوه بر}", q"{با هم}", q"{با احترام به}"
		, q"{برخلاف}", q"{به‌روز}", q"{تحت}", q"{به طوری که}", q"{به صورت}"
		, q"{به عنوان مثال}", q"{علاوه بر آن}", q"{با توجه به این که}"
		, q"{تا حدودی}", q"{با اطمینان}", q"{با هر شک}", q"{با استفاده از}"
		, q"{بدون توجه به}", q"{تا حد امکان}", q"{به طور عمده}"
		, q"{به نسبت}", q"{به تناسب}", q"{به نظر}", q"{به طور کامل}"
		, q"{در برابر}", q"{به هیچ وجه}", q"{در مقابل}", q"{به نوعی}"
		, q"{به ترتیب}" ];

		return choice(strs, this.rnd);
	}

	override string wordVerb() {
		const string[] strs =
		[ q"{رفتن}", q"{آمدن}", q"{خوردن}", q"{نوشیدن}", q"{خواندن}", q"{نوشتن}"
		, q"{دیدن}", q"{شنیدن}", q"{گفتن}", q"{بودن}", q"{داشتن}", q"{آغاز کردن}"
		, q"{پایان دادن}", q"{شروع کردن}", q"{تمام کردن}", q"{کمک کردن}"
		, q"{انجام دادن}", q"{فهمیدن}", q"{تلاش کردن}", q"{بازی کردن}"
		, q"{درک کردن}", q"{انتظار داشتن}", q"{احساس کردن}", q"{مشاهده کردن}"
		, q"{باختن}", q"{برنده شدن}", q"{می‌دانستن}", q"{فکر کردن}"
		, q"{علاقه داشتن}", q"{خواستن}", q"{امیدوار بودن}", q"{باور کردن}"
		, q"{پیشنهاد دادن}", q"{قبول کردن}", q"{رد کردن}", q"{راه انداختن}"
		, q"{پیروی کردن}", q"{واکنش نشان دادن}", q"{گذاشتن}", q"{دریافت کردن}"
		, q"{دست یافتن}", q"{مجبور کردن}", q"{می‌خواستن}", q"{نشان دادن}"
		, q"{پشتیبانی کردن}", q"{رسیدن}", q"{فراموش کردن}", q"{انتخاب کردن}"
		, q"{ترجیح دادن}", q"{تصمیم گرفتن}", q"{تشویق کردن}", q"{رهبری کردن}"
		, q"{درست کردن}", q"{گم شدن}", q"{ساختن}", q"{سفارش دادن}"
		, q"{سازماندهی کردن}", q"{توجه داشتن}", q"{خوابیدن}", q"{سرگرم شدن}"
		, q"{جواب دادن}", q"{عکس العمل نشان دادن}", q"{درخواست کردن}"
		, q"{تسلط داشتن}", q"{شک کردن}", q"{اطمینان داشتن}", q"{باور نکردن}"
		, q"{آرام کردن}", q"{نیاز داشتن}", q"{عوض کردن}", q"{تغییر دادن}" ];

		return choice(strs, this.rnd);
	}

}
