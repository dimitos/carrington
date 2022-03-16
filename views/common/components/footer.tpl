<footer class="footer footer__wrap {$footer.class}">
    <div class="container">
        <nav class="footer__nav">
            <ul class="footer__menu">
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="/" dir="auto">
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
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="projects" dir="auto">
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
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="services" dir="auto">
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
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="aboutus" dir="auto">
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
                {* <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="#" dir="auto">
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
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="country" dir="auto">
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
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="buying" dir="auto">
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
                <li class="footer__menu-item">
                    <a class="footer__link footer__menu-link lang-fa" href="trips" dir="auto">
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
            </ul>
        </nav>
        <div class="footer__bottom">
            <div class="footer__bottom-item menu-select">
                <h3 class="footer__bottom-title no-wrap">
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
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=0">Malibu</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=1">Atlantis</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=2">Poseidon</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=3">Sea Magic Royal</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=4">Elite Residence</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer__bottom-item menu-select">
                <h3 class="footer__bottom-title no-wrap">
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
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=3">Sea Magic Royal</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=4">Elite Residence</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=5">Sea Magic Premium</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=6">Sea Magic Park</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=7">Sea Magic</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=8">Sea Magic Villas</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=9">Gold Tower</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=10">Carrington 22</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=11">Carrington 44</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=14">The Residence</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=19">Carrington 11</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=16">The Quays</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=17">Merit Villas</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=18">Bellapais Villa</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=15">Waterside</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=13">Morlais</a></li>
                        <li class="footer__submenu-item"><a class="footer__link footer__submenu-link no-wrap" href="project?project=12">Sunset Valley</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer__bottom-item">
                {include "./menu-contacts.tpl" menuContacts=["class" => "footer__menu-contacts"]}
            </div>
        </div>
    </div>
</footer>
