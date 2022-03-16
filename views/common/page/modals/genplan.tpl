{extends "./modal.tpl"}

{block modal}
    <div class="genplan-modal">
        <div class="genplan-modal-slider unselectable">
            <div class="swiper genplan-modal__swiper">
                <div class="swiper-wrapper genplan-modal__swiper-wrapper"></div>
            </div>
            <div class="slider-nav">
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
{/block}
