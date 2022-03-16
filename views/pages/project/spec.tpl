{if ($specData.list)}
    <section class="spec unselectable">
        <div class="container spec__container">
            <div class="spec__wrapper">
                <div class="spec__left">
                    <div class="spec__left-content">
                        <h2 class="title title__section spec__footer-title" dir="auto">
                            {$textLang = [
                                "ru" => "Особенности и удобства",
                                "tr" => "Özellikler ve Olanaklar",
                                "fi" => "Ominaisuudet ja mukavuudet",
                                "de" => "Funktioner og faciliteter",
                                "zh" => "特色和设施",
                                "sv" => "Funktioner och bekvämligheter",
                                "lv" => "Funkcijas un ērtības",
                                "fa" => "امکانات و امکانات",
                                "en" => "Features and Amenities"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </h2>
                        <ul class="spec__list">
                            {foreach $specData.list as $item}
                                <li class="spec__list-item lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$item}</li>
                            {/foreach}
                        </ul>
                    </div>
                    <div class="spec__left-img">
                        {$pathImage = mb_substr($specData.blocks[0].image, 0, -4)}
                        <picture>
                            <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                            <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                            <img class="spec__swiper-slide-image image image__fit image__fit_cover"
                                src="{$pathImage}@2x.jpg"
                                alt="{include "views/common/components/textLanguage.tpl" textLang=$specData.blocks[0].alt}"
                                width="404"
                                height="616"
                                loading="lazy"
                                decoding="async"/>
                        </picture>
                        <p class="spec__left-text" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$specData.blocks[0].text}</p>
                    </div>
                </div>
                <div class="spec__right">
                    {foreach $specData.blocks|array_slice:1 as $item}
                        <div class="spec__right-img">
                            {$pathImage = mb_substr($item.image, 0, -4)}
                            <picture>
                                <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                <img class="spec__swiper-slide-image image image__fit image__fit_cover"
                                    src="{$pathImage}@2x.jpg"
                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                    width="677"
                                    height="350"
                                    loading="lazy"
                                    decoding="async"/>
                            </picture>
                            <p class="spec__right-text" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$item.text}</p>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </section>
{/if}

