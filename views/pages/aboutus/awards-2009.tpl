{$awardsData = [
    [
        "image" => "img/aboutus/awards_01.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2009",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2009",
            "fi" => "TRNC PROPERTY AWARDS 2009",
            "de" => "TRNC PROPERTY AWARDS 2009",
            "zh" => "2009 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2009",
            "lv" => "TRNC PROPERTY AWARDS 2009",
            "fa" => "جوایز املاک TRNC 2009",
            "en" => "TRNC PROPERTY AWARDS 2009"
        ]
    ],
    [
        "image" => "img/aboutus/awards_06.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2009",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2009",
            "fi" => "TRNC PROPERTY AWARDS 2009",
            "de" => "TRNC PROPERTY AWARDS 2009",
            "zh" => "2009 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2009",
            "lv" => "TRNC PROPERTY AWARDS 2009",
            "fa" => "جوایز املاک TRNC 2009",
            "en" => "TRNC PROPERTY AWARDS 2009"
        ]
    ],
    [
        "image" => "img/aboutus/awards_03.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2009",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2009",
            "fi" => "TRNC PROPERTY AWARDS 2009",
            "de" => "TRNC PROPERTY AWARDS 2009",
            "zh" => "2009 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2009",
            "lv" => "TRNC PROPERTY AWARDS 2009",
            "fa" => "جوایز املاک TRNC 2009",
            "en" => "TRNC PROPERTY AWARDS 2009"
        ]
    ],
    [
        "image" => "img/aboutus/awards_04.jpg",
        "alt" => [
            "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2009",
            "tr" => "KKTC EMLAK ÖDÜLLERİ 2009",
            "fi" => "TRNC PROPERTY AWARDS 2009",
            "de" => "TRNC PROPERTY AWARDS 2009",
            "zh" => "2009 年 TRNC 房地产奖",
            "sv" => "TRNC PROPERTY AWARDS 2009",
            "lv" => "TRNC PROPERTY AWARDS 2009",
            "fa" => "جوایز املاک TRNC 2009",
            "en" => "TRNC PROPERTY AWARDS 2009"
        ]
    ]
]}

<section class="awards-2009">
    <div class="container awards-2009__container">
        <div class="awards-list">
            <h3 class="title awards-list__subtitle lang-fa" dir="auto">
                {$textLang = [
                    "ru" => "ТРСК НЕДВИЖИМОСТЬ НАГРАДЫ 2009",
                    "tr" => "KKTC EMLAK ÖDÜLLERİ 2009",
                    "fi" => "TRNC PROPERTY AWARDS 2009",
                    "de" => "TRNC PROPERTY AWARDS 2009",
                    "zh" => "2009 年 TRNC 房地产奖",
                    "sv" => "TRNC PROPERTY AWARDS 2009",
                    "lv" => "TRNC PROPERTY AWARDS 2009",
                    "fa" => "جوایز املاک TRNC 2009",
                    "en" => "TRNC PROPERTY AWARDS 2009"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h3>
            <ul>
                <li class="awards-list__item lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Конструктор года",
                        "tr" => "Yılın kurucusu",
                        "fi" => "Vuoden rakentaja",
                        "de" => "Årets konstruktør",
                        "zh" => "年度建设者",
                        "sv" => "Årets konstruktör",
                        "lv" => "Gada konstruktors",
                        "fa" => "سازنده سال",
                        "en" => "The constructor of the Year"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </li>
                <li class="awards-list__item lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Разработчик года",
                        "tr" => "Yılın geliştiricisi",
                        "fi" => "Vuoden kehittäjä",
                        "de" => "Årets udvikler",
                        "zh" => "年度开发者",
                        "sv" => "Årets utvecklare",
                        "lv" => "Gada izstrādātājs",
                        "fa" => "توسعه دهنده سال",
                        "en" => "The developer of the year"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </li>
                <li class="awards-list__item lang-fa" dir="auto">
                    {$textLang = [
                        "ru" => "Лучшая квартира",
                        "tr" => "En İyi Daire",
                        "fi" => "Paras Huoneisto",
                        "de" => "Bedste lejlighed",
                        "zh" => "最佳公寓",
                        "sv" => "Bästa lägenheten",
                        "lv" => "Labākais dzīvoklis",
                        "fa" => "بهترین آپارتمان",
                        "en" => "Best Apartment"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </li>
            </ul>
        </div>
        {include "views/common/components/g-slider.tpl" class="awards-2009-slider" sliderData=$awardsData}
    </div>
</section>
