<script>
    var images = {json_encode($sliderData)};
    var lang = {json_encode($lang)};
</script>

{if ($sliderData)}
    <div class="gallery">
        <div class="container hero__container">
            <div class="gallery-tabs">
                <div class="gallery__tab selected" data-type="outdoor">
                    {$textLang = [
                        "ru" => "Экстерьер",
                        "tr" => "Dış",
                        "fi" => "Ulkopuoli",
                        "de" => "Ydre",
                        "zh" => "外部的",
                        "sv" => "Exteriör",
                        "lv" => "Ārpuse",
                        "fa" => "خارجی",
                        "en" => "Outdoor"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </div>
                <div class="gallery__tab" data-type="interior">
                    {$textLang = [
                        "ru" => "Интерьер",
                        "tr" => "İç mekan",
                        "fi" => "Sisustus",
                        "de" => "Interiør",
                        "zh" => "内部的",
                        "sv" => "Interiör",
                        "lv" => "Interjers",
                        "fa" => "داخلی",
                        "en" => "Interior"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </div>
                <div class="gallery__tab" data-type="all">
                    {$textLang = [
                        "ru" => "Все",
                        "tr" => "Herşey",
                        "fi" => "Kaikki",
                        "de" => "Alle",
                        "zh" => "全部",
                        "sv" => "Allt",
                        "lv" => "Visi",
                        "fa" => "همه",
                        "en" => "All"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </div>
            </div>
            <div class="gallery-slider unselectable">
                <div class="swiper gallery__swiper">
                    <div class="swiper-wrapper gallery__swiper-wrapper">
                        {assign var="countSlides" value=0}
                        {foreach $sliderData as $item name=slides}
                            {if ($item.type == "outdoor")}
                                {assign "countSlides" $countSlides+1}
                                <div class="swiper-slide gallery__swiper-slide {if ($countSlides == 9 || $smarty.foreach.slides.last)}last-slide{/if}" data-id="{$item.id}" data-type="{$item.type}" data-modal="view">
                                    <div class="slide-prompt" dir="auto">
                                        {$textLang = [
                                            "ru" => "смотреть больше фотографий",
                                            "tr" => "daha fazla fotoğraf gör",
                                            "fi" => "katso lisää kuvia",
                                            "de" => "se flere billeder",
                                            "zh" => "查看更多照片",
                                            "sv" => "se fler bilder",
                                            "lv" => "skatiet vairāk fotoattēlu",
                                            "fa" => "عکس های بیشتر را ببینید",
                                            "en" => "see more photos"
                                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                                    </div>
                                    <div class="image gallery-slider__image">
                                        <div class="image__wrapper">
                                            {$pathImage = mb_substr($item.image, 0, -4)}
                                            <picture>
                                                <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                                <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                                <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                                <img class="image__fit image__fit_cover"
                                                    src="{$pathImage}@2x.jpg"
                                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                                    width="582"
                                                    height="336"
                                                    loading="lazy"
                                                    decoding="async"/>
                                            </picture>
                                        </div>
                                    </div>
                                </div>
                            {/if}
                            {if $countSlides >= 9}{break}{/if}
                        {/foreach}
                    </div>
                </div>
                <div class="slider-nav" {if (count($sliderData) < 2)} style="display: none;"{/if}>
                    <button class="btn slider-nav__btn slider-nav__btn_dark slider-btn__prev" type="button">
                        {include "common/components/icon.tpl" icon=["class" => "slider-btn__icon", "name" => "slider-arrow-prev"]}
                    </button>
                    <div class="slider-pagination slider-pagination_dark"></div>
                    <button class="btn slider-nav__btn slider-nav__btn_dark slider-btn__next" type="button">
                        {include "common/components/icon.tpl" icon=["class" => "slider-btn__icon", "name" => "slider-arrow-next"]}
                    </button>
                </div>
            </div>
        </div>
    </div>
{/if}
