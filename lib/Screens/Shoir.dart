import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Person extends StatefulWidget {
  final String name;
  final String age;
  final List nick;

  const Person(this.name, this.age, this.nick);

  @override
  PersonState createState() => PersonState();
}

class PersonState extends State<Person> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Here you direct access using widget
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: Color(0xff274E51),
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: widget.nick[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_rounded),
            label: "Biografiya",
            backgroundColor: Color(0xff353535),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.pencil_ellipsis_rectangle,
              ),
              label: "She'rlari",
              backgroundColor: Color(0xff284B63)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    ));
  }
}

class Atoiy extends StatelessWidget {
  const Atoiy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Person("Atoiy", "XV asr", atoiy);
  }
}

class Alisher extends StatelessWidget {
  const Alisher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Person("Alisher Navoiy", "1441-1501", alisher);
  }
}

class Bobur extends StatelessWidget {
  const Bobur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Person("Bobur Mirzo", "1483-1530", bobur);
  }
}

class Abdulla extends StatelessWidget {
  const Abdulla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Person("Abdulla Oripov", "1941-2016", abdulla);
  }
}

class Lutfiy extends StatelessWidget {
  const Lutfiy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Person("Mavlono Lutfiy", "1366-1465", mavlono);
  }
}

List atoiy = [
  Poem(
    biografiya:
        "Atoyi XV asrda Balxda tug‘ilgan. Atoyining hayot yo‘li, shaxsiyati haqida ma’lumotlar juda kam. U asli Ahmad Yassaviylar nasabiga mansub bo‘lgan Ismoil Ota avlodlaridan. Samarqand, Buxoro va Balxda yashagan. Mirzo Ulug‘bek saroyida xizmat qilgan. Atoyi turkiy, fors va arab adabiyotlarini chuqur o‘rgangan. Turkiy va fors tillarida ijod qilgan. Taxallusini mashhur shayx ota-bobolariga ishora qilib, «Ato» («Ota») deb olgan. Hozirgi Qozog‘istonning Turbat qishlog‘ida unga nisbat berilgan qabr bor.",
    rasm1: Image.asset('images/atoyi1.jpg'),
    rasm2: Lottie.asset('images/Book2.json'),
    biografiya2:
        "Atoyi – lirik shoir. U o‘z she’rlarida nozik xayol, sinchkov nigoh, baland did egasi ekanligini namoyish etadi. Go‘zal, esda qoladigan o‘xshatishlar, kutilmagan mubolag‘ali tasvirlar yaratadi. Bir g‘azalida go‘zal yor xokisor oshiqning yuziga oyoq bosar ekan, oyog‘i og‘riydi, «yuzing buncha bo‘yradek dag‘al bo‘lmasa» deb nozlanadi.",
    biografiya3:
        "Masalan, «Begim» radifli she’rida u kipriklarini supurgi («jorub»), yuzini xokandoz qilishga tayyor, yor xizmatiga olinsa bo‘lgani. Hatto yor u yoqda tursin, uning farroshligiga – «qul»likka qabul qilsa ham o‘zini baxtli hisoblaydi. Atoyi yorni mana shunday yuksaklikka ko‘taradi. «Bo‘yra» – qamishdan sholchaga o‘xshatib to‘qiladigan bir ashyo. U gilam tagidan to‘shaladi, tom ustiga yopiladi. Yorning oyog‘i shu qadar nozik va go‘zalki, uning oldida oshiqning yuzi bo‘yraga o‘xshaydi. Ikkinchi bir she’rida esa, yorini sog‘ingan oshiqning ko‘zidan yosh emas, daryo oqayotgani, u kipriklaridan sol yasab, shu daryoda suzayotgani manzarasi chiziladi. Shoiryorini ulug‘lovchi, fidoyilikni ko‘rsatuvchi betakror satrlar bitadi.",
  ),
  Sherlar(
      type: "G'AZALLARI",
      sher1: "Jamoling vasfini…",
      kublet1: "Jamoling vasfini qildim chamanda,\nQizordi gul uyottin anjumanda.\n\nTamanno qilg‘ali la’lingni ko‘nglum,\nKishi bilmas anikim, qoldi qanda.\n\nChu jonimdin aziz jonona sensen,\nKerakmas jon manga sensiz badanda.",
      kublet2: "Manga ul dunyoda jannat ne hojat,\nEshiking tuprog‘i basdur kafanda.\n\nSolib borma meni, ey Yusufi husn,\nBukun Ya’qubtek bayt ul-hazanda.\n\nUzun sochingdin uzmasmen ko‘ngulni,\nAyog‘ing qayda bo‘lsa, boshim anda.\n\nTilar el mansabi oliy, valekin\nAtoyi sarvi ozodingg‘a banda.",
      sher2: "Ul sanamkim",
      kublet3: "Ul sanamkim, suv yaqosinda paritek o‘lturur,\nG‘oyati nozuklukindin suv bila yutsa bo‘lur.\n\nTo magarkim, Salsabil obina javlone qila,\nKeldi jannat ravzasindin obi kavsar sori hur.",
      kublet4: "Ul ilikkim suvdin orig‘tur, yumas oni suda,\nBalki suvni pok bo‘lsun deb ilik birla yuyur.\n\nEmdi bildim rost ermish, balki ko‘rdim ko‘z bila,\nUlki derlar, suv qizi goh-goh ko‘zga korinur.\n\nQoshlaring yosin Atoiy ko‘rgali husn ichra toq,\nSubhidam6 mehroblarda surayi Yosin o‘qur.",
      sher3: "Labing qonim to‘karga...",
      kublet5: "Labing qonim to‘karga tashnalabtur,\nDami Iso-yu o‘lturmak ajabtur.\n\nKo‘tarmak boshni mahbub eshikindin\nMuhabbat bobida tarki adabtur.",
      kublet6: "Meni o‘ltur, vale quvma qoshingdin\nKim, enchu qulni quvmoq besababtur.\n\nManga vasling qachon yetsun, bilurmen,\nVale oshiq ishi sa’y-u talabtur.\n\nAtoiy qulg‘a bir lutf aylamassen,\nXulagu o‘g‘li, muncha ne g‘azabtur?!"
  )
];

