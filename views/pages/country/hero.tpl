<section class="hero unselectable">
    <picture>
        <source srcset="/img/country/country-hero.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="/img/country/country-hero.jpg" media="(max-width: 420px)" />
        <source srcset="/img/country/country-hero@2x.webp" type="image/webp" />
        <img class="hero__image image image__fit image__fit_cover"
            src="/img/country/country-hero@2x.jpg"
            alt="NORTH CYPRUS"
            width="1920"
            height="680"
            decoding="async"/>
    </picture>
    <div class="container hero__container">
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
                ]}
        {include "views/common/components/breadcrumbs.tpl"
            breadcrumbs=[
                "class" => "breadcrumbs__light",
                "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                "link" => "country"
            ]}
        <div class="hero__wrapper">
            <h2 class="country-title-1 hero__title lang-fa">
                {$textLang = [
                    "ru" => "СЕВЕРНЫЙ",
                    "tr" => "KUZEY",
                    "fi" => "POHJOIS-",
                    "de" => "NORD",
                    "zh" => "北",
                    "sv" => "NORRA",
                    "lv" => "ZIEMEĻ",
                    "fa" => "شمالی",
                    "en" => "NORTH"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <h2 class="country-title-2 hero__title lang-fa">
                {$textLang = [
                    "ru" => "КИПР",
                    "tr" => "KIBRIS",
                    "fi" => "KYPROS",
                    "de" => "CYPERN",
                    "zh" => "塞浦路斯",
                    "sv" => "CYPERN",
                    "lv" => "KIPRA",
                    "fa" => "قبرس",
                    "en" => "CYPRUS"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
        </div>
    </div>
</section>
