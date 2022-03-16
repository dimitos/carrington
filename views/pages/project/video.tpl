{if ($videoData)}
    <div class="object-video">
        <div class="video-slider unselectable">
            <div class="swiper video__swiper">
                <div class="swiper-wrapper video__swiper-wrapper">
                    {foreach $videoData as $item}
                            <div class="swiper-slide video__swiper-slide">
                                <div class="video-container">
                                    <div class="video object-video__video">
                                        <div class="video-poster">
                                            <div class="video-poster__wrapper">
                                                <div class="video-poster__btn">
                                                    {include "common/components/icon.tpl" icon=["class" => "video-poster__icon", "name" => "start-video"]}
                                                </div>
                                                <div class="image video-poster__image">
                                                    {$pathImage = mb_substr($item.poster, 0, -4)}
                                                    <div class="image__wrapper">
                                                        <picture>
                                                            <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                                            <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                                            <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                                            <img class="image__fit image__fit_cover"
                                                                src="{$pathImage}@2x.jpg"
                                                                alt="{$item.title}"
                                                                width="1200"
                                                                height="570"
                                                                loading="lazy"
                                                                decoding="async"/>
                                                        </picture>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <video class="video-track video-track__fit_cover" preload="metadata" controls width="1200" height="570">
                                            {$pathVideo = mb_substr($item.src, 0, -4)}
                                            <source type="video/mp4" src="{$pathVideo}.mp4" />
                                            <source type="video/webm" src="{$pathVideo}.webm" />
                                            Sorry, your browser doesn't support embedded videos, but don't worry, you can <a href="{$pathVideo}.mp4">download it</a>and watch it with your favorite video player!
                                        </video>
                                    </div>
                                </div>
                            </div>
                    {/foreach}
                </div>
            </div>
            <div class="slider-nav" {if (count($videoData) == 1)} style="display: none;"{/if}>
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
{/if}
