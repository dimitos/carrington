<section class="culture">
    <div class="container culture__container">
        <div class="culture__wrap">
            <h2 class="title title__section culture__title" dir="auto">
                {$textLang = [
                    "ru" => "Культура",
                    "tr" => "Kültür",
                    "fi" => "Kulttuuri",
                    "de" => "Kultur",
                    "zh" => "文化",
                    "sv" => "Kultur",
                    "lv" => "Kultūra",
                    "fa" => "فرهنگ",
                    "en" => "Culture"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <div class="image culture__image">
                <div class="image__wrapper">
                    <picture>
                        <source srcset="/img/country/country-culture.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="/img/country/country-culture.jpg" media="(max-width: 420px)" />
                        <source srcset="/img/country/country-culture@2x.webp" type="image/webp" />
                        <img class="image__fit image__fit_cover"
                            src="/img/country/country-culture@2x.jpg"
                            alt="c{$textLang = [
                                "ru" => "Культура",
                                "tr" => "Kültür",
                                "fi" => "Kulttuuri",
                                "de" => "Kultur",
                                "zh" => "文化",
                                "sv" => "Kultur",
                                "lv" => "Kultūra",
                                "fa" => "فرهنگ",
                                "en" => "Culture"
                            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
                            width="550"
                            height="291"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
            </div>
            <p class="culture__text" dir="auto">
                {$textLang = [
                    "ru" => "Северный Кипр богат историческими достопримечательностями, песчаными пляжами и великолепными видами, но эта расслабляющая страна может предложить гораздо больше, чем достопримечательности и песок! Вы всегда получите теплый прием на Северном Кипре, и будьте уверены, что это не просто показуха.",
                    "tr" => "Kuzey Kıbrıs tarihi yerler, kumlu plajlar ve muhteşem manzaralar açısından zengindir, ancak bu rahatlatıcı ülkenin manzara ve kumdan çok daha fazlasını sunar! Kuzey Kıbrıs'ta her zaman sıcak bir şekilde karşılanacaksınız ve bunun sadece gösteri için olmadığından emin olabilirsiniz.",
                    "fi" => "Pohjois-Kypros on täynnä historiallisia kohteita, hiekkarantoja ja upeita näkymiä, mutta tämä rentouttava maa tarjoaa paljon muutakin kuin nähtävyyksiä ja hiekkaa! Tulet aina lämpimästi tervetulleeksi Pohjois-Kyprokselle, ja voit olla varma, että tämä ei ole vain esittelyä varten.",
                    "de" => "Det nordlige Cypern er rig på historiske steder, sandstrande og storslåede udsigter, men dette afslappende land har meget mere at byde på end seværdigheder og sand! Du vil altid modtage en varm velkomst i Nordcypern, og vær sikker på, at dette ikke kun er til fremvisning.",
                    "zh" => "北塞浦路斯拥有丰富的历史遗迹、沙滩和壮丽景色，但这个令人放松的国家提供的不仅仅是景点和沙滩！ 在北塞浦路斯，您将永远受到热烈欢迎，请放心，这不仅仅是为了炫耀。",
                    "sv" => "Norra Cypern är rikt på historiska platser, sandstränder och magnifik utsikt, men detta avkopplande land har mycket mer att erbjuda än sevärdheter och sand! Du kommer alltid att få ett varmt välkomnande på norra Cypern, och var säker på att detta inte bara är för uppvisning.",
                    "lv" => "Ziemeļkipra ir bagāta ar vēsturiskām vietām, smilšainām pludmalēm un brīnišķīgiem skatiem, taču šī relaksējošā valsts piedāvā daudz vairāk nekā apskates vietas un smiltis! Jūs vienmēr saņemsiet sirsnīgu uzņemšanu Ziemeļkiprā, un esiet drošs, ka tas nav paredzēts tikai izrādei.",
                    "fa" => "قبرس شمالی سرشار از مکان‌های تاریخی، سواحل شنی و مناظر باشکوه است، اما این کشور آرامش‌بخش چیزهای بیشتری نسبت به مناظر و ماسه برای ارائه دارد! همیشه در قبرس شمالی با استقبال گرمی روبرو خواهید شد و مطمئن باشید که این فقط برای نمایش نیست.",
                    "en" => "Northern Cyprus is rich in historical sites, sandy beaches and magnificent views, but this relaxing country has much more to offer than sights and sand! You will always receive a warm welcome in North Cyprus, and rest assured that this is not just for show."
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </p>
        </div>
    </div>
</section>
