{extends "./modal.tpl"}

{block modal}
    <div class="inspectionTrip-modal">
        <div class="image-block inspectionTrip-modal__img">
            <div class="image__wrapper">
                {$pathImage = mb_substr($img, 0, -4)}
                <picture>
                    <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                    <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                    <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                    <img class="image image__fit image__fit_cover"
                        src="{$pathImage}@2x.jpg"
                        alt="{$title}"
                        width="1061"
                        height="596"/>
                </picture>
            </div>
        </div>
        <div class="inspectionTrip-modal__wrap">
            <div class="inspectionTrip-modal__content">
                <h3 class="title inspectionTrip-modal__title lang-fa" dir="auto">
                    {include "views/common/components/textLanguage.tpl" textLang=$title}
                </h3>
                <ul class="inspectionTrip-modal__list">
                    <li class="inspectionTrip-modal__item lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Бесплатный трансфер из любого аэропорта Кипра.",
                            "tr" => "Kıbrıs'taki herhangi bir havaalanından ücretsiz varış transferi.",
                            "fi" => "Ilmainen saapumiskuljetus mistä tahansa Kyproksen lentokentältä.",
                            "de" => "Gratis ankomsttransport fra enhver lufthavn på Cypern.",
                            "zh" => "塞浦路斯任何机场的免费抵达接送服务。",
                            "sv" => "Gratis ankomsttransfer från valfri flygplats på Cypern.",
                            "lv" => "Bezmaksas ierašanās transfērs no jebkuras Kipras lidostas.",
                            "fa" => "ترانسفر رایگان ورود از هر فرودگاه در قبرس.",
                            "en" => "Free arrival transfer from any airport in Cyprus."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="inspectionTrip-modal__item lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "3 ночи бесплатного проживания в собственности, разработанной Carrington Group (1, 2 или 3 спальни, по мере необходимости)",
                            "tr" => "Carrington Group tarafından geliştirilen bir tesiste 3 gece ücretsiz konaklama (gerektiğinde 1, 2 veya 3 yatak odalı)",
                            "fi" => "3 yötä ilmaista majoitusta Carrington Groupin kehittämässä kiinteistössä (1, 2 tai 3 makuuhuonetta tarpeen mukaan)",
                            "de" => "3 nætters gratis indkvartering i en ejendom udviklet af Carrington Group (1, 2 eller 3-værelses efter behov)",
                            "zh" => "在 Carrington Group 开发的物业中免费住宿 3 晚（1、2 或 3 居室，视需要而定）",
                            "sv" => "3 nätter gratis boende i en fastighet utvecklad av Carrington Group (1, 2 eller 3 sovrum, efter behov)",
                            "lv" => "3 naktis bezmaksas izmitināšana īpašumā, ko izstrādājusi Carrington Group (1, 2 vai 3 guļamistabu pēc vajadzības)",
                            "fa" => "3 شب اقامت رایگان در ملکی که توسط Carrington Group ساخته شده است (1، 2 یا 3 خوابه، در صورت نیاز)",
                            "en" => "3 nights of free accommodation in a property developed by Carrington Group (1, 2, or 3-bedrooms, as required)"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                    <li class="inspectionTrip-modal__item lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Бесплатный приветственный набор по прибытии.",
                            "tr" => "Varışta ücretsiz karşılama paketi.",
                            "fi" => "Ilmainen tervetuliaispaketti saavuttaessa.",
                            "de" => "Gratis velkomstpakke ved ankomst.",
                            "zh" => "抵达时免费欢迎礼包。",
                            "sv" => "Gratis välkomstpaket vid ankomst.",
                            "lv" => "Ierodoties bezmaksas viesmīlības komplekts.",
                            "fa" => "بسته خوش آمدگویی رایگان در بدو ورود",
                            "en" => "Free welcome pack on arrival."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </li>
                </ul>
                {include "common/components/request.tpl" class="get-more__request"}
                <div class="inspectionTrip-modal__buttons">
                    <button class="btn btn-default btn-form inspectionTrip-modal__btn no-wrap" type="button">
                        {$textLang = [
                            "ru" => "Забронировать поездку",
                            "tr" => "Kitap İnceleme Gezisi",
                            "fi" => "Kirjantarkastusmatka",
                            "de" => "Book Besigtigelsestur",
                            "zh" => "图书检查之旅",
                            "sv" => "Boka besiktningsresa",
                            "lv" => "Grāmatu apskates brauciens",
                            "fa" => "سفر بازرسی کتاب",
                            "en" => "Book Inspection Trip"
                        ]}
                        {include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </button>
                    {$textLang = [
                        "ru" => "Подробнее",
                        "tr" => "Daha fazla ayrıntı görün",
                        "fi" => "Katso lisätietoja",
                        "de" => "Se flere detaljer",
                        "zh" => "查看更多详情",
                        "sv" => "Se mer information",
                        "lv" => "Skatīt sīkāku informāciju",
                        "fa" => "جزئیات بیشتر را ببینید",
                        "en" => "See more details"
                    ]}
                    {include "common/components/link-section.tpl" link=["class" => "link-section__white inspectionTrip-modal__link-section", "href" => "trips", "textLang" => $textLang, "icon" => "false"]}
                </div>
            </div>
        </div>
    </div>
{/block}
