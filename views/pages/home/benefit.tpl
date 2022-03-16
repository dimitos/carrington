<section class="benefit">
    <div class="benefit__bg">
        <div class="container">
            <div class="ellipse benefit__ellipse-left"></div>
            <div class="ellipse benefit__ellipse-right"></div>
            <svg class="image-under-text" viewBox="0 0 895 239" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>
                    {$textLang = [
                        "ru" => "Репутация, растущая благодаря успеху",
                        "tr" => "Başarıyla Artan İtibar",
                        "fi" => "Menestyksen myötä kasvava maine",
                        "de" => "Et ry, der vokser ved succes",
                        "zh" => "成功的声誉",
                        "sv" => "Ett rykte som växer på framgång",
                        "lv" => "Reputācija, kas pieaug, pateicoties panākumiem",
                        "fa" => "شهرت در حال رشد در موفقیت",
                        "en" => "A Reputation Growing On Success"
                    ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </title>
                <defs>
                    <clipPath id="growing-path">
                        <text class="image-under-text__tetx" x="0" y="200">
                            {$textLang = [
                                "ru" => "Растущий",
                                "tr" => "büyüyen",
                                "fi" => "Kasvava",
                                "de" => "Vokser",
                                "zh" => "生长",
                                "sv" => "Pieaug",
                                "lv" => "Växande",
                                "fa" => "رو به رشد",
                                "en" => "GrowingGrowing"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                        </text>
                    </clipPath>
                </defs>
                <image xlink:href="img/images/image_text-benefit.jpg" clip-path="url(#growing-path)" width="100%" height="100%" preserveAspectRatio="none"></image>
            </svg>
        </div>
    </div>
    <div class="benefit__content">
        <div class="container">
            <div class="benefit__werapper">
                <div class="benefit__left">
                    <h2 class="title title__section benefit__title" dir="auto">
                        {$textLang = [
                            "ru" => "Репутация, растущая благодаря успеху",
                            "tr" => "Başarıyla Artan İtibar",
                            "fi" => "Menestyksen myötä kasvava maine",
                            "de" => "Et ry, der vokser ved succes",
                            "zh" => "成功的声誉",
                            "sv" => "Ett rykte som växer på framgång",
                            "lv" => "Reputācija, kas pieaug, pateicoties panākumiem",
                            "fa" => "شهرت در حال رشد در موفقیت",
                            "en" => "A Reputation Growing On Success"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h2>
                    <p class="benefit__left-text" dir="auto">
                        {$textLang = [
                            "ru" => "Carrington Group проектирует, строит и продает качественные виллы и апартаменты на Северном Кипре, специализируясь на прибрежной зоне Северного Кипра к востоку от Кирении, возможно, самой красивой части острова, которая содержит не одну, а три охраняемых природных зоны.",
                            "tr" => "Carrington Group, Kuzey Kıbrıs'ın Girne'nin doğusundaki kıyı bölgesinde uzmanlaşmış, Kuzey Kıbrıs'ta kaliteli villalar ve apartmanlar tasarlar, inşa eder ve satar.",
                            "fi" => "Carrington Group suunnittelee, rakentaa ja myy laadukkaita huviloita ja huoneistoja Pohjois-Kyproksella erikoistuen Pohjois-Kyproksen rannikkoalueelle Kyrenian itäpuolella, saaren luultavasti kauneimmassa osassa, joka sisältää ei yhden vaan kolme luonnonkauniista suojelualuetta.",
                            "de" => "Carrington Group designer, bygger og sælger kvalitetsvillaer og -lejligheder i det nordlige Cypern med speciale i kystområdet i det nordlige Cypern øst for Kyrenia, velsagtens den smukkeste del af øen, der ikke indeholder én men tre beskyttede områder med naturlig skønhed.",
                            "zh" => "Carrington Group 在北塞浦路斯设计、建造和销售优质别墅和公寓，专注于凯里尼亚以东的北塞浦路斯沿海地区，可以说是岛上最美丽的部分，其中包含三个自然美景保护区。",
                            "sv" => "Carrington Group designar, bygger och säljer kvalitetsvillor och -lägenheter på norra Cypern som specialiserat sig på kustområdet norra Cypern öster om Kyrenia, utan tvekan den vackraste delen av ön som innehåller inte bara en utan tre skyddade områden av naturlig skönhet.",
                            "lv" => "Carrington Group projektē, būvē un pārdod kvalitatīvas villas un dzīvokļus Ziemeļkiprā, kas specializējas Ziemeļkipras piekrastes zonā uz austrumiem no Kirēnijas, kas, iespējams, ir skaistākā salas daļa, kurā ir ne viena, bet trīs aizsargājamas dabas skaistuma teritorijas.",
                            "fa" => "گروه کارینگتون ویلاها و آپارتمان های با کیفیت را در قبرس شمالی طراحی، می سازد و به فروش می رساند که متخصص در منطقه ساحلی قبرس شمالی در شرق گیرنه است، که مسلما زیباترین قسمت جزیره است که نه یک بلکه سه منطقه حفاظت شده از زیبایی طبیعی را در خود جای داده است.",
                            "en" => "Carrington Group designs, builds, and sells quality villas and apartments in North Cyprus specializing in the coastal area of Northern Cyprus east of Kyrenia, arguably the most beautiful part of the island that contains not one but three protected areas of natural beauty."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                    <a class="btn btn-default hero__swiper-slide-btn" href="aboutus" dir="auto">
                        {$textLang = [
                            "ru" => "О нас",
                            "tr" => "Hakkımızda",
                            "fi" => "Meistä",
                            "de" => "Om os",
                            "zh" => "关于我们",
                            "sv" => "Om oss",
                            "lv" => "Par mums",
                            "fa" => "درباره ما",
                            "en" => "About Us"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </a>
                </div>
                <div class="benefit__right">
                    <div class="benefit-slider unselectable">
                        <div class="swiper benefit__swiper">
                            <div class="swiper-wrapper benefit__swiper-wrapper">
                                {foreach $serviceData as $item}
                                    {if $item@iteration is div by 5}{break}{/if}
                                    {$pathImage = mb_substr($item.imagePane, 0, -4)}
                                    <div class="swiper-slide benefit__swiper-slide">
                                        <a class="benefit__swiper-slide-wrap" href="{$item.link}">
                                            <div class="bg-filter benefit-slide__bg-filter"></div>
                                            <div class="benefit__swiper-slide-shaped {if ($item.shaped == "true")}shaped-form{/if}">
                                                <picture>
                                                    <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                                    <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                                                    <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                                                    <img class="benefit__swiper-slide-image image image__fit image__fit_cover"
                                                        src="{$pathImage}@2x.jpg"
                                                        alt="{include "views/common/components/textLanguage.tpl" textLang=$item.alt}"
                                                        width="387"
                                                        height="474"
                                                        loading="lazy"
                                                        decoding="async"/>
                                                </picture>
                                            </div>
                                            <div class="benefit__swiper-slide-content">
                                                <div class="title__wrap lang-fa">
                                                    {include "common/components/icon.tpl" icon=["class" => "benefit-title__icon", "name" => "arrow-right"]}
                                                    <h4 class="benefit__swiper-slide-title" dir="auto">
                                                        {include "views/common/components/textLanguage.tpl" textLang=$item.title}
                                                    </h4>
                                                </div>
                                                <p class="benefit__swiper-slide-text lang-fa" dir="auto">
                                                    {if ($item.textPreview.en != "")}{include "views/common/components/textLanguage.tpl" textLang=$item.textPreview}{/if}
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
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
            </div>
            {$textLang = [
                "ru" => "Cмотреть все услуги",
                "tr" => "Tüm Hizmetleri Görüntüle",
                "fi" => "Katso kaikki palvelut",
                "de" => "Se alle tjenester",
                "zh" => "查看所有服务",
                "sv" => "Se alla tjänster",
                "lv" => "Skatīt visus pakalpojumus",
                "fa" => "مشاهده تمام خدمات",
                "en" => "View all Services"
            ]}
            {include "common/components/link-section.tpl" link=["class" => "link-section__dark benefit__link-section", "href" => "services", "textLang" => $textLang, "icon" => "false"]}
        </div>
    </div>
</section>