List alisher = [
  Poem(
      biografiya:
          "Alisher Navoiy (1441-1501) - buyuk shoir va mutafakkir, davlat arbobi. To‘liq ismi Nizomiddin Mir Alisher. Navoiy tahallusi ostida chig‘atoy (eski o‘zbek tili) hamda forsiyda (fors tilidagi asarlarida) ijod qilgan. G‘arbda chig‘atoy adabiyoti hisoblanmish o‘zbek adabiyotining eng yirik namoyondasi. Umuman olganda, butun turkiy xalqlari orasida u kabi yirik shaxs yo‘qdir.",
      rasm1: Image.asset('images/Alisher.jpg'),
      rasm2: Image.asset('images/Alisher2.jpg'),
      biografiya2:
          'Navoiy yoshligidan Xurosonning bo‘lajak hukmdori Husayn Boyqaro bilan (1469-1506) do‘st bo‘lgan. 10-12 yoshidan she’rlar yozishni boshlagan. Navoiyning zamondoshi bo‘lmish tarixchi Xondamir (1473(76) -1534) qoldirgan ma’lumotlarga ko‘ra, mashhur o‘zbek shoiri Lutfiy (1369-1465) qarigan chog‘larida bolakay Navoiy bilan ko‘rishadi va uning she’riy iqtidorini yuqori baholaydi',
      biografiya3:
          '\nHayoti davomida Navoiy  musulmon Sharqining turli mamlakatlarida bo‘ladi, o‘z davrining taniqli shaxslari bilan ko‘rishadi. O‘zining she’riy mahoratini oshiradi. 1464-1465 yillar Navoiy ijodining shinavandalari uning ilk she’riy to‘plamini (devonlari) tayyorlashadi. Bundan ko‘rinib turibdiki, o’sha davrlardayoq Navoiy mashhur shoir bo‘lib ulgurgan. 1469-yilgacha temuriylar o‘rtasidagi o‘zaro ichki nizolar tufayli Navoiy o‘zining ona shahri Hirotdan uzoqda yashashga majbur bo‘lgan. 1469-yil temuriy Husayn Boyqaro Hirotni egallaydi va Xuroson hukmdori bo‘ladi. Shu vaqtdan e’tiboran, Navoiy hayotining yangi bosqichi boshlanadi. U mamlakatning siyosiy hayotida faol ishtirok etadi. Shu yili Xuroson hukmdori Navoiyni davlat muhrdori etib tayinlaydi, 1472 yil vazir bo‘ladi. Egallagan mansabi orqali u mamlakatning madaniy va ilmiy taraqqiyotida katta yordam ko‘rsatadi. Katta mulk egasiga aylanadi.'),
  SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ruboiylari",
                  textScaleFactor: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Kuz birla qoshing yaxshi, qaboging yaxshi,\nYuz birla suzing yaxshi, dudoging yaxshi.\nEng birla menging yaxshi, saqoqing yaxshi,\nBir-bir ne deyin boshtin-ayoging yaxshi."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Gar oshiq esang mehru vafo qilma havas,\nDard istayu dafiga davo qilma havas\nHijronu visol mutlaqo qilma havas,\nDildoringdan gayri rizo qilma havas."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Zohid, senga — hur, manga — jonona kerak,\nJannat — sanga bulsun, manga — maykhona kerak.\nMaykhona aro soqiyu paymona kerak,\nPaymona necha bulsa tula, yona kerak."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Lalidin jonimga utlar yoqilur,\nQoshi qaddimni jafodin yo qilur;\nMen vafosi, vadasidin shodmen,\nUl vafo, bilmanki, qilmas, yo qilur."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Olmani otti nigorim, «ol», — dedi\n«Olma birla bu kungilni ol», — dedi\nSursam ersa olamsini rangini\n«Olma rangin ne surursan, ol», — dedi"),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Jonimdagi “jim” ikki dolingga fido,\nAndin sung “alif” toza niholingga fido,\nNuni dogi anbarin hilolingga fido,\nQolgon iki nuqta ikki kholingga fido."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Dedim: Zaqaning tutub saqogingni upay,\nKuz-qoshingga surtubon qabogingni upay,\nGuldek yuzing islabon dudogingni upay,\nYuq, yuq, yuq, agar desang, ayogingni upay."),
              )
            ],
          ),
        )
      ],
    ),
  )
];

