{$awardsData = [
    [
        "image" => "img/aboutus/awards_01.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2008",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2008",
            "fi" => "TRNC PROPERTY AWARDS 2008",
            "de" => "TRNC PROPERTY AWARDS 2008",
            "zh" => "2008 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2008",
            "lv" => "TRNC PROPERTY AWARDS 2008",
            "fa" => "جوایز املاک TRNC 2008",
            "en" => "TRNC PROPERTY AWARDS 2008"
        ]
    ],
    [
        "image" => "img/aboutus/awards_06.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2008",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2008",
            "fi" => "TRNC PROPERTY AWARDS 2008",
            "de" => "TRNC PROPERTY AWARDS 2008",
            "zh" => "2008 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2008",
            "lv" => "TRNC PROPERTY AWARDS 2008",
            "fa" => "جوایز املاک TRNC 2008",
            "en" => "TRNC PROPERTY AWARDS 2008"
        ]
    ],
    [
        "image" => "img/aboutus/awards_03.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2008",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2008",
            "fi" => "TRNC PROPERTY AWARDS 2008",
            "de" => "TRNC PROPERTY AWARDS 2008",
            "zh" => "2008 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2008",
            "lv" => "TRNC PROPERTY AWARDS 2008",
            "fa" => "جوایز املاک TRNC 2008",
            "en" => "TRNC PROPERTY AWARDS 2008"
        ]
    ],
    [
        "image" => "img/aboutus/awards_04.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2008",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2008",
            "fi" => "TRNC PROPERTY AWARDS 2008",
            "de" => "TRNC PROPERTY AWARDS 2008",
            "zh" => "2008 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2008",
            "lv" => "TRNC PROPERTY AWARDS 2008",
            "fa" => "جوایز املاک TRNC 2008",
            "en" => "TRNC PROPERTY AWARDS 2008"
        ]
    ]
]}

<section class="awards-2008">
    <div class="container awards-2008__container">
        <div class="awards-list">
            <h3 class="title awards-list__subtitle lang-fa" dir="auto">
                {$textLang = [
                    "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2008",
                    "tr" => "KKTC EMLAK ÖDÜLLERİ 2008",
                    "fi" => "TRNC PROPERTY AWARDS 2008",
                    "de" => "TRNC PROPERTY AWARDS 2008",
                    "zh" => "2008 年 TRNC 房地产奖",
                    "sv" => "TRNC PROPERTY AWARDS 2008",
                    "lv" => "TRNC PROPERTY AWARDS 2008",
                    "fa" => "جوایز املاک TRNC 2008",
                    "en" => "TRNC PROPERTY AWARDS 2008"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h3>
            <ul>
                <li class="awards-list__item lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Лучший элитный комплекс",
                        "tr" => "En İyi Lüks Geliştirme",
                        "fi" => "Paras luksuskehitys",
                        "de" => "Bedste luksusudvikling",
                        "zh" => "最佳豪宅开发项目",
                        "sv" => "Bästa lyxutveckling",
                        "lv" => "Labākā luksusa attīstība",
                        "fa" => "بهترین توسعه لوکس",
                        "en" => "Best Luxury Development"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </li>
                <li class="awards-list__item lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Лучший дизайн интерьера",
                        "tr" => "En İyi İç Tasarım",
                        "fi" => "Paras sisustussuunnittelu",
                        "de" => "Bedste indretning",
                        "zh" => "最佳室内设计",
                        "sv" => "Bästa inredningsdesign",
                        "lv" => "Labākais interjera dizains",
                        "fa" => "بهترین طراحی داخلی",
                        "en" => "Best Interior Design"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </li>
            </ul>
        </div>
        {include "views/common/components/g-slider.tpl" class="awards-2008-slider" sliderData=$awardsData}
    </div>
</section>
