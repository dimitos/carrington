{$heroData=[
    [
        "image" => "/img/images/hero_1.jpg",
        "textLang" => [
            "ru" => "Развитие недвижимости на Северном Кипре - Роскошные виллы и апартаменты на Кипре",
            "tr" => "Kuzey Kıbrıs Emlak Geliştirme - Lüks Villa ve Apartlar Kıbrıs",
            "fi" => "Pohjois-Kypros Property Development - Luxury Villa and Apartments Kypros",
            "de" => "Nordcypern Ejendomsudvikling - Luksus villa og lejligheder Cypern",
            "zh" => "北塞浦路斯房地产开发 - 塞浦路斯豪华别墅和公寓",
            "sv" => "Norra Cypern Fastighetsutveckling - Lyxvilla och lägenheter Cypern",
            "lv" => "Ziemeļkipras īpašuma attīstība - Luksusa villa un dzīvokļi Kipra",
            "fa" => "توسعه املاک قبرس شمالی - ویلا و آپارتمان لوکس قبرس",
            "en" => "North Cyprus Property Development - Luxury Villa and Apartments Cyprus"
        ]
    ],
    [
        "image" => "/img/images/hero_2.jpg",
        "textLang" => [
            "ru" => "Развитие недвижимости на Северном Кипре - Роскошные виллы и апартаменты на Кипре",
            "tr" => "Kuzey Kıbrıs Emlak Geliştirme - Lüks Villa ve Apartlar Kıbrıs",
            "fi" => "Pohjois-Kypros Property Development - Luxury Villa and Apartments Kypros",
            "de" => "Nordcypern Ejendomsudvikling - Luksus villa og lejligheder Cypern",
            "zh" => "北塞浦路斯房地产开发 - 塞浦路斯豪华别墅和公寓",
            "sv" => "Norra Cypern Fastighetsutveckling - Lyxvilla och lägenheter Cypern",
            "lv" => "Ziemeļkipras īpašuma attīstība - Luksusa villa un dzīvokļi Kipra",
            "fa" => "توسعه املاک قبرس شمالی - ویلا و آپارتمان لوکس قبرس",
            "en" => "North Cyprus Property Development - Luxury Villa and Apartments Cyprus"
        ]
    ],
    [
        "image" => "/img/images/hero_3.jpg",
        "textLang" => [
            "ru" => "Развитие недвижимости на Северном Кипре - Роскошные виллы и апартаменты на Кипре",
            "tr" => "Kuzey Kıbrıs Emlak Geliştirme - Lüks Villa ve Apartlar Kıbrıs",
            "fi" => "Pohjois-Kypros Property Development - Luxury Villa and Apartments Kypros",
            "de" => "Nordcypern Ejendomsudvikling - Luksus villa og lejligheder Cypern",
            "zh" => "北塞浦路斯房地产开发 - 塞浦路斯豪华别墅和公寓",
            "sv" => "Norra Cypern Fastighetsutveckling - Lyxvilla och lägenheter Cypern",
            "lv" => "Ziemeļkipras īpašuma attīstība - Luksusa villa un dzīvokļi Kipra",
            "fa" => "توسعه املاک قبرس شمالی - ویلا و آپارتمان لوکس قبرس",
            "en" => "North Cyprus Property Development - Luxury Villa and Apartments Cyprus"
        ]
    ]
]}

