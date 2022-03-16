<section class="objects-section">
    <div class="container objects__container">
        {$textLang = [
            "ru" => "Смотреть все проекты",
            "tr" => "Tüm projeleri görüntüle",
            "fi" => "Katso kaikki projektit",
            "de" => "Se alle projekter",
            "zh" => "查看所有项目",
            "sv" => "Se alla projekt",
            "lv" => "Skatīt visus projektus",
            "fa" => "مشاهده تمامی پروژه ها",
            "en" => "View all projects"
        ]}
        {include "views/common/components/breadcrumbs.tpl"
            breadcrumbs=[
                "class" => "breadcrumbs__dark",
                "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                "link" => "objects" ]}
        <div class="objects__top">
            <h2 class="title title__section objects__title">
                {$textLang = [
                    "ru" => "Все проекты",
                    "tr" => "Tüm projeler",
                    "fi" => "Kaikki projektit",
                    "de" => "Alle projekter",
                    "zh" => "所有项目",
                    "sv" => "Alla projekt",
                    "lv" => "Visi projekti",
                    "fa" => "همه پروژه ها",
                    "en" => "All projects"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <div class="gallery-tabs">
                <div class="gallery__tab selected" data-type="all">
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
                <div class="gallery__tab" data-type="{$textLang = [
                        "ru" => "Новые",
                        "tr" => "Yeni",
                        "fi" => "Uusi",
                        "de" => "Ny",
                        "zh" => "新的",
                        "sv" => "Ny",
                        "lv" => "Jauns",
                        "fa" => "جدید",
                        "en" => "New"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}">
                    {$textLang = [
                        "ru" => "Новые",
                        "tr" => "Yeni",
                        "fi" => "Uusi",
                        "de" => "Ny",
                        "zh" => "新的",
                        "sv" => "Ny",
                        "lv" => "Jauns",
                        "fa" => "جدید",
                        "en" => "New"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </div>
                <div class="gallery__tab" data-type="{$textLang = [
                        "ru" => "Завершенное",
                        "tr" => "Tamamlanmış",
                        "fi" => "Valmis",
                        "de" => "Færdiggjort",
                        "zh" => "完全的",
                        "sv" => "Avslutad",
                        "lv" => "Pabeigts",
                        "fa" => "تکمیل شد",
                        "en" => "Completed"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}">
                    {$textLang = [
                        "ru" => "Завершенное",
                        "tr" => "Tamamlanmış",
                        "fi" => "Valmis",
                        "de" => "Færdiggjort",
                        "zh" => "完全的",
                        "sv" => "Avslutad",
                        "lv" => "Pabeigts",
                        "fa" => "تکمیل شد",
                        "en" => "Completed"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </div>
            </div>
        </div>
        {$countObjects = count($projectsData)}
        <p class="objects__cnt">
            {$textLang = [
                "ru" => "Найдено",
                "tr" => "Bulundu",
                "fi" => "Löytyi",
                "de" => "Fundet",
                "zh" => "成立",
                "sv" => "Hittades",
                "lv" => "Atrasts",
                "fa" => "پیدا شد",
                "en" => "Found"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}: <span>{$countObjects}</span>
        </p>
        <div class="objects__list">
            {$rowObjects = ceil($countObjects/3)}
            {section name=i start=0 loop=$rowObjects step=1}
                <div class="objects__wrapper {if ($smarty.section.i.index == $rowObjects - 1 && $countObjects % 3 != 0 )}objects__wrapper-last{/if}">
                    {section name=j start=0 loop=3 step=1}
                        {$indexObject = $smarty.section.i.index * 3 + $smarty.section.j.index}
                        {if ($indexObject<$countObjects)}
                            {$item = $projectsData[$indexObject]}
                            <div class="objects__item">
                                {$pathImage = mb_substr($item.projects.image, 0, -4)}
                                <div class="objects__item-wrap">
                                    <picture>
                                        <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                        <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                        <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                        <img class="objects__item-image image image__fit image__fit_cover"
                                            src="{$pathImage}@2x.jpg"
                                            alt="{include "views/common/components/textLanguage.tpl" textLang=$item.projects.alt}"
                                            width="361"
                                            height="686"
                                            loading="lazy"
                                            decoding="async"/>
                                    </picture>
                                    <div class="objects-item__content lang-fa">
                                        <ul class="objects-item__types">
                                            {foreach $item.types as $type}
                                                {* <li class="objects-item__type" data-type="{strtolower($type)}">{include "views/common/components/textLanguage.tpl" textLang=$type}</li> *}
                                                <li class="objects-item__type" data-type="{include "views/common/components/textLanguage.tpl" textLang=$type}">{include "views/common/components/textLanguage.tpl" textLang=$type}</li>
                                            {/foreach}
                                        </ul>
                                        <h3 class="objects-item__title">{$item.title}</h3>
                                        <div class="objects-item__subtitle">{include "views/common/components/textLanguage.tpl" textLang=$item.projects.subtitle}</div>
                                        <div class="objects-item__description">
                                            <p class="objects-item__text">{include "views/common/components/textLanguage.tpl" textLang=$item.projects.text}</p>
                                            <a class="btn btn-default objects-item__btn no-wrap" href="{$item.projects.link}">
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
                        {elseif ($countObjects % 3 != 0)}
                            <div class="objects__get-more {if ($rowObjects * 3 - $countObjects == 2)}objects__get-more_small{else}objects__get-more_big{/if}">
                                {include "views/common/components/get-more.tpl"}
                            </div>
                            {break}
                        {/if}
                    {/section}
                </div>
            {/section}
            {if ($countObjects % 3 == 0)}
                <div class="objects__wrapper objects__wrapper-last">
                    <div class="objects__get-more objects__get-more_big">
                        {include "views/common/components/get-more.tpl"}
                    </div>
                </div>
            {/if}
        </div>
    </div>
</section>
