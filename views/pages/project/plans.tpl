<script>
    var plans = {json_encode($plansData)};
</script>

{$description = [
    [
        "ru" => "общая площадь",
        "tr" => "toplam alanı",
        "fi" => "kokonaisalue",
        "de" => "samlet areal",
        "zh" => "总面积",
        "sv" => "totalarea",
        "lv" => "kopējais laukums",
        "fa" => "مساحت کل",
        "en" => "total area"
    ],
    [
        "ru" => "площадь террасы",
        "tr" => "teras alanı",
        "fi" => "terassialue",
        "de" => "terrasseareal",
        "zh" => "露台区",
        "sv" => "terrassområdet",
        "lv" => "terases zona",
        "fa" => "منطقه تراس",
        "en" => "terrace area"
    ],
    [
        "ru" => "жилая площадь",
        "tr" => "kapalı alan",
        "fi" => "suljettu alue",
        "de" => "lukket område",
        "zh" => "封闭区",
        "sv" => "stängt område",
        "lv" => "slēgta zona",
        "fa" => "منطقه بسته",
        "en" => "closed area"
    ],
    [
        "ru" => "площадь террасы на крыше",
        "tr" => "çatı teras alanı",
        "fi" => "kattoterassi alue",
        "de" => "tagterrasse område",
        "zh" => "屋顶露台区",
        "sv" => "takterrass område",
        "lv" => "jumta terases zona",
        "fa" => "منطقه تراس پشت بام",
        "en" => "roof terrace area"
    ]
]}

{if ($plansData.plans)}
    <section class="plans unselectable">
        <div class="container plans__container">
            <div class="plans__inner">
                <div class="plans__left">
                    <h2 class="title title__section plans__title  lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Планировка этажей",
                            "tr" => "Kat planları",
                            "fi" => "Pohjapiirrustukset",
                            "de" => "Plantegning",
                            "zh" => "平面图",
                            "sv" => "Golv planer",
                            "lv" => "Stāvu plāni",
                            "fa" => "پلان های کف",
                            "en" => "Floorplans"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h2>
                    <div class="select-apart">
                        <div class="select-apart__btn select-floor__btn-prev">
                            {include "common/components/icon.tpl" icon=["class" => "select-apart__btn-icon", "name" => "tab_arrow-prev"]}
                        </div>
                        <div class="select-apart__selected">{$plansData.plans[0].name}</div>
                        <div class="select-apart__btn select-floor__btn-next">
                            {include "common/components/icon.tpl" icon=["class" => "select-apart__btn-icon", "name" => "tab_arrow-next"]}
                        </div>
                    </div>
                    <div class="plans__data-wrap">
                        <div class="plans__data"></div>
                    </div>
                    <div class="plans__links">
                        <button class="link-section__dark plans__link-section" type="button" data-modal="genplan">
                            {$textLang = [
                                "ru" => "Генеральный план",
                                "tr" => "Genel Plan",
                                "fi" => "Yleissuunnitelma",
                                "de" => "Overordnet plan",
                                "zh" => "总体规划",
                                "sv" => "Huvudplan",
                                "lv" => "Ģenerālplāns",
                                "fa" => "طرح کلی",
                                "en" => "General Plan"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </button>
                        {$textLang = [
                            "ru" => "Скачать детали плана этажа",
                            "tr" => "Kat planı ayrıntılarını indirin",
                            "fi" => "Lataa pohjapiirroksen tiedot",
                            "de" => "Download plantegningsdetaljer",
                            "zh" => "下载平面图详细信息",
                            "sv" => "Ladda ner planlösningsdetaljer",
                            "lv" => "Lejupielādējiet detalizētu informāciju par stāva plānu",
                            "fa" => "دانلود جزئیات پلان طبقه",
                            "en" => "Download floor<br>plan details"
                        ]}
                        {if ($plansData.plans[0].info)}
                            <div class="info">
                                <div class="info-btn__modal">
                                    <div class="info-btn__modal-wrap">
                                        <p class="info-btn__modal-text">{include "views/common/components/textLanguage.tpl" textLang=$textLang}</p>
                                        <a href="{$plansData.plans[0].info}" download>
                                            {include "common/components/icon.tpl" icon=["class" => "info-btn__modal-icon", "name" => "download"]}
                                        </a>
                                    </div>
                                </div>
                                <div class="info-btn" title="{include "views/common/components/textLanguage.tpl" textLang=$textLang}">
                                    {include "common/components/icon.tpl" icon=["class" => "info-btn__icon", "name" => "info"]}
                                </div>
                            </div>
                        {/if}
                    </div>
                    <button class="btn btn-default btn-default plans-btn" type="button" data-modal="application" dir="auto">
                        {$textLang = [
                            "ru" => "Подать заявку",
                            "tr" => "Başvuruyu Gönder",
                            "fi" => "Lähettää hakemus",
                            "de" => "Send ansøgningen",
                            "zh" => "递交申请",
                            "sv" => "Lämna in ansökan",
                            "lv" => "Iesniegt pieteikumu",
                            "fa" => "درخواست ارسال کنید",
                            "en" => "Submit application"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </button>
                </div>
                <div class="plans__right"></div>
            </div>
        </div>
    </section>
{/if}
