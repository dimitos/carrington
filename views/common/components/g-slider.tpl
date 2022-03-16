<div class="{$class} g-slider unselectable">
    <div class="swiper gallery__swiper">
        <div class="swiper-wrapper gallery__swiper-wrapper">
            {foreach $sliderData as $item}
                {if $item@iteration is div by 9}{break}{/if}
                {$pathImage = mb_substr($item.image, 0, -4)}
                <div class="swiper-slide gallery__swiper-slide">
                    <div class="gallery__swiper-slide-wrap" data-modal="view">
                        <picture>
                            <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                            <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                            <img class="gallery__swiper-slide-image image image__fit image__fit_cover"
                                src="{$pathImage}@2x.jpg"
                                alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                width="582"
                                height="336"
                                loading="lazy"
                                decoding="async"/>
                        </picture>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
    <div class="slider-nav">
        <button class="btn slider-nav__btn slider-nav__btn_light slider-btn__prev" type="button">
            {include "common/components/icon.tpl" icon=["class" => "slider-btn__icon", "name" => "slider-arrow-prev"]}
        </button>
        <div class="slider-pagination slider-pagination_light"></div>
        <button class="btn slider-nav__btn slider-nav__btn_light slider-btn__next" type="button">
            {include "common/components/icon.tpl" icon=["class" => "slider-btn__icon", "name" => "slider-arrow-next"]}
        </button>
    </div>
</div>
