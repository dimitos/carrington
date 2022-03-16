<section class="hero unselectable">
    <div class="hero__slider">
        <div class="swiper hero__swiper">
            <div class="swiper-wrapper hero__swiper-wrapper">
                {foreach $heroData.hero.images as $item}
                    {$pathImage = mb_substr($item.image, 0, -4)}
                    <div class="swiper-slide hero__swiper-slide">
                        <div class="hero__swiper-slide-wrap">
                            <picture>
                                <source srcset="{$pathImage}-bg.webp" media="(max-width: 420px)" type="image/webp" />
                                <source srcset="{$pathImage}-bg.jpg" media="(max-width: 420px)" />
                                <source srcset="{$pathImage}@2x-bg.webp" type="image/webp" />
                                <img class="hero__swiper-slide-image image image__fit image__fit_cover"
                                    src="{$pathImage}@2x-bg.jpg"
                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                    width="1920"
                                    height="800"
                                    decoding="async"/>
                            </picture>
                            <div class="hero__swiper-slide-inner">
                                <div class="container hero__swiper-slide-container">
                                    <div class="hero__swiper-slide-bottom-img">
                                        <div class="hero__swiper-slide-wrap">
                                            <picture>
                                                <source srcset="{$pathImage}.webp" type="image/webp" />
                                                <img class="hero__swiper-slide-bottom-image image image__fit image__fit_cover"
                                                    src="{$pathImage}.jpg"
                                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                                    width="544"
                                                    height="390"
                                                    decoding="async"/>
                                            </picture>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    <div class="container hero__container">
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
        ]}
        {include "views/common/components/breadcrumbs.tpl"
            breadcrumbs=[
                "class" => "breadcrumbs__light",
                "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                "link" => "projects",
                "name_entry" => $heroData.title
            ]}
        <a class="hero__back" href="projects">
            {include "common/components/icon.tpl" icon=["class" => "hero__back-icon", "name" => "arrow-back"]}
        </a>
        <div class="hero__inner">
            <div class="hero__wrap">
                <div class="hero__left">
                    <h2 class="title title__section hero__title lang-fa" dir="auto">{$heroData.title}</h2>
                    <ul class="hero__types">
                        {foreach $heroData.types as $type}
                            <li class="hero__type">{include "views/common/components/textLanguage.tpl" textLang=$type}</li>
                        {/foreach}
                    </ul>
                    <p class="hero__text lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$heroData.hero.text}</p>
                    <button class="btn btn-default hero__btn no-wrap" type="button" data-modal="inspectionTrip">
                        {$textLang = [
                            "ru" => "Забронируйте бесплатную поездку",
                            "tr" => "Ücretsiz İnceleme Gezisi Yap",
                            "fi" => "Varaa ilmainen tarkastusmatka",
                            "de" => "Book gratis inspektionsrejse",
                            "zh" => "预订免费检查之旅",
                            "sv" => "Boka gratis besiktningsresa",
                            "lv" => "Rezervējiet bezmaksas braucienu",
                            "fa" => "سفر بازرسی رایگان را رزرو کنید",
                            "en" => "Book Free Inspection Trip"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </button>
                </div>
            </div>
        </div>
        <div class="hero__right">
            {* {$textLang = [
                "ru" => "Посмотреть 360 тур",
                    "tr" => "360 Turu Görüntüle",
                    "fi" => "Katso 360-kierros",
                    "de" => "Se 360-rundvisning",
                    "zh" => "查看 360 度全景游览",
                    "sv" => "Visa 360-rundtur",
                    "lv" => "Skatīt 360 grādu ceļojumu",
                    "fa" => "مشاهده تور 360",
                    "en" => "View 360 Tour"
            ]}
            {include "common/components/link-section.tpl" link=["class" => "link-section__white hero__link-section", "href" => "#", "textLang" => $textLang, "icon" => "false"]} *}
        </div>
    </div>
</section>
