<section class="sport">
    <div class="container sport__container">
        <h2 class="title title__section sport__title lang-fa" dir="auto">
            {$textLang = [
                "ru" => "Чемпионат Корениума",
                "tr" => "Kök Şampiyonası",
                "fi" => "Juuren mestaruus",
                "de" => "Rodmesterskab",
                "zh" => "根冠军",
                "sv" => "Root Championship",
                "lv" => "Sakņu čempionāts",
                "fa" => "قهرمانی کورنیوم",
                "en" => "Korenium Championship"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </h2>
        <h2 class="title title__section sport__title-2 lang-fa" dir="auto">
            {$textLang = [
                "ru" => "Поле для гольфа",
                "tr" => "Golf kursu",
                "fi" => "Golf-kurssi",
                "de" => "Golfbane",
                "zh" => "高尔夫球场",
                "sv" => "Golfbana",
                "lv" => "Golfa laukums",
                "fa" => "زمین گلف",
                "en" => "Golf Course"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </h2>
        <div class="sport__wrap">
            <div class="sport__left-img">
                <picture>
                    <source srcset="/img/country/country-sport_1.webp" media="(max-width: 420px)" type="image/webp" />
                    <source srcset="/img/country/country-sport_1.jpg" media="(max-width: 420px)" />
                    <source srcset="/img/country/country-sport_1@2x.webp" type="image/webp" />
                    <img class="image image__fit image__fit_cover sport__image"
                        src="/img/country/country-sport_1@2x.jpg"
                        alt="Sport"
                        width="550"
                        height="480"
                        loading="lazy"
                        decoding="async"/>
                </picture>
            </div>
            <div class="sport__inner">
                <h2 class="title title__section sport__right-title lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Поле для гольфа",
                        "tr" => "Golf kursu",
                        "fi" => "Golf-kurssi",
                        "de" => "Golfbane",
                        "zh" => "高尔夫球场",
                        "sv" => "Golfbana",
                        "lv" => "Golfa laukums",
                        "fa" => "زمین گلف",
                        "en" => "Golf Course"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </h2>
                <p class="sport__right-text lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Престижный загородный гольф-клуб Korenium расположен на побережье у подножия горы Пяти пальцев в Эсентепе и гордится тем, что является первым 18-луночным полем для гольфа на Северном Кипре. Созданный из естественного леса зонтичных сосен и оливковых деревьев, он предлагает потрясающий вид на Средиземное море с одной стороны и знаменитую гору Пяти пальцев с другой - незабываемые впечатления, которые вы никогда не забудете.",
                        "tr" => "Prestijli Korenium Golf & Country Club, Esentepe'de Beş Parmak Dağı'nın eteğinde sahilde yer almaktadır ve Kuzey Kıbrıs'taki ilk 18 delikli golf sahası olmaktan gurur duymaktadır. Şemsiye çamları ve zeytin ağaçlarından oluşan doğal bir ormandan yaratılmış, bir yanda Akdeniz'in, diğer yanda ünlü Beş Parmak Dağı'nın muhteşem manzarasını sunar - asla unutamayacağınız unutulmaz bir deneyim.",
                        "fi" => "Arvostettu Korenium Golf & Country Club sijaitsee rannikolla Five Finger Mountainin juurella Esentepessä ja on ylpeä siitä, että se on ensimmäinen 18-reikäinen golfkenttä Pohjois-Kyproksella. Se on luotu sateenvarjomäntyjen ja oliivipuiden luonnollisesta metsästä, ja se tarjoaa upeat näkymät Välimerelle toisella puolella ja kuuluisalle.Five Finger Mountain -vuorelle toisaalta - unohtumaton kokemus, jota et koskaan unohda.",
                        "de" => "Den prestigefyldte Korenium Golf & Country Club ligger ved kysten ved foden af Five Finger Mountain i Esentepe og er stolt af at være den første 18-hullers golfbane i Nordcypern. Skabt af en naturlig skov af paraplyfyr og oliventræer, tilbyder den en fantastisk udsigt over Middelhavet på den ene side og det berømte.Five Finger Mountain på den anden - en uforglemmelig oplevelse, du aldrig vil glemme.",
                        "zh" => "著名的 Korenium 高尔夫乡村俱乐部位于埃森特佩五指山脚下的海岸上，并以成为北塞浦路斯第一个 18 洞高尔夫球场而自豪。 它由伞形松树和橄榄树的天然森林创建而成，一侧享有地中海的壮丽景色，另一侧享有著名的五指山 - 一次您永远不会忘记的难忘体验。",
                        "sv" => "Den prestigefyllda Korenium Golf & Country Club ligger vid kusten vid foten av Five Finger Mountain i Esentepe och är stolt över att vara den första 18-håls golfbanan på norra Cypern. Skapat av en naturlig skog av paraplytaller och olivträd, erbjuder den enastående utsikt över Medelhavet på ena sidan och det berömda.Five Finger Mountain på den andra - en oförglömlig upplevelse du aldrig kommer att glömma.",
                        "lv" => "Prestižais golfa un lauku klubs Korenium atrodas piekrastē, Piecu pirkstu kalna pakājē Esentepē un lepojas ar to, ka ir pirmais 18 bedrīšu golfa laukums Ziemeļkiprā. Tas ir izveidots no dabiska lietussargu priežu un olīvkoku meža, un no tā vienā pusē paveras brīnišķīgs skats uz Vidusjūru un no otras uz slaveno Piecu pirkstu kalnu — neaizmirstama pieredze, ko nekad neaizmirsīsit.",
                        "fa" => "باشگاه معتبر کرهنیوم گلف و کانتری در ساحل در پای کوه پنج انگشت در Esentepe واقع شده است و به خود افتخار می کند که اولین زمین گلف 18 سوراخ در قبرس شمالی است. این مکان که از جنگلی طبیعی از کاج های چتر و درختان زیتون ایجاد شده است، مناظر خیره کننده ای از دریای مدیترانه از یک طرف و کوه معروف پنج انگشتی از سوی دیگر ارائه می دهد - تجربه ای فراموش نشدنی که هرگز فراموش نخواهید کرد.",
                        "en" => "The prestigious Korenium Golf & Country Club is situated on the coast at the foot of the Five Finger Mountain in Esentepe and prides itself on being the first 18-hole golf course in North Cyprus. Created from a natural forest of umbrella pines and olive trees, it offers stunning views of the Mediterranean Sea on one side and the famous.Five Finger Mountain on the other - an unforgettable experience you will never forget."
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </p>
            </div>
        </div>
    </div>
</section>