List<Widget> bobur = [
  Poem(
      biografiya:
          "Zahriddin Muhammad Bobur — buyuk o‘zbek shoiri, mutafakkir, tarixshunos va davlat arbobi; boburiylar sulolasi va saltanati asoschisi. Boburning ilmiy mehnatlari orasida “Aruz haqida risola” (1523-25) alohida o‘rin egallaydi, unda sharqiy aruz vazni ko‘rib o‘tiladi. 1521-yil islomning beshta shariat ustuni bayon etilgan falsafiy-diniy “Mubayyin” asarini yozgan.",
      rasm1: Image.asset('images/Bobur2.jpg'),
      rasm2: Image.asset('images/Bobur.jpg'),
      biografiya2:
          "Zahriddin Muhammad Bobur 1483-yil 14 fevral kuni Andijonda tavallud topgan, Farg‘ona hukmdorining o‘g‘li, Amir Temurning evarasi. Bobur 1494 yil Farg‘ona hokimi bo‘ladi, 1526 yil Hindistonda markazlashgan boburiylar davlatiga (jahon tarixiga “buyuk mo‘g‘ullar saltanati” bo‘lib kirgan) asos solib, Hindiston inglizlar tomonidan bosib olinishiga qadar (1848) mavjud bo‘lgan. Agra shahrida 1530-yil 26 dekabr kuni vafot etgan.",
      biografiya3:
          "\nBoburning she’riy merosi ko‘pqirrali va boy. Nasriy asarlari (1519) “Qobul devoni”ga, so‘ngra (1529-30) “Hind devoni”ga jamlangan. U sharq nasriy janrlarida 10 dan ziyod she’rlar yozgan. She’rlarida uning shaxsiy hayoti, atrof-muhiti va tarixiy hodisalar aks etilgan. Bobur she’riyatining asosini ishqiy-nasriy mazmundagi she’rlar tashkil etadi. Shoir san’ati o‘ziga xos adabiy uslub va mahorat, turkiy tilning ifodaliroq vositalari orqali tasvirlanadi."),
  SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ruboiylari",
                  textScaleFactor: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Har kimki vafo qilsa vafo topgusidur,\nHar kimki jafo qilsa jafo topgusidur,\nYahshi kishi yomonlig kurmagay hargiz,\nHa kimki yomon bulsa jazo topgusidur!"),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Taqdir yuki boshimga balolig buldi,\nHar neniki ayladim hatolig buldi,\nOz yurtni quyib Hind sori yuzlandim,\nYO Rab netayin, bu ne yuz qarolig buldi."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Jondin seni kup sevarmen ey umri aziz,\nSondin seni kup sevarmen ey umri aziz,\nHar neniki sevmak ondin ortiq ulmaz,\nOndin seni kup sevarmen ey umri aziz."),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Tishing dur, labing marjon, khading gul, khating rayhon,\nYuzung hur, soching anbar, suzung mul, menging meynon.\nMeynon menging, suzing mul, anbar soching, yuzung hur,\nRayhon khating, khading gul, marjon labing, tishing dur.\nTafohur kuzum, kunglum qilurlar magar bordur,"),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Kuzunga kungul vola, yuzunga kuzum hayron.\nHayron kuzum yuzunga, vola kungul kuzunga,\nBordur magar, qilurlar kunglum, kuzum tafohur.\nTafakkur necha qilsam topilmas sening misling,"),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Pariydek seni kurdum emassen magar inson.\nInson magar emassen, kurdum seni pariydek,\nMisling sening topilmas qilsam necha tafakkur.\nBalodur manga hajring, davodur manga vasling,"),
              ),
              Text("***"),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Itobing manga ofat, hadising manga darmon.\nDarmon manga hadising, ofat manga itobing,\nVasling manda davodur, hajring manga balodur.\nChu Bobur sanga quldur, nazar qil anga zinhor,"),
              )
            ],
          ),
        )
      ],
    ),
  )
];

