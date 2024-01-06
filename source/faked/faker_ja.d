module faker.faker_ja;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_ja : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		assert(false);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{北}", q"{東}", q"{西}", q"{南}", q"{新}", q"{湖}", q"{港}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{市}", q"{区}", q"{町}", q"{村}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{アフガニスタン}", q"{アルバニア}", q"{アルジェリア}", q"{アメリカ}"
		, q"{アンゴラ}", q"{アルゼンチン}", q"{オーストラリア}", q"{オーストリア}"
		, q"{バハマ}", q"{バーレーン}", q"{バングラデシュ}", q"{バルバドス}"
		, q"{ベルギー}", q"{ベリーズ}", q"{ブータン}", q"{ボリビア}", q"{ボスニヤ・}"
		, q"{ヘルツェゴビナ}", q"{ボツワナ}", q"{ブラジル}", q"{ブルネイ}"
		, q"{ブルガリア}", q"{カンボジア}", q"{カメルーン}", q"{カナダ}", q"{中央アフリカ}"
		, q"{チャド}", q"{チリ}", q"{中国}", q"{コロンビア}", q"{コンゴ}", q"{コスタリカ}"
		, q"{クロアチア}", q"{キューバ}", q"{キプロス}", q"{チェコ}", q"{デンマーク}"
		, q"{ドミニカ共和国}", q"{エクアドル}", q"{エジプト}", q"{エルサルバドル}"
		, q"{赤道ギニア}", q"{エストニア}", q"{エチオピア}", q"{フィジー}"
		, q"{フィンランド}", q"{フランス}", q"{ガンビア}", q"{ドイツ}", q"{ガーナ}"
		, q"{イギリス}", q"{ギリシャ}", q"{グリーンランド}", q"{グレナダ}"
		, q"{グアテマラ}", q"{ギニア}", q"{ガイヤナ}", q"{ハイチ}", q"{オランダ}"
		, q"{ホンジェラス}", q"{香港}", q"{ハンガリー}", q"{アイスランド}"
		, q"{インド}", q"{インドネシア}", q"{イラン}", q"{イラク}", q"{アイルランド}"
		, q"{イスラエル}", q"{イタリア}", q"{ジャマイカ}", q"{日本}", q"{ヨルダン}"
		, q"{ケニア}", q"{コソボ}", q"{クウェート}", q"{ラオス}", q"{ラトビア}"
		, q"{レバノン}", q"{リベリア}", q"{リビア}", q"{リトアニア}", q"{ルクセンブルク}"
		, q"{マカオ}", q"{マダガスカル}", q"{マラウィ}", q"{マレーシア}", q"{マルタ}"
		, q"{モルジブ}", q"{モーリシャス}", q"{メキシコ}", q"{モルドバ}", q"{モナコ}"
		, q"{モンゴル}", q"{モロッコ}", q"{モザンビーク}", q"{ミャンマー}"
		, q"{ナミビア}", q"{ネパール}", q"{ニューギニア}", q"{ニュージーランド}"
		, q"{ニカラグア}", q"{ナイジェリア}", q"{北朝鮮}", q"{ノルウェー}"
		, q"{オーマン}", q"{パキスタン}", q"{パレスチナ}", q"{パナマ}", q"{パプアニューギニア}"
		, q"{パラグアイ}", q"{ペルー}", q"{フィリピン}", q"{ポーランド}", q"{ポルトガル}"
		, q"{カタール}", q"{ルーマニア}", q"{ロシア}", q"{ルワンダ}", q"{サウジアラビア}"
		, q"{スコットランド}", q"{セネガル}", q"{セイシェル}", q"{シンガポール}"
		, q"{スロバキア}", q"{スロベニア}", q"{ソロモン諸島}", q"{ソマリア}"
		, q"{南アフリカ}", q"{韓国}", q"{スペイン}", q"{スリランカ}", q"{スーダン}"
		, q"{スウェーデン}", q"{スイス}", q"{シリア}", q"{タヒチ}", q"{台湾}", q"{タンザニア}"
		, q"{タイ}", q"{トリニダード・トバゴ}", q"{チュニジア}", q"{トルコ}"
		, q"{ウガンダ}", q"{ウクライナ}", q"{アラブ首長国連邦}", q"{ウルグアイ}"
		, q"{バチカン}", q"{ベネズエラ}", q"{ベトナム}", q"{ウェールズ}", q"{イエメン}"
		, q"{ザイール}", q"{ザンビア}", q"{ジンバブエ}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{北}", q"{東}", q"{南}", q"{西}", q"{北東}", q"{北西}", q"{南東}", q"{南西}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{北海道}", q"{青森県}", q"{岩手県}", q"{宮城県}", q"{秋田県}", q"{山形県}"
		, q"{福島県}", q"{茨城県}", q"{栃木県}", q"{群馬県}", q"{埼玉県}", q"{千葉県}"
		, q"{東京都}", q"{神奈川県}", q"{新潟県}", q"{富山県}", q"{石川県}", q"{福井県}"
		, q"{山梨県}", q"{長野県}", q"{岐阜県}", q"{静岡県}", q"{愛知県}", q"{三重県}"
		, q"{滋賀県}", q"{京都府}", q"{大阪府}", q"{兵庫県}", q"{奈良県}", q"{和歌山県}"
		, q"{鳥取県}", q"{島根県}", q"{岡山県}", q"{広島県}", q"{山口県}", q"{徳島県}"
		, q"{香川県}", q"{愛媛県}", q"{高知県}", q"{福岡県}", q"{佐賀県}", q"{長崎県}"
		, q"{熊本県}", q"{大分県}", q"{宮崎県}", q"{鹿児島県}", q"{沖縄県}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{1}", q"{2}", q"{3}", q"{4}", q"{5}", q"{6}", q"{7}", q"{8}", q"{9}", q"{10}", q"{11}", q"{12}", q"{13}", q"{14}"
		, q"{15}", q"{16}", q"{17}", q"{18}", q"{19}", q"{20}", q"{21}", q"{22}", q"{23}", q"{24}", q"{25}", q"{26}", q"{27}"
		, q"{28}", q"{29}", q"{30}", q"{31}", q"{32}", q"{33}", q"{34}", q"{35}", q"{36}", q"{37}", q"{38}", q"{39}", q"{40}"
		, q"{41}", q"{42}", q"{43}", q"{44}", q"{45}", q"{46}", q"{47}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{つぎつぎ}", q"{薬}", q"{当て字}", q"{しょくん}", q"{間隔}", q"{飽くまでも}"
		, q"{あびる}", q"{雇用}", q"{かんどうする}", q"{じじょでん}", q"{超音波}"
		, q"{じゅうどう}", q"{面}", q"{先週}", q"{しょうがっこう}", q"{避ける}"
		, q"{ふそく}", q"{まぎらす}", q"{閉める}", q"{たまご}", q"{こわす}", q"{底}"
		, q"{〜亭}", q"{しゃくや}", q"{しゃっか}", q"{ひきざん}", q"{割り箸}", q"{こうぞく}"
		, q"{果てる}", q"{つなひき}", q"{漂う}", q"{漠然}", q"{しょうりゃく}", q"{減俸}"
		, q"{さいぼう}", q"{さいほう}", q"{平安}", q"{封筒}", q"{旧姓}", q"{よわよわしい}"
		, q"{味噌}", q"{ぼきん}", q"{くつじょく}", q"{絹糸}", q"{ちきゅう}", q"{かぜ}"
		, q"{半額}", q"{かんそく}", q"{ぶん}", q"{ふん}", q"{たれる}", q"{廉価}", q"{ずいぶん}"
		, q"{屈む}", q"{かんりょうてき}", q"{すんか}", q"{殻}", q"{擬装}", q"{うえる}"
		, q"{たいさ}", q"{あつい}", q"{げいひんかん}", q"{洋服}", q"{大丈夫}", q"{察知}"
		, q"{しえんする}", q"{仕方がない}", q"{徳川}", q"{ちらかす}", q"{こくふくする}"
		, q"{ぶそう}", q"{こうつう}", q"{逆}", q"{馬鹿馬鹿しい}", q"{切迫}", q"{不健康}"
		, q"{学院}", q"{都合}", q"{備える}", q"{へいがい}", q"{はじめて}", q"{輸出}"
		, q"{迷路}", q"{母}", q"{ひかくする}", q"{はなぢ}", q"{はなじ}", q"{むこう}"
		, q"{ねんじゅう}", q"{自宅}", q"{誘惑}", q"{ちえん}", q"{太る}", q"{ちかく}"
		, q"{奴ら}", q"{堀川}", q"{ちがい}", q"{たいこうする}", q"{運ぶ}", q"{独裁}"
		, q"{はっぽう}", q"{とちょう}", q"{先ず}", q"{はんそう}", q"{せいじょう}"
		, q"{しょうじょう}", q"{かんじる}", q"{体重}", q"{上手}", q"{原油}", q"{ざぜん}"
		, q"{既に}", q"{華やか}", q"{仕事}", q"{あらす}", q"{ゆるむ}", q"{きょうどう}"
		, q"{開閉}", q"{悲しみ}", q"{しゃこ}", q"{ねばり}", q"{ようい}", q"{おりめ}"
		, q"{伐採}", q"{牛乳}", q"{秘める}", q"{右翼}", q"{伝統}", q"{きひん}", q"{やさしい}"
		, q"{ほ}", q"{警官}", q"{左手}", q"{全日本}", q"{むぜい}", q"{ごふく}", q"{かいたく}"
		, q"{撃つ}", q"{しあとるし}", q"{シアトルし}", q"{ちょさくけん}", q"{じぎする}"
		, q"{譜面}", q"{貫く}", q"{約する}", q"{提案する}", q"{哀れむ}", q"{迷子}", q"{きょうき}"
		, q"{ごうけん}", q"{せんたくする}", q"{しゅしょう}", q"{江戸}", q"{狂う}"
		, q"{助手}", q"{新婚旅行}", q"{検査}", q"{色々}", q"{かぶしきしじょう}"
		, q"{桜色}", q"{普及}", q"{零す}", q"{ししょく}", q"{きゅうりょう}", q"{おんとう}"
		, q"{しょうゆ}", q"{没落}", q"{人性}", q"{けいかん}", q"{電話}", q"{お盆}", q"{きいろ}"
		, q"{やしなう}", q"{鍋}", q"{遮断}", q"{かわかす}", q"{寮生}", q"{面積}", q"{とうき}"
		, q"{ふくへい}", q"{ないしょばなし}", q"{不思議}", q"{この頃}", q"{おかね}"
		, q"{殺人者}", q"{かいぞく}", q"{歯を磨く}", q"{店}", q"{はなはだ}", q"{フランス語}"
		, q"{評価}", q"{九日}", q"{さいばん}", q"{推奨}", q"{出版}", q"{恨み}", q"{気持ちいい}"
		, q"{黙る}", q"{はりい}", q"{凝固}", q"{傑作}", q"{魅力}", q"{ぐん}", q"{右利き}"
		, q"{まほうつかい}", q"{復旧}", q"{かくじっけん}", q"{じきしょうそう}"
		, q"{あれる}", q"{きょうはんしゃ}", q"{たいりく}", q"{げんめつ}", q"{俵}"
		, q"{むらさきいろ}", q"{病床}", q"{米兵}", q"{まつり}", q"{塾生}", q"{親切}"
		, q"{めいがら}", q"{核実験}", q"{なおさら}", q"{魔術}", q"{がいよう}", q"{かんぜん}"
		, q"{せいかん}", q"{果樹}", q"{〜系}", q"{ほにゅうびん}", q"{じょうだん}"
		, q"{賢明}", q"{みなと}", q"{もはん}", q"{こうちょく}", q"{泳ぐ}", q"{重い}"
		, q"{日没}", q"{碁}", q"{かつ}", q"{どうけつ}", q"{近視}", q"{配慮}", q"{のき}"
		, q"{入江}", q"{とめる}", q"{暇}", q"{書き方}", q"{胃}", q"{りょうど}", q"{難しい}"
		, q"{浮世絵}", q"{喜劇}", q"{とうさん}", q"{はんだんする}", q"{こうせい}"
		, q"{大仏}", q"{揺さぶる}", q"{いじん}", q"{機嫌}", q"{黒板}", q"{えきびょう}"
		, q"{妥協する}", q"{つうやく}", q"{乗せる}", q"{けしき}", q"{床}", q"{品詞}"
		, q"{消す}", q"{金縛り}", q"{じゅうらい}", q"{急騰}", q"{十台}", q"{窓}", q"{雑音}"
		, q"{きょだい}", q"{鈍器}", q"{禍根}", q"{かたみち}", q"{山葵}", q"{渦巻き}"
		, q"{おととい}", q"{いっさくじつ}", q"{救急車}", q"{馬}", q"{ころす}", q"{ぼくし}"
		, q"{せっぷく}", q"{たて}", q"{おどろく}", q"{やさい}", q"{じぞう}", q"{こはん}"
		, q"{いく}", q"{自立}", q"{かっこう}", q"{脱税}", q"{始まる}", q"{学者}", q"{かい}"
		, q"{ひきさく}", q"{長唄}", q"{下着}", q"{よくげつ}", q"{休日}", q"{以下}", q"{廃墟}"
		, q"{部首}", q"{壊す}", q"{むく}", q"{委員}", q"{待合}", q"{頂く}", q"{よぼう}"
		, q"{壮年}", q"{斬殺}", q"{ちゅうもんする}", q"{じっかん}", q"{境}", q"{つく}"
		, q"{活用}", q"{ぶき}", q"{かいじゅう}", q"{人口}", q"{ぼうず}", q"{そあく}"
		, q"{むぼう}", q"{白菊}", q"{りゃくず}", q"{汚す}", q"{すいせん}", q"{あらそう}"
		, q"{高値}", q"{あう}", q"{せいしん}", q"{指紋}", q"{超〜}", q"{つまる}", q"{靖国神社}"
		, q"{とりあえず}", q"{とふ}", q"{たくす}", q"{じょうじゅん}", q"{羊毛}"
		, q"{浅い}", q"{閉じる}", q"{戦没}", q"{あっとうする}", q"{ひがい}", q"{量}"
		, q"{じょうき}", q"{誤用}", q"{ほうせき}", q"{つばさ}", q"{号}", q"{けいむしょ}"
		, q"{電源}", q"{勇気}", q"{ふかさ}", q"{はだか}", q"{たいやく}", q"{きょうしつ}"
		, q"{退く}", q"{さきまわり}", q"{こうおつ}", q"{無糖}", q"{ふさい}", q"{とくに}"
		, q"{めいし}", q"{みつ}", q"{ほんらい}", q"{まもる}", q"{あつかい}", q"{日欧}"
		, q"{天井}", q"{みさき}", q"{おきゃくさん}", q"{にんい}", q"{きょうかい}"
		, q"{いつ頃}", q"{かん}", q"{しきもう}", q"{特殊}", q"{同僚}", q"{血液}", q"{じぶん}"
		, q"{しょうかする}", q"{礎}", q"{みなもと}", q"{軒}", q"{ぶっきょう}", q"{しずむ}"
		, q"{たらす}", q"{憂い}", q"{総括}", q"{もうす}", q"{暴力}", q"{しばふ}", q"{いたずら}"
		, q"{米国}", q"{魔法}", q"{ことばつき}", q"{窒息}", q"{唄う}", q"{金}", q"{きもち}"
		, q"{誓い}", q"{どろ}", q"{話}", q"{奇襲}", q"{巡回}", q"{失う}", q"{隆起}", q"{投資}"
		, q"{芽}", q"{あくれい}", q"{奉仕}", q"{ひんきゃく}", q"{ひんかく}", q"{まつ}"
		, q"{せんりゅう}", q"{だいどころ}", q"{いう}", q"{こいぬ}", q"{なんべい}"
		, q"{さくにゅう}", q"{フランス人}", q"{きげんご}", q"{こくみん}", q"{交錯}"
		, q"{好き}", q"{一文字}", q"{ほうげん}", q"{地面}", q"{だくりゅう}", q"{見当たる}"
		, q"{浸す}", q"{あしくび}", q"{弱虫}", q"{送る}", q"{遺失}", q"{あおい}", q"{ちあん}"
		, q"{宜しく}", q"{あらあらしい}", q"{かおつき}", q"{かちゅう}", q"{がんばる}"
		, q"{芸者}", q"{陳列室}", q"{弥生}", q"{明治}", q"{めいしょ}", q"{ごじゅう}"
		, q"{済ます}", q"{無駄}", q"{終点}", q"{ぞくご}", q"{掛ける}", q"{ほうしゅう}"
		, q"{騎兵}", q"{液体}", q"{下さい}", q"{けいじばん}", q"{杏}", q"{合う}", q"{疾走}"
		, q"{りゅうこうご}", q"{出かける}", q"{はちまき}", q"{手作り}", q"{れつあく}"
		, q"{うんがいい}", q"{はちのす}", q"{ハチのす}", q"{色盲}", q"{形}", q"{希望する}"
		, q"{いちだい}", q"{春休み}", q"{縛る}", q"{金星}", q"{そんざい}", q"{防犯}"
		, q"{大尉}", q"{老齢}", q"{差し上げる}", q"{犠牲}", q"{にる}", q"{問題}", q"{双}"
		, q"{安泰}", q"{せんじょうざい}", q"{継承}", q"{かんしん}", q"{丼}", q"{ざんぴん}"
		, q"{そだてる}", q"{たつ}", q"{不可欠}", q"{報じる}", q"{抑制}", q"{けいけんしゃ}"
		, q"{きょうふ}", q"{せいぞう}", q"{きんく}", q"{おどりば}", q"{料理人}"
		, q"{いち}", q"{やぶれる}", q"{辞儀する}", q"{逮捕}", q"{色彩}", q"{妻}", q"{きづく}"
		, q"{はきだす}", q"{歯}", q"{憶測}", q"{墨}", q"{胃腸}", q"{駆け出す}", q"{栞}"
		, q"{ふゆかい}", q"{豪華}", q"{写す}", q"{むちつじょ}", q"{ごらく}", q"{可愛い}"
		, q"{ふじょ}", q"{でんせんびょう}", q"{いちにち}", q"{ついたち}", q"{彼女}"
		, q"{ひめさま}", q"{解説}", q"{すいがら}", q"{約}", q"{並}", q"{こっせつ}", q"{あらじお}"
		, q"{あらしお}", q"{書架}", q"{勝手}", q"{ぎせい}", q"{こくひん}", q"{嫌}", q"{博物館}"
		, q"{しんし}", q"{帳簿}", q"{初めに}", q"{空き瓶}", q"{ふてい}", q"{見返す}"
		, q"{ほんるいだ}", q"{さわ}", q"{悪気}", q"{ほんそう}", q"{謙虚}", q"{耐火}"
		, q"{ぼうりょく}", q"{潔い}", q"{けす}", q"{締まる}", q"{ちょうりょく}"
		, q"{のうし}", q"{暴走}", q"{華道}", q"{基盤}", q"{廃棄}", q"{かざる}", q"{くら}"
		, q"{氏名}", q"{がぞう}", q"{ふきつ}", q"{こうばん}", q"{かんさい}", q"{ひとごみ}"
		, q"{構える}", q"{たす}", q"{とむ}", q"{すみ}", q"{めいよ}", q"{帝}", q"{かんえん}"
		, q"{たび}", q"{模型}", q"{冬休み}", q"{誇張}", q"{何千}", q"{そうだん}", q"{しっぷう}"
		, q"{はやて}", q"{ほどう}", q"{敵}", q"{ひふ}", q"{火}", q"{壁}", q"{弱点}", q"{かいそく}"
		, q"{没頭}", q"{貴賓}", q"{さいげつ}", q"{盛り上がる}", q"{柱}", q"{ひはん}"
		, q"{輪郭}", q"{こづつみ}", q"{扇}", q"{性病}", q"{濃紺}", q"{舞踏}", q"{つぎ}"
		, q"{しめる}", q"{延長}", q"{しつ}", q"{ざせき}", q"{もくひょう}", q"{宝くじ}"
		, q"{はなみ}", q"{同音異義語}", q"{たいほう}", q"{慶弔}", q"{疎外}", q"{れいてん}"
		, q"{死ぬ}", q"{さと}", q"{煩い}", q"{携帯}", q"{かいせい}", q"{哺育}", q"{敬語}"
		, q"{とうとい}", q"{とうひょうする}", q"{頑張れ}", q"{れいせい}", q"{蛇}"
		, q"{いしゃりょう}", q"{アメリカ製}", q"{光年}", q"{社員}", q"{もよう}"
		, q"{ぎゃくしゅう}", q"{甲乙}", q"{ふくし}", q"{へいせい}", q"{てんのう}"
		, q"{年次}", q"{二巻}", q"{がくふ}", q"{しどう}", q"{よすみ}", q"{おおごえ}"
		, q"{かつぐ}", q"{地下街}", q"{はくじん}", q"{間接}", q"{せっとく}", q"{つうこん}"
		, q"{びんぼう}", q"{川底}", q"{こうえん}", q"{うごき}", q"{六}", q"{乾燥}", q"{洗濯屋}"
		, q"{なぞ}", q"{ふじん}", q"{対応}", q"{順序}", q"{首}", q"{むれる}", q"{移す}"
		, q"{分ける}", q"{しょうげき}", q"{ぎょうし}", q"{あまい}", q"{じょうきゅう}"
		, q"{たんれん}", q"{かけこむ}", q"{素材}", q"{受付}", q"{いままで}", q"{りょこう}"
		, q"{満潮}", q"{もちいる}", q"{あわれ}", q"{賀状}", q"{詰め込む}", q"{数える}"
		, q"{いっぱく}", q"{聴者}", q"{そうぐう}", q"{とうさく}", q"{思い遣り}"
		, q"{鋭い}", q"{貞操}", q"{原因}", q"{象牙}", q"{歌謡}", q"{会議}", q"{待遇}", q"{なかよし}"
		, q"{おなか}", q"{りりしい}", q"{おおちがい}", q"{賛成}", q"{奔放}", q"{非難}"
		, q"{ようじ}", q"{錯乱}", q"{じこ}", q"{前}", q"{累進}", q"{緊張する}", q"{ぎじゅく}"
		, q"{うち}", q"{悪霊}", q"{枢軸}", q"{子守歌}", q"{りゅうき}", q"{雄犬}", q"{みずいろ}"
		, q"{大間違い}", q"{走り回る}", q"{そんけい}", q"{しっぺい}", q"{てんし}"
		, q"{病院}", q"{残業}", q"{ひんしつ}", q"{けんしゅうせい}", q"{椅子}", q"{いさぎよい}"
		, q"{枕}", q"{墓}", q"{洗剤}", q"{たいがい}", q"{じしょ}", q"{副大統領}", q"{瞬く}"
		, q"{ふじ山}", q"{ふくせん}", q"{漬物}", q"{はんけん}", q"{愛する}", q"{ねんがん}"
		, q"{ねんじ}", q"{いきどおり}", q"{おとこのこ}", q"{仁}", q"{鶴}", q"{施設}"
		, q"{請ける}", q"{拒否}", q"{うみ}", q"{移譲}", q"{溶岩}", q"{性格}", q"{じしん}"
		, q"{裏口}", q"{ふたたび}", q"{猿真似}", q"{しめらせる}", q"{みき}", q"{つぐなう}"
		, q"{しんじゅく}", q"{こせき}", q"{よくあつ}", q"{懇談}", q"{指定する}"
		, q"{専門}", q"{一生}", q"{平壌}", q"{滝}", q"{じどうし}", q"{着く}", q"{泥棒}"
		, q"{構え}", q"{きじゅつ}", q"{しょひょう}", q"{貨幣}", q"{好奇心}", q"{皇太子妃}"
		, q"{かいほうする}", q"{主に}", q"{背広}", q"{ちんみ}", q"{よそく}", q"{なつかしい}"
		, q"{がんい}", q"{ちょうしゃ}", q"{無敵}", q"{所}", q"{だいがくいんせい}"
		, q"{左右}", q"{のむ}", q"{愛国心}", q"{桑原}", q"{どうはんする}", q"{いっかい}"
		, q"{なみだ}", q"{くまもとけん}", q"{主観的}", q"{普段}", q"{こころみる}"
		, q"{ふくぶくろ}", q"{てんぷく}", q"{せいめい}", q"{はなのあな}", q"{みぎて}"
		, q"{親子丼}", q"{反則}", q"{しゅうり}", q"{生える}", q"{けむし}", q"{すける}"
		, q"{のぞいて}", q"{和尚}", q"{えんちょうする}", q"{こうとう}", q"{なげすてる}"
		, q"{なまけもの}", q"{あい}", q"{きとく}", q"{審判}", q"{怖い}", q"{こたえる}"
		, q"{比較}", q"{ゆにゅう}", q"{曲}", q"{ちんもく}", q"{破産}", q"{迫る}", q"{あわ}"
		, q"{辛子}", q"{糸}", q"{早々}", q"{運命}", q"{錠}", q"{のうみん}", q"{夏}", q"{野獣}"
		, q"{試験}", q"{数詞}", q"{毎日}", q"{ぎせいしゃ}", q"{よくし}", q"{せん}", q"{おろし}"
		, q"{ゆれる}", q"{いし}", q"{える}", q"{ごらん}", q"{ばい}", q"{たい}", q"{拘置}"
		, q"{うらぎり}", q"{競艇}", q"{かぐ}", q"{悔しい}", q"{にゅうせき}", q"{ために}"
		, q"{ふうふ}", q"{ちょうせん}", q"{破壊}", q"{困難}", q"{まんえつ}", q"{移動}"
		, q"{しあつ}", q"{あまる}", q"{香り}", q"{いなか}", q"{通す}", q"{ほうき}", q"{栄誉}"
		, q"{ちめいてき}", q"{おとろえる}", q"{いしずえ}", q"{知り合い}", q"{貨物船}"
		, q"{酸っぱい}", q"{めいわくめーる}", q"{めいわくメール}", q"{とうほう}"
		, q"{てら}", q"{ぜんにほん}", q"{七つ}", q"{暗い}", q"{てのこう}", q"{しんぞう}"
		, q"{仰々しい}", q"{さんぎょう}", q"{公共}", q"{年額}", q"{かわさき}", q"{日刊}"
		, q"{ちょう}", q"{縮小}", q"{いっこ}", q"{不況}", q"{人柄}", q"{はい}", q"{原潜}"
		, q"{つみ}", q"{かんかつ}", q"{ぞうえん}", q"{雑費}", q"{おくれる}", q"{面倒臭い}"
		, q"{たおす}", q"{順番}", q"{しゅいん}", q"{動揺}", q"{乙}", q"{さわやか}", q"{とう}"
		, q"{望み}", q"{一人娘}", q"{かく}", q"{かど}", q"{ねんがじょう}", q"{ちょくせつ}"
		, q"{せんじょう}", q"{燃やす}", q"{ふかのう}", q"{買い物}", q"{風潮}", q"{沖縄}"
		, q"{いか}", q"{こうくうぼかん}", q"{かくれる}", q"{きぼうする}", q"{媒介}"
		, q"{れいぞうこ}", q"{冷酷}", q"{紛らわしい}", q"{せんげん}", q"{家具}"
		, q"{繁茂}", q"{なさけない}", q"{きずつく}", q"{空き缶}", q"{禅寺}", q"{大文字}"
		, q"{火葬}", q"{雰囲気}", q"{化粧}", q"{忍者}", q"{ふんしゃ}", q"{限る}", q"{ちゅうとはんぱ}"
		, q"{はずかしめる}", q"{何度}", q"{風船}", q"{こうぎょう}", q"{かくしゅう}"
		, q"{しりつ}", q"{こい}", q"{あがる}", q"{教える}", q"{程}", q"{忘れ物}", q"{襲撃}"
		, q"{かいころく}", q"{月刊}", q"{となえる}", q"{せんのう}", q"{ながさき}"
		, q"{げんまい}", q"{二つ}", q"{髪の毛}", q"{ろくおん}", q"{匿名}", q"{高瀬}"
		, q"{しききん}", q"{ふかぶん}", q"{怒鳴る}", q"{福祉}", q"{あさねぼう}"
		, q"{りゃくご}", q"{しざい}", q"{運}", q"{力}", q"{ねばる}", q"{つくる}", q"{わかめ}"
		, q"{おうしゅう}", q"{やすい}", q"{え}", q"{かせぎ}", q"{あらかじめ}", q"{かんせつ}"
		, q"{恥ずかしがる}", q"{焦がす}", q"{はいき}", q"{はかる}", q"{図説}", q"{どうめい}"
		, q"{ふねんゴミ}", q"{鎮める}", q"{しゅくん}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{千代子}", q"{静子}", q"{文子}", q"{キヨ}", q"{千代}", q"{ハル}", q"{キミ}", q"{久子}"
		, q"{ヨシ}", q"{清子}", q"{正子}", q"{貞子}", q"{八重子}", q"{きよ}", q"{フミ}"
		, q"{ハナ}", q"{和子}", q"{愛子}", q"{きみ}", q"{トミ}", q"{はる}", q"{マサ}", q"{美代子}"
		, q"{光子}", q"{幸子}", q"{照子}", q"{芳子}", q"{節子}", q"{昭子}", q"{信子}", q"{敏子}"
		, q"{典子}", q"{君子}", q"{弘子}", q"{洋子}", q"{美智子}", q"{京子}", q"{悦子}"
		, q"{栄子}", q"{孝子}", q"{良子}", q"{恵子}", q"{勝子}", q"{紀子}", q"{恵美子}"
		, q"{啓子}", q"{久美子}", q"{由美子}", q"{裕子}", q"{順子}", q"{智子}", q"{明美}"
		, q"{愛}", q"{恵}", q"{麻衣}", q"{麻美}", q"{香織}", q"{美穂}", q"{彩}", q"{沙織}", q"{愛美}"
		, q"{絵美}", q"{舞}", q"{恵美}", q"{陽子}", q"{成美}", q"{あゆみ}", q"{美香}", q"{理恵}"
		, q"{友美}", q"{智美}", q"{明日香}", q"{由佳}", q"{瞳}", q"{麻衣子}", q"{彩香}"
		, q"{真由美}", q"{純子}", q"{直美}", q"{優子}", q"{裕美}", q"{由美}", q"{直子}"
		, q"{めぐみ}", q"{美紀}", q"{浩子}", q"{ゆかり}", q"{さくら}", q"{美咲}", q"{陽菜}"
		, q"{葵}", q"{七海}", q"{美羽}", q"{結衣}", q"{美月}", q"{凛}", q"{美優}", q"{未来}"
		, q"{優奈}", q"{萌}", q"{優花}", q"{美桜}", q"{莉子}", q"{菜月}", q"{結愛}", q"{結菜}"
		, q"{花音}", q"{心優}", q"{真央}", q"{玲奈}", q"{ひなた}", q"{彩乃}", q"{彩花}"
		, q"{優衣}", q"{琴音}", q"{百花}", q"{遥}", q"{里奈}", q"{茜}", q"{千尋}", q"{楓}", q"{亜美}"
		, q"{佳奈}", q"{真由}", q"{桃子}", q"{菜々子}", q"{千夏}", q"{菜摘}", q"{奈々}"
		, q"{早紀}", q"{杏}", q"{陽葵}", q"{芽依}", q"{結月}", q"{咲良}", q"{凜}", q"{紬}", q"{心愛}"
		, q"{花}", q"{心春}", q"{愛莉}", q"{愛菜}", q"{桜}", q"{心結}", q"{美結}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{あゆみ}", q"{きみ}", q"{きよ}", q"{さくら}", q"{はる}", q"{ひなた}", q"{めぐみ}"
		, q"{ゆかり}", q"{キミ}", q"{キヨ}", q"{トミ}", q"{ハナ}", q"{ハル}", q"{フミ}"
		, q"{マサ}", q"{ヨシ}", q"{一男}", q"{一輝}", q"{一郎}", q"{七海}", q"{三郎}", q"{久子}"
		, q"{久美子}", q"{亜美}", q"{京子}", q"{亮}", q"{亮太}", q"{佳奈}", q"{信子}", q"{修}"
		, q"{健}", q"{健一}", q"{健太}", q"{健太郎}", q"{優}", q"{優太}", q"{優奈}", q"{優子}"
		, q"{優斗}", q"{優花}", q"{優衣}", q"{光子}", q"{八重子}", q"{典子}", q"{凛}", q"{凜}"
		, q"{剛}", q"{功}", q"{勇}", q"{勉}", q"{勝}", q"{勝利}", q"{勝子}", q"{勲}", q"{匠}", q"{千代}"
		, q"{千代子}", q"{千夏}", q"{千尋}", q"{博}", q"{博之}", q"{友美}", q"{君子}", q"{和也}"
		, q"{和夫}", q"{和子}", q"{和彦}", q"{咲良}", q"{哲也}", q"{啓子}", q"{大介}", q"{大和}"
		, q"{大地}", q"{大樹}", q"{大翔}", q"{大貴}", q"{大輔}", q"{大輝}", q"{大雅}", q"{太一}"
		, q"{太陽}", q"{奈々}", q"{孝子}", q"{学}", q"{実}", q"{崇}", q"{幸子}", q"{幸雄}", q"{康平}"
		, q"{弘}", q"{弘子}", q"{彩}", q"{彩乃}", q"{彩花}", q"{彩香}", q"{律}", q"{徹}", q"{心優}"
		, q"{心愛}", q"{心春}", q"{心結}", q"{恵}", q"{恵子}", q"{恵美}", q"{恵美子}", q"{悠}"
		, q"{悠人}", q"{悠太}", q"{悠希}", q"{悠斗}", q"{悠真}", q"{悠翔}", q"{悦子}", q"{愛}"
		, q"{愛子}", q"{愛美}", q"{愛莉}", q"{愛菜}", q"{成美}", q"{拓也}", q"{拓哉}", q"{拓海}"
		, q"{敏子}", q"{文子}", q"{新}", q"{早紀}", q"{昇}", q"{明}", q"{明日香}", q"{明美}"
		, q"{昭}", q"{昭一}", q"{昭三}", q"{昭二}", q"{昭子}", q"{智也}", q"{智子}", q"{智美}"
		, q"{朝陽}", q"{未来}", q"{杏}", q"{栄子}", q"{桃子}", q"{桜}", q"{楓}", q"{樹}", q"{正}"
		, q"{正一}", q"{正三}", q"{正二}", q"{正夫}", q"{正子}", q"{正治}", q"{正男}", q"{正雄}"
		, q"{武}", q"{武雄}", q"{歩夢}", q"{沙織}", q"{洋子}", q"{洋平}", q"{浩}", q"{浩一}"
		, q"{浩之}", q"{浩二}", q"{浩子}", q"{海斗}", q"{海翔}", q"{涼太}", q"{淳}", q"{清}"
		, q"{清子}", q"{湊}", q"{照子}", q"{玲奈}", q"{理恵}", q"{琴音}", q"{瑛太}", q"{由佳}"
		, q"{由美}", q"{由美子}", q"{百花}", q"{直人}", q"{直子}", q"{直樹}", q"{直美}"
		, q"{真央}", q"{真由}", q"{真由美}", q"{瞳}", q"{祐介}", q"{秀樹}", q"{秀雄}", q"{稔}"
		, q"{空}", q"{竜}", q"{竜也}", q"{節子}", q"{紀子}", q"{純子}", q"{紬}", q"{結愛}", q"{結月}"
		, q"{結翔}", q"{結菜}", q"{結衣}", q"{絵美}", q"{美代子}", q"{美優}", q"{美咲}"
		, q"{美智子}", q"{美月}", q"{美桜}", q"{美穂}", q"{美紀}", q"{美結}", q"{美羽}"
		, q"{美香}", q"{義雄}", q"{翔}", q"{翔太}", q"{翔平}", q"{翼}", q"{聡}", q"{舞}", q"{良子}"
		, q"{花}", q"{花音}", q"{芳子}", q"{芽依}", q"{英樹}", q"{茂}", q"{茜}", q"{莉子}", q"{菜々子}"
		, q"{菜摘}", q"{菜月}", q"{萌}", q"{葵}", q"{蒼}", q"{蒼空}", q"{蓮}", q"{裕子}", q"{裕美}"
		, q"{誠}", q"{豊}", q"{貞子}", q"{貴大}", q"{輝}", q"{辰男}", q"{辰雄}", q"{進}", q"{達也}"
		, q"{遥}", q"{里奈}", q"{陸}", q"{陸斗}", q"{陽向}", q"{陽大}", q"{陽太}", q"{陽子}"
		, q"{陽斗}", q"{陽翔}", q"{陽菜}", q"{陽葵}", q"{隆}", q"{雄大}", q"{雄太}", q"{静子}"
		, q"{順子}", q"{颯}", q"{颯太}", q"{颯真}", q"{香織}", q"{駿}", q"{麻美}", q"{麻衣}"
		, q"{麻衣子}", q"{龍生}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{佐藤}", q"{鈴木}", q"{高橋}", q"{田中}", q"{渡辺}", q"{伊藤}", q"{山本}", q"{中村}"
		, q"{小林}", q"{加藤}", q"{吉田}", q"{山田}", q"{佐々木}", q"{山口}", q"{斎藤}"
		, q"{松本}", q"{井上}", q"{木村}", q"{林}", q"{清水}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{正一}", q"{正二}", q"{正三}", q"{清}", q"{辰雄}", q"{三郎}", q"{昭二}", q"{昭三}"
		, q"{茂}", q"{勇}", q"{明}", q"{弘}", q"{勝}", q"{稔}", q"{博}", q"{隆}", q"{誠}", q"{浩}", q"{健一}"
		, q"{大輔}", q"{達也}", q"{翔太}", q"{拓也}", q"{健太}", q"{大輝}", q"{翔}", q"{駿}"
		, q"{蓮}", q"{大翔}", q"{陸}", q"{悠真}", q"{蒼}", q"{昭}", q"{実}", q"{進}", q"{和夫}", q"{修}"
		, q"{浩一}", q"{哲也}", q"{剛}", q"{大介}", q"{海斗}", q"{拓海}", q"{颯太}", q"{悠斗}"
		, q"{陽翔}", q"{湊}", q"{新}", q"{樹}", q"{正雄}", q"{勝利}", q"{豊}", q"{和彦}", q"{学}"
		, q"{直樹}", q"{健太郎}", q"{大和}", q"{陽向}", q"{瑛太}", q"{陽太}", q"{正}", q"{一郎}"
		, q"{勲}", q"{徹}", q"{浩二}", q"{亮}", q"{大樹}", q"{翼}", q"{義雄}", q"{昭一}", q"{功}"
		, q"{武}", q"{淳}", q"{和也}", q"{大地}", q"{匠}", q"{悠人}", q"{朝陽}", q"{律}", q"{武雄}"
		, q"{英樹}", q"{秀樹}", q"{祐介}", q"{雄太}", q"{翔平}", q"{大貴}", q"{太陽}", q"{颯}"
		, q"{陽斗}", q"{颯真}", q"{蒼空}", q"{優斗}", q"{正治}", q"{昇}", q"{竜也}", q"{聡}"
		, q"{貴大}", q"{直人}", q"{輝}", q"{優太}", q"{悠太}", q"{陸斗}", q"{太一}", q"{悠}"
		, q"{浩之}", q"{健}", q"{博之}", q"{亮太}", q"{一輝}", q"{空}", q"{陽大}", q"{正夫}"
		, q"{秀雄}", q"{幸雄}", q"{勉}", q"{崇}", q"{洋平}", q"{拓哉}", q"{涼太}", q"{大雅}"
		, q"{海翔}", q"{龍生}", q"{結翔}", q"{悠翔}", q"{葵}", q"{正男}", q"{辰男}", q"{一男}"
		, q"{優}", q"{雄大}", q"{康平}", q"{智也}", q"{竜}", q"{悠希}", q"{歩夢}" ];

		return choice(strs, this.rnd);
	}

}
