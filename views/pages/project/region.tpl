<section class="region unselectable">
    {$pathImage = mb_substr($regionData.background, 0, -4)}
    <picture>
        <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
        <source srcset="{$pathImage}@2x.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover region-bg__image"
            src="{$pathImage}@2x.jpg"
            alt="{$regionData.alt}"
            width="1920"
            height="1727"
            loading="lazy"
            decoding="async"/>
    </picture>
    <div class="container region__container">
        <h2 class="title title__section region__title lang-fa" dir="auto">
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
        </h2>
        <div class="region__wrapper">
            {foreach $regionData.blocks as $item}
                {$pathImage = mb_substr($item.image, 0, -4)}
                <div class="region__item">
                    <div class="region__item-wrap">
                        <p class="region__text lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$item.text}</p>
                        <div class="region__img">
                            <picture>
                                <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                <source srcset="{$pathImage}.webp" type="image/webp" />
                                <img class="image image__fit image__fit_cover region__image"
                                    src="{$pathImage}@2x.jpg"
                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                    width="530"
                                    height="372"
                                    loading="lazy"
                                    decoding="async"/>
                            </picture>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
        <div class="region__footer">
            <div class="region__footer-wrap">
                <h2 class="title title__section region__footer-title">{include "views/common/components/textLanguage.tpl" textLang=$regionData.name}</h2>
                <svg class="icon region__icon-map">
                    <use xlink:href="/img/svg/maps.svg#{$regionData.map}"></use>
                </svg>
            </div>
        </div>
    </div>
</section>