List<Widget> abdulla = [
  Poem(
      biografiya:
          "Abdulla Oripov - o‘zbek shoiri va jamoat arbobi. Abdulla Oripov ijodi zamonaviy o‘zbek adabiyotining yorqin sahifalaridan birini nomoyon etadi. Uning she’rlarida insonning chuqur ruhiy dunyosi va xalq tarixi tahlil etiladi. 1998 yil Abdulla Oripov “O‘zbekiston qahramoni” unvoniga musharraf bo‘lgan. Abdulla Oripov 1941 yil Qashqadaryo viloyati Kasonsoy tumani Nekuz qishlog‘ida tug‘ilgan. Uning otasi Orifboy Ubaydulla o‘g‘li mahalliy kolxoz vakili bo‘lgan.",
      rasm1: Image.asset('images/abdulla.jpg'),
      rasm2: Image.asset('images/abdulla2.jpg'),
      biografiya2:
          "Oilada sakkiz nafar farzand — to‘rt o‘g‘il, to‘rt qiz bo‘lishgan, Abdulla Oripov o‘g‘illardan eng kenjasi bo‘lgan. 1958-yil o‘rta maktabni oltin medal bilan tamomlab, Abdulla Oripov tahsilni O‘zbekiston Davlat universiteti o‘zbek filologiyasi fakultetining jurnalistika bo‘limida davom ettiradi.",
      biografiya3:
          "\n1963-yil universitetni a’lo baholar bilan yakunlab, “Yosh gvardiyachi” tahririyatida muharrir bo‘lib ishlaydi; (1967—1974) G‘ofur G‘ulom nomidagi adabiyot va san’at tahririyati muharriri va bosh muharriri; (1974—1976) “Sharq yulduzi” jurnalida bo‘lim rahbari. 1972-yildan 1982-yilgacha Abdulla Oripov O‘zbekiston yozuvchilar uyushmasida adabiy maslahatchi bo‘lib faoliyat yuritadi; (1982—1983) Yozuvchilar uyushmasining Toshkent viloyati bo‘linmasi kotibi; (1983—1985) “Gulxan” jurnali bosh muharriri; 1985 yildan kotib, 1996-yildan 2009-yilgacha O‘zbekiston yozuvchilar uyushmasi raisi. 1988-yil O‘zbekiston mualliflik huquqini himoya qilish qo‘mitasi raisi etib tayinlangan."),
  Sherlar(
    type: "SHE'RLAR",
    sher1: "Sog'inch she'ri",
    kublet1:
        "Seni sog‘insinlar,\nSen ko‘p sog‘inding,\nChora yo‘q baribir ikki holda ham.\nDaryodek tosharding, ko‘l kabi tinding,\nFaqat ruhing qoldi sen bilan hamdam.",
    kublet2:
        "Afsus, sog‘inchning ham bordir adog‘i,\nKeyin unutilish, bari abasdir.\nSog‘ingan odamning ko‘nglida dog‘i,\nSog‘intirganga ham oson emasdir.",
    sher2: "Oq ot",
    kublet3:
        "Navoiy «Xamsa»ni tugatdi yozib,\nQutlashga yig‘ildi arkoni davlat.\nBayqaro ayricha hurmat ko‘rgazib,\nOq otin minishga ayladi da’vat.",
    kublet4:
        "Lekin uzr dedi shoiri davron,\nBalki bu holni u kibr deb bildi.\nShunda sekingina lutf etdi Sulton:\n– Buni otning o‘zi iltimos qildi…",
    sher3: "Vafo",
    kublet5:
        "“Menga vafo qimagach sanam\nXotinlarga hurmatim nechun?”\nShu baytlarni yozayotgan dam,\nOsonmidi Lermontov uchun.",
    kublet6:
        "Endi misga aylangan oltin,\nVafo so‘zin anglashar arang.\nLermontovni ayblashdan oldin,\nHayotga ham qayrilib qarang.",
  )
];

