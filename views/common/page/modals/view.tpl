{extends "./modal.tpl"}

{block modal}
    <div class="view-modal">
        <div class="view-modal__wrap">
            <div class="view-slider unselectable">
                <div class="swiper view__swiper">
                    <div class="swiper-wrapper view__swiper-wrapper">

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
            <div class="preview-slider unselectable">
                <div class="swiper preview__swiper">
                    <div class="swiper-wrapper preview__swiper-wrapper">

                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}
