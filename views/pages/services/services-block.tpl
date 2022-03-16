<section class="services-block">
    <div class="container services-block__container">
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
        ]}
        {include "views/common/components/breadcrumbs.tpl"
            breadcrumbs=[
                "class" => "breadcrumbs__dark",
                "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                "link" => "services"
            ]}
        <h2 class="title title__section services-block__title">
            {include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </h2>
        <div class="services-block__list">
            {foreach $serviceData as $item}
                {$pathImage = mb_substr($item.imagePane, 0, -4)}
                <div class="services-block__item">
                    <a class="services-block__item-wrap" href="{$item.link}">
                        <div class="bg-filter services-block__bg-filter"></div>
                        <div class="services-block__swiper-slide-shaped {if ($item.shaped == "true")}shaped-form{/if}">
                            <picture>
                                <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                <img class="services-block__swiper-slide-image image image__fit image__fit_cover"
                                    src="{$pathImage}@2x.jpg"
                                    alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                    width="387"
                                    height="474"
                                    loading="lazy"
                                    decoding="async"/>
                            </picture>
                        </div>
                        <div class="services-block__swiper-slide-content">
                            <div class="title__wrap lang-fa">
                                {include "common/components/icon.tpl" icon=["class" => "services-block-title__icon", "name" => "arrow-right"]}
                                <h4 class="services-block__swiper-slide-title">
                                    {include "views/common/components/textLanguage.tpl" textLang=$item.title}
                                </h4>
                            </div>
                            <p class="services-block__swiper-slide-text lang-fa" dir="auto">
                                {if ($item.textPreview.en != "")}{include "views/common/components/textLanguage.tpl" textLang=$item.textPreview}{/if}
                            </p>
                        </div>
                    </a>
                </div>
            {/foreach}
            <div class="services-block__item">
                {include "views/common/components/get-more.tpl"}
            </div>
        </div>
    </div>
</section>