List<Widget> mavlono = [
  Poem(
      biografiya:
          "Lutfiy — temuriylari Xurosonining o‘rta asrlar shoiri, chig‘atoy tilida (eski o‘zbek tilida) ijod qilgan. Deyarli, butun umrini Hirotda o‘tkazgan. Alisher Navoiy Lutfiyni “o‘z davrining notiqlar shohi, fors va turkiy tilini egallashda tengsiz”, deya ta’riflagan. Lutfiy 1367-yil Hirot yaqinidagi Dehikanor qishlog‘ida dunyoga kelgan. Samarqandda - Temuriyning o‘g‘li Shohruh saroyida yashab, xizmat qilgan. Shohruhning o‘g‘li Mirzo Ulug‘bek - buyuk olim va Samarqandning bo‘lajak hukmdori bilan munosabatlari juda yaqin bo‘lgan.",
      rasm1: Image.asset('images/Lutfiy2.jpg'),
      rasm2: Image.asset('images/Lutfiy1.jpg'),
      biografiya2:
          "Lutfiy dunyoviy ilmlarni va adabiyotni juda erta o‘rgangan. O‘z davrinnig boshqa shoirlari kabi, Lutfiy ham nafaqat forsiy, balki turkiy tilida ham ijod qilgan. Unga Kemal Xo‘jandiy va Hofizlar katta e’tibor qaratishgan. Yoshligida dunyoviy ilmlarni o‘rganadi, keyinroq, so‘fiylik bilan qiziqib qoladi, zohidiy turmush tarzini olib borgan.",
      biografiya3:
          " Sulton Shohruhning (1405-1447-yillar hukmronlik qilgan) buyurtmasiga asosan, “Zafarnoma”da Temurning tarjimai holini she’riy ko‘rinishda bayon etgan. Doston tugallanmagan, qo‘lyozma hamda dostonning matni saqlanib qolmagan. \n   Bizning davrimizgacha “Gul va Navro‘z” devon va dostoni (1411-1412) saqlanib qolgan. Doston asosi ertakona mavzuda bo‘lib, baxtli yakun topadi. Doston bir nechta katta bo‘lmagan bo‘limlardan iborat, uning umumiy hajmi 595 baytni tashkil etadi. Bu kabi dostonlarga xos, an’anaviy muqaddima, ya’ni, Alloh, payg‘ambarimiz (s.a.v.), xon madh etilganidan so‘ng, mamlakat podshosi Navshad Farruh uzoq kutilgan farzand - o‘g‘illik bo‘lib, uni muqaddas oy - Navro‘z sharafiga nomlashadi."),
  Sherlar(
    type: "G'AZALLARI",
    sher1: "",
    kublet1:
        " Ko’zung qorasi fitna,vale oqi balodur, \nJonlar oladur,vah, ne balo ko’zi qarodur? \n\nKo’z ustida jon olg’uvchidur xoliyu qoshi,\nBir-birga bari fitna qotilg’an ne balodur?",
    kublet2:
        " Hamdardtur aytay anga holimkim,inong’ay,\nGulshandin o’shul bulbuli miskin,ki judodur. \n\nBosh o’ynayinu jon berayin vasl uchun – ayttim,\nXush-xush kulub aytur mangakim:Yaxshi bahodur!\n\n Ko’p qilma aning javridin,ey Lutfiy,shikoyat, \n Kim,husn elining shevasi payvasta jafodur.",
    sher2: "",
    kublet3:
        "Jonim chiqadur dard ila,jononima ayting, \nMen xasta gado holini sultonima ayting. \n\nO’rtanmagu ko’z yoshiyu o’lmakturur ishim, \nBu qissani ul sham’i shabistonima ayting.",
    kublet4:
        "Qat-qat yuragim bog’ladi qon g’uncha meng’izlik, \nBu dardi dilimni guli xandonima ayting.\n\nQon yoshim erur yux uza yulduz kabi sonsiz,\nUl ko’zlari cho’lpon,mahi tobonima ayting.\n\nLutfiyi dilafkor tilar hajr eliding dod,\nAhvolini ul begimau xonima ayting.",
    sher3: "",
    kublet5:
        "Meni shaydo qiladurg’on bu ko’nguldur,bu ko’ngul,\nXoru rasvo qiladurg’on bu ko’nguldur,bu ko’ngul.\n\nO’qdayin qomatimizni qora qoshlig’lar uchun,\nMuttasil yo qiladurg’on bu ko’nguldur,bu ko’ngul.\n\nMeni yozg’urma “sevar” deb,ki mening haddim emas,\nUl tamanno qiladurg’on bu ko’nguldur,bu ko’ngul.",
    kublet6:
        "Borma derlar eshiki sori damo-dam,netayin,\nKo’p taqozo qiladurg’on bu ko’nguldur,bu ko’ngul.\n\nQora mo’yin havasi birla qorong’u kechada,\nJonni savdo qiladurg’on bu ko’nguldur,bu ko’ngul.\n\nDushmanu do’st orasinda meni g’ofilni mudom\nBe saru po qiladurg’on bu ko’nguldur,bu ko’ngul.\n\nO’zgadin ko’rma,ki ko’zung yoshini, ey Lutfiy,\nAyni daryo qiladurg’on bu ko’nguldur,bu ko’ngul.",
  )
];