<section class="hero unselectable">
    <div class="hero__slider">
        <div class="swiper hero__swiper">
            <div class="swiper-wrapper hero__swiper-wrapper">
                {foreach $heroData as $item}
                    {$pathImage = mb_substr($item.image, 0, -4)}
                    <div class="swiper-slide hero__swiper-slide">
                        <div class="hero__swiper-slide-wrap">
                            <picture>
                                <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                <img class="hero__swiper-slide-image image image__fit image__fit_cover"
                                    src="{$pathImage}@2x.jpg"
                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.textLang}"
                                    width="1920"
                                    height="634"
                                    decoding="async"/>
                            </picture>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    <div class="hero__swiper-slide-content container">
        <div class="hero__inner">
            <h2 class="title hero__title" dir="auto">
                {$textLang = [
                    "ru" => "Продажа элитной недвижимости на Северном Кипре",
                    "tr" => "Kuzey Kıbrıs'ta satılık lüks mülk",
                    "fi" => "Ylellinen kiinteistö myytävänä Pohjois-Kyproksella",
                    "de" => "Luxusimmobilie zum Verkauf in Nordzypern",
                    "zh" => "北塞浦路斯待售豪宅",
                    "sv" => "Lyxig fastighet till salu i norra Cypern",
                    "lv" => "Tiek pārdots grezns īpašums Ziemeļkiprā",
                    "fa" => "املاک لوکس برای فروش در قبرس شمالی",
                    "en" => "Luxury property for sale in North Cyprus"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <div class="hero__taglines unselectable">
                <ul class="hero__web-ticker">
                    <li class="hero__taglines-item no-wrap" dir="auto">
                        {$textLang = [
                            "ru" => "пентхаусы с панорамным видом",
                            "tr" => "Kesintisiz Manzaralı Penthouse Daireler",
                            "fi" => "kattohuoneistot esteettömällä näköalalla",
                            "de" => "penthouselejligheder med uforstyrret udsigt",
                            "zh" => "一览无余的顶层公寓",
                            "sv" => "takvåningar med oavbruten utsikt",
                            "lv" => "penthausi ar nepārtrauktu skatu",
                            "fa" => "پنت هاوس با دید بی وقفه",
                            "en" => "penthouses with Uninterrupted Views"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="hero__taglines-item no-wrap" dir="auto">
                        {$textLang = [
                            "ru" => "Апартаменты на берегу моря",
                            "tr" => "Denize sıfır daireler",
                            "fi" => "Rantahuoneistot",
                            "de" => "Lejligheder ved stranden",
                            "zh" => "海滨公寓",
                            "sv" => "Lägenheter vid stranden",
                            "lv" => "Dzīvokļi pie pludmales",
                            "fa" => "آپارتمان های ساحلی",
                            "en" => "Beachfront apartments"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="hero__taglines-item no-wrap" dir="auto">
                        {$textLang = [
                            "ru" => "Представительские люксы",
                            "tr" => "Executive Süitler",
                            "fi" => "Executive-sviitit",
                            "de" => "Executive suiter",
                            "zh" => "行政套房",
                            "sv" => "Executive-sviter",
                            "lv" => "'Executive' klases 'suite' numuri",
                            "fa" => "سوئیت های اجرایی",
                            "en" => "Executive Suites"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="hero__taglines-item no-wrap" dir="auto">
                        {$textLang = [
                            "ru" => "качественные виллы",
                            "tr" => "kaliteli villalar",
                            "fi" => "laadukkaita huviloita",
                            "de" => "kvalitets villaer",
                            "zh" => "品质别墅",
                            "sv" => "kvalitetsvillor",
                            "lv" => "kvalitatīvas villas",
                            "fa" => "ویلاهای با کیفیت",
                            "en" => "quality villas"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="hero__taglines-item no-wrap" dir="auto">
                        {$textLang = [
                            "ru" => "Эксклюзивное хорошее расположение",
                            "tr" => "Özel iyi konum",
                            "fi" => "Ainutlaatuinen hyvä sijainti",
                            "de" => "Eksklusiv god beliggenhed",
                            "zh" => "独家好位置",
                            "sv" => "Exklusivt bra läge",
                            "lv" => "Ekskluzīvi laba atrašanās vieta",
                            "fa" => "موقعیت مکانی خوب منحصر به فرد",
                            "en" => "Exclusive good location"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                </ul>
                <span class="tickeroverlay-left">&nbsp;</span>
                {* <span class="tickeroverlay-right">&nbsp;</span> *}
            </div>
            <a class="btn btn-default hero__swiper-slide-btn" href="projects" dir="auto">
                {$textLang = [
                    "ru" => "Посмотреть все проекты",
                    "tr" => "Tüm projeleri görüntüle",
                    "fi" => "Katso kaikki projektit",
                    "de" => "Se alle projekter",
                    "zh" => "查看所有项目",
                    "sv" => "Se alla projekt",
                    "lv" => "Skatīt visus projektus",
                    "fa" => "مشاهده تمامی پروژه ها",
                    "en" => "View all projects"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </a>
        </div>
        <div class="hero__footer">
            <p class="hero__footer-text" dir="auto">
                {$textLang = [
                    "ru" => "Мы превращаем идеи в успешные проекты",
                    "tr" => "Fikirleri başarılı projelere dönüştürüyoruz",
                    "fi" => "Muutamme ideat onnistuneiksi projekteiksi",
                    "de" => "Vi omsætter ideer til succesfulde projekter",
                    "zh" => "我们将创意转化为成功的项目",
                    "sv" => "Vi förvandlar idéer till framgångsrika projekt",
                    "lv" => "Mēs pārvēršam idejas veiksmīgos projektos",
                    "fa" => "ما ایده ها را به پروژه های موفق تبدیل می کنیم",
                    "en" => "We turn ideas into successfull projects"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </p>
            <a class="hero__footer-link del-hash" href="#benefit">
                {include "common/components/icon.tpl" icon=["class" => "hero__footer-link-icon", "name" => "arrow-down"]}
            </a>
        </div>
    </div>
</section>
