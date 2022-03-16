<section class="projects {if ($block.theme == "dark")}projects__dark{else if ($block.theme == "light")}projects__light{/if}">
    <div class="container">
        <div class="projects__werapper">
            <h2 class="title title__section projects__title lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$block.title}</h2>
            {if ($block.text != "")}
                <p class="projects__text lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$block.text}</p>
            {/if}
            <div class="projects-slider unselectable">
                <div class="swiper projects__swiper">
                    <div class="swiper-wrapper projects__swiper-wrapper">
                        {foreach $projectsData as $item}
                            {if $item@iteration is div by 9}{break}{/if}
                            {$pathImage = mb_substr($item.projects.image, 0, -4)}
                            <div class="swiper-slide projects__swiper-slide">
                                <div class="projects__slide-wrap">
                                    <picture>
                                        <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                        <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                        <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                        <img class="projects__swiper-slide-image image image__fit image__fit_cover"
                                            src="{$pathImage}@2x.jpg"
                                            alt="{include "views/common/components/textLanguage.tpl" textLang=$item.projects.alt}"
                                            width="387"
                                            height="686"
                                            loading="lazy"
                                            decoding="async"/>
                                    </picture>
                                    <div class="projects-slide__content lang-fa">
                                        <ul class="projects-slide__types">
                                            {foreach $item.types as $type}
                                                <li class="projects-slide__type">{include "views/common/components/textLanguage.tpl" textLang=$type}</li>
                                            {/foreach}
                                        </ul>
                                        <h3 class="projects-slide__title">{$item.title}</h3>
                                        <div class="projects-slide__subtitle">{include "views/common/components/textLanguage.tpl" textLang=$item.projects.subtitle}</div>
                                        <div class="projects-slide__description">
                                            <p class="projects-slide__text">{include "views/common/components/textLanguage.tpl" textLang=$item.projects.text}</p>
                                            <a class="btn btn-default projects-slide__btn no-wrap" href="{$item.projects.link}">
                                                {$textLang = [
                                                    "ru" => "Больше информации",
                                                    "tr" => "Daha Fazla Bilgi Alın",
                                                    "fi" => "Hanki lisätietoja",
                                                    "de" => "Få flere oplysninger",
                                                    "zh" => "获取更多信息",
                                                    "sv" => "Skaffa mer information",
                                                    "lv" => "Vairāk informācijas",
                                                    "fa" => "دریافت اطلاعات بیشتر",
                                                    "en" => "Get More Information"
                                                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/foreach}
                    </div>
                </div>
                <div class="slider-nav">
                    <button class="btn slider-nav__btn slider-nav__btn_{if ($block.theme == "dark")}light{else if ($block.theme == "light")}dark{/if} slider-btn__prev" type="button">
                        {include "common/components/icon.tpl" icon=["class" => "slider-btn__icon", "name" => "slider-arrow-prev"]}
                    </button>
                    <div class="slider-pagination slider-pagination_{if ($block.theme == "dark")}light{else if ($block.theme == "light")}dark{/if}"></div>
                    <button class="btn slider-nav__btn slider-nav__btn_{if ($block.theme == "dark")}light{else if ($block.theme == "light")}dark{/if} slider-btn__next" type="button">
                        {include "common/components/icon.tpl" icon=["class" => "slider-btn__icon", "name" => "slider-arrow-next"]}
                    </button>
                </div>
            </div>
        </div>
        {$textLang = [
            "ru" => "Cмотреть все проекты",
            "tr" => "Tüm projeleri görüntüle",
            "fi" => "Katso kaikki projektit",
            "de" => "Se alle projekter",
            "zh" => "查看所有项目",
            "sv" => "Se alla projekt",
            "lv" => "Skatīt visus projektus",
            "fa" => "مشاهده تمامی پروژه ها",
            "en" => "View all projects"
        ]}
        {if ($block.theme == "dark")}
            {include "common/components/link-section.tpl" link=["class" => "link-section__white projects__link-section", "href" => "projects", "textLang" => $textLang, "icon" => "false"]}
        {else if ($block.theme == "light")}
            {include "common/components/link-section.tpl" link=["class" => "link-section__dark projects__link-section", "href" => "projects", "textLang" => $textLang, "icon" => "false"]}
        {/if}
    </div>
</section>