class Poem extends StatelessWidget {
  Poem(
      {Key? key,
      required this.biografiya,
      required this.rasm1,
      required this.rasm2,
      required this.biografiya2,
      required this.biografiya3})
      : super(key: key);
  String biografiya2;
  String biografiya;
  String biografiya3;
  Widget rasm1;
  Widget rasm2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: AutoSizeText(biografiya),
                width: MediaQuery.of(context).size.width * 0.59,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.39, child: rasm1)
            ],
          ),
          Row(
            children: [
              Container(
                child: rasm2,
                width: MediaQuery.of(context).size.width * 0.39,
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: AutoSizeText(biografiya2),
                width: MediaQuery.of(context).size.width * 0.59,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: AutoSizeText(biografiya3),
            width: MediaQuery.of(context).size.width * 0.95,
          ),
        ],
      ),
    );
  }
}

class Sherlar extends StatelessWidget {
  Sherlar(
      {Key? key,
      required this.type,
      required this.sher1,
      required this.kublet1,
      required this.kublet2,
      required this.sher2,
      required this.kublet3,
      required this.kublet4,
      required this.sher3,
      required this.kublet5,
      required this.kublet6})
      : super(key: key);
  String type;
  String sher1;
  String kublet1;
  String kublet2;
  String sher2;
  String kublet3;
  String kublet4;
  String sher3;
  String kublet5;
  String kublet6;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(
              type,
              textScaleFactor: 2,
            ),
          ),
          sher(sher1: sher1, kublet1: kublet1, kublet2: kublet2),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "***",
                textScaleFactor: 1.4,
              ),
            ),
          ),
          sher(sher1: sher2, kublet1: kublet3, kublet2: kublet4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "***",
                textScaleFactor: 1.4,
              ),
            ),
          ),
          sher(sher1: sher3, kublet1: kublet5, kublet2: kublet6)
        ],
      ),
    );
  }
}

class sher extends StatelessWidget {
  sher(
      {Key? key,
      required this.sher1,
      required this.kublet1,
      required this.kublet2})
      : super(key: key);
  String sher1;
  String kublet1;
  String kublet2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  sher1,
                  textScaleFactor: 1.3,
                ))),
        Row(
          children: [
            Container(
                padding: EdgeInsets.all(10), child: AutoSizeText(kublet1)),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Spacer(),
            Container(padding: EdgeInsets.all(8), child: Text(kublet2)),
          ],
        ),
      ],
    );
  }
}
