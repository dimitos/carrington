<section class="service-block">
    <div class="container">
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
                "link" => "services",
                "name_entry" => "{include "views/common/components/textLanguage.tpl" textLang=$serviceData.title}"
            ]}
        <div class="title-wrap">
            <a class="service-block__back" href="services">
                {include "common/components/icon.tpl" icon=["class" => "service-block__back-icon", "name" => "arrow-back"]}
            </a>
            <h2 class="title title__section service-block__title">
                {include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
        </div>
        <div class="service-block__wrapper">
            <div class="service-block__left">
                <div class="service-block__img">
                    {$pathImage = mb_substr($serviceData.image, 0, -4)}
                    <picture>
                        <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                        <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover service-block__image"
                            src="{$pathImage}@2x.jpg"
                            alt="{include "views/common/components/textLanguage.tpl" textLang=$serviceData.alt}"
                            width="343"
                            height="474"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
            </div>
            <div class="service-block__right">
                <h3 class="title title__block service-block__title-block" dir="auto">
                    {include "views/common/components/textLanguage.tpl" textLang=$serviceData.title}
                </h3>
                <p class="service-block__text" dir="auto">
                    {include "views/common/components/textLanguage.tpl" textLang=$serviceData.text}
                </p>
            </div>
        </div>
    </div>
</section>
