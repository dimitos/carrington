<nav class="menu">
    <div class="menu__inner menu__header">
        <div class="menu__wrap">
            <div class="container">
                <div class="menu-closer">
                    {include "./icon.tpl" icon=["class" => "menu-closer__icon", "name" => "closer"]}
                </div>
            </div>
        </div>
        <div class="menu__content container">
            <div class="menu__nav">
                <ul class="menu__list">
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="/" dir="auto">
                            {$textLang = [
                                "ru" => "Главная",
                                "tr" => "EV",
                                "fi" => "KOTI",
                                "de" => "HJEM",
                                "zh" => "家",
                                "sv" => "HEM",
                                "lv" => "MĀJAS",
                                "fa" => "خانه",
                                "en" => "HOME"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="projects" dir="auto">
                            {$textLang = [
                                "ru" => "Все проекты",
                                "tr" => "Tüm projeler",
                                "fi" => "Kaikki projektit",
                                "de" => "Alle projekter",
                                "zh" => "所有项目",
                                "sv" => "Alla projekt",
                                "lv" => "Visi projekti",
                                "fa" => "همه پروژه ها",
                                "en" => "All projects"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="services" dir="auto">
                            {$textLang = [
                                "ru" => "Услуги",
                                "tr" => "Hizmetler",
                                "fi" => "Palvelut",
                                "de" => "Tjenester",
                                "zh" => "服务",
                                "sv" => "Tjänster",
                                "lv" => "Pakalpojumi",
                                "fa" => "خدماتv",
                                "en" => "Services"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="aboutus" dir="auto">
                            {$textLang = [
                                "ru" => "О Кэррингтоне",
                                "tr" => "Carrington hakkında",
                                "fi" => "Tietoja Carringtonista",
                                "de" => "Om Carrington",
                                "zh" => "关于卡灵顿",
                                "sv" => "Om Carrington",
                                "lv" => "Par Keringtonu",
                                "fa" => "درباره کارینگتون",
                                "en" => "About Carrington"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    {* <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="#" dir="auto">
                            {$textLang = [
                                "ru" => "360 тур",
                                "tr" => "360 tur",
                                "fi" => "360 kiertue",
                                "de" => "360 tur",
                                "zh" => "360度游览",
                                "sv" => "360-turné",
                                "lv" => "360 tūre",
                                "fa" => "تور 360",
                                "en" => "360 tour"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li> *}
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="country" dir="auto">
                            {$textLang = [
                                "ru" => "Северный Кипр",
                                "tr" => "Kuzey Kıbrıs",
                                "fi" => "Pohjois-Kypros",
                                "de" => "Nordcypern",
                                "zh" => "北塞浦路斯",
                                "sv" => "Norra Cypern",
                                "lv" => "Ziemeļkipra",
                                "fa" => "قبرس شمالی",
                                "en" => "North Cyprus"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="buying" dir="auto">
                            {$textLang = [
                                "ru" => "Покупка",
                                "tr" => "Satın alma",
                                "fi" => "Ostaminen",
                                "de" => "At købe",
                                "zh" => "购买",
                                "sv" => "Uppköp",
                                "lv" => "Pirkšana",
                                "fa" => "خریداری کردن",
                                "en" => "Buying"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="trips" dir="auto">
                            {$textLang = [
                                "ru" => "Ознакомительные туры",
                                "tr" => "Muayene Gezileri",
                                "fi" => "Tarkastusmatkat",
                                "de" => "Inspektionsrejser",
                                "zh" => "检查行程",
                                "sv" => "Inspektionsresor",
                                "lv" => "Pārbaudes braucieni",
                                "fa" => "سفرهای بازرسی",
                                "en" => "Inspection Trips"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                    <li class="menu__item">
                        <a class="menu__link_hover menu__item-link lang-fa" href="contacts" dir="auto">
                            {$textLang = [
                                "ru" => "Связаться с нами",
                                "tr" => "Bize Ulaşın",
                                "fi" => "Ota meihin yhteyttä",
                                "de" => "Kontakt os",
                                "zh" => "联系我们",
                                "sv" => "Kontakta oss",
                                "lv" => "Sazinies ar mums",
                                "fa" => "با ما تماس بگیرید",
                                "en" => "Contact us"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </a>
                    </li>
                </ul>
            </div>
            <div class="menu-sub">
                <div class="menu-sub__item menu-select">
                    <h3 class="menu-sub__title no-wrap">
                        {$textLang = [
                            "ru" => "Новые",
                            "tr" => "Yeni",
                            "fi" => "Uusi",
                            "de" => "Ny",
                            "zh" => "新的",
                            "sv" => "Ny",
                            "lv" => "Jauns",
                            "fa" => "جدید",
                            "en" => "New"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h3>
                    {include "./icon.tpl" icon=["class" => "menu-select__icon menu-select__icon-down", "name" => "tab_arrow-down"]}
                    {include "./icon.tpl" icon=["class" => "menu-select__icon menu-select__icon-up", "name" => "tab_arrow-up"]}
                    <div class="menu__submenu">
                        <ul class="menu__list">
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=0">Malibu</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=1">Atlantis</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=2">Poseidon</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=3">Sea Magic Royal</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=4">Elite Residence</a></li>
                        </ul>
                    </div>
                </div>
                <div class="menu-sub__item menu-select">
                    <h3 class="menu-sub__title no-wrap">
                        {$textLang = [
                            "ru" => "Завершенные",
                            "tr" => "Tamamlanmış",
                            "fi" => "Valmis",
                            "de" => "Færdiggjort",
                            "zh" => "完全的",
                            "sv" => "Avslutad",
                            "lv" => "Pabeigts",
                            "fa" => "تکمیل شد",
                            "en" => "Completed"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h3>
                    {include "common/components/icon.tpl" icon=["class" => "menu-select__icon menu-select__icon-down", "name" => "tab_arrow-down"]}
                    {include "common/components/icon.tpl" icon=["class" => "menu-select__icon menu-select__icon-up", "name" => "tab_arrow-up"]}
                    <div class="menu__submenu">
                        <ul class="menu__list">
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=3">Sea Magic Royal</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=4">Elite Residence</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=5">Sea Magic Premium</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=6">Sea Magic Park</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=7">Sea Magic</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=8">Sea Magic Villas</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=9">Gold Tower</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=10">Carrington 22</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=11">Carrington 44</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=14">The Residence</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=19">Carrington 11</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=16">The Quays</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=17">Merit Villas</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=18">Bellapais Villa</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=15">Waterside</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=13">Morlais</a></li>
                            <li class="menu-sub__submenu-item"><a class="menu__link_hover menu-sub__submenu-link no-wrap" href="project?project=12">Sunset Valley</a></li>
                        </ul>
                    </div>
                </div>
                <div class="menu-sub__item">
                    <div class="menu-contacts">
                        <div class="menu-contacts__top lang-fa" dir="auto">
                            <a class="menu-contacts__title no-wrap" href="contacts">
                                {$textLang = [
                                "ru" => "Связаться с нами",
                                "tr" => "Bize Ulaşın",
                                "fi" => "Ota meihin yhteyttä",
                                "de" => "Kontakt os",
                                "zh" => "联系我们",
                                "sv" => "Kontakta oss",
                                "lv" => "Sazinies ar mums",
                                "fa" => "با ما تماس بگیرید",
                                "en" => "Contact us"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                            </a>
                            <ul class="menu-contacts__list">
                                <li class="menu-contacts__list-item">
                                    <a class="menu-contacts__contact menu-contacts__contact-phone" href="{$phone->link}">
                                        {include "./icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "phone"]}
                                        <div class="menu-contacts__contact-text no-wrap">{$phone->title}</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
{* {$textLang = [
    "ru" => "",
    "tr" => "",
    "fi" => "",
    "de" => "",
    "zh" => "",
    "sv" => "",
    "lv" => "",
    "fa" => "",
    "en" => ""
]}{include "views/common/components/textLanguage.tpl" textLang=$textLang} *}
