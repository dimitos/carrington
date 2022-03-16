<section class="trips-block">
    <picture>
        <source srcset="img/images/trips-bg.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="img/images/trips-bg.jpg" media="(max-width: 420px)" />
        <source srcset="img/images/trips-bg@2x.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover trips-block__image"
            src="img/images/trips-bg@2x.jpg"
            alt="Are you interested to buy a property in North Cyprus?"
            width="1920"
            height="2078"
            decoding="async"/>
    </picture>
    <div class="container">
        {$textLang = [
            "ru" => "Ознакомительные туры",
            "tr" => "Muayene Gezileri",
            "fi" => "Tarkastusmatkat",
            "de" => "Inspektionsrejser",
            "zh" => "检查行程",
            "sv" => "Inspektionsresor",
            "lv" => "Pārbaudes braucieni",
            "fa" => "سفرهای بازرسی",
            "en" => "Inspection Trips"
        ]}
        {include "views/common/components/breadcrumbs.tpl" breadcrumbs=[
            "class" => "breadcrumbs__light",
            "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
            "link" => "trips"
        ]}
        <h2 class="title title__section trips-block__title lang-fa" dir="auto">
            {$textLang = [
                "ru" => "Вы рассматриваете возможность покупки недвижимости на Северном Кипре?",
                "tr" => "Kuzey Kıbrıs'ta bir mülk satın almayı mı düşünüyorsunuz?",
                "fi" => "Harkitsetko kiinteistön ostamista Pohjois-Kyprokselta?",
                "de" => "Overvejer du at købe en ejendom i Nordcypern?",
                "zh" => "您是否正在考虑在北塞浦路斯购买房产？",
                "sv" => "Funderar du på att köpa en fastighet på norra Cypern?",
                "lv" => "Vai apsverat iespēju iegādāties īpašumu Ziemeļkiprā?",
                "fa" => "آیا قصد خرید ملک در قبرس شمالی را دارید؟",
                "en" => "Are you considering buying a property in North Cyprus?"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </h2>
        <p class="trips-block__text lang-fa" dir="auto">
            {$textLang = [
                "ru" => "Мы можем предоставить вам бесплатную инспекционную поездку, чтобы открыть для себя этот прекрасный остров, образ жизни и показать вам недвижимость, которая соответствует вашим требованиям без каких-либо обязательств.",
                "tr" => "Bu güzel adayı, yaşam tarzını keşfetmeniz ve gereksinimlerinize uygun mülkleri hiçbir yükümlülük altına girmeden size göstermeniz için size ücretsiz bir inceleme gezisi sağlayabiliriz.",
                "fi" => "Voimme tarjota sinulle ilmaisen tarkastusmatkan tutustua tähän kauniiseen saareen, elämäntapaan ja näyttää sinulle tarpeitasi vastaavia ominaisuuksia ilman velvoitteita.",
                "de" => "Vi kan give dig en gratis inspektionsrejse for at opdage denne smukke ø, livsstil og vise dig ejendomme, der matcher dine krav uden forpligtelser.",
                "zh" => "我们可以为您提供免费考察之旅，探索这个美丽的岛屿、生活方式，并无义务向您展示符合您要求的房产。",
                "sv" => "Vi kan ge dig en gratis inspektionsresa för att upptäcka denna vackra ö, livsstil och visa dig fastigheter som matchar dina krav utan förpliktelser.",
                "lv" => "Mēs varam nodrošināt jums bezmaksas apskates braucienu, lai atklātu šo skaisto salu, dzīvesveidu un bez saistībām parādītu īpašumus, kas atbilst jūsu prasībām.",
                "fa" => "ما می‌توانیم یک سفر بازرسی رایگان برای شما فراهم کنیم تا این جزیره زیبا، سبک زندگی را کشف کنید و خواصی را به شما نشان دهیم که با نیازهای شما مطابقت دارد بدون تعهد.",
                "en" => "We can provide you with a free inspection trip to discover this beautiful island, lifestyle and show you properties that match your requirements without obligation."
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </p>
        <div class="trips-block__wrap">
            <div class="trips-description">
                <div class="trips-description__item trips-description__img">
                    <picture>
                        <source srcset="img/images/trips-01.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="img/images/trips-01.jpg" media="(max-width: 420px)" />
                        <source srcset="img/images/trips-01@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover trips-description__image"
                            src="img/images/trips-01@2x.jpg"
                            alt="We will arrange your free arrival transfer from any airport in Cyprus"
                            width="583"
                            height="300"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
                <div class="trips-description__item trips-description__content">
                    <h4 class="title trips-description__title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Мы организуем для вас бесплатный трансфер из любого аэропорта Кипра",
                            "tr" => "Kıbrıs'taki herhangi bir havaalanından ücretsiz varış transferinizi ayarlayacağız",
                            "fi" => "Järjestämme ilmaisen saapumiskuljetuksesi mistä tahansa Kyproksen lentokentältä",
                            "de" => "Vi vil arrangere din gratis ankomstoverførsel fra enhver lufthavn på Cypern",
                            "zh" => "我们将安排您从塞浦路斯任何机场的免费抵达接送服务",
                            "sv" => "Vi ordnar din kostnadsfria ankomsttransfer från valfri flygplats på Cypern",
                            "lv" => "Mēs nodrošināsim jūsu bezmaksas transfēru no jebkuras Kipras lidostas",
                            "fa" => "ما ترانسفر ورود رایگان شما را از هر فرودگاهی در قبرس ترتیب می دهیم",
                            "en" => "We will arrange your free arrival transfer from any airport in Cyprus"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="trips-description__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Мы организуем для вас трансфер из аэропорта в отель, в котором вы пробудете 3 дня. Здесь у вас будет возможность приобрести недвижимость в собственности Carrington Group на Северном Кипре.",
                            "tr" => "Havalimanından 3 gün kalacağınız tesise transferinizi ayarlayacağız. Burada, Kuzey Kıbrıs'ta bir Carrington Group mülkünde ev sahipliği deneyimi yaşama fırsatınız olacak.",
                            "fi" => "Järjestämme kuljetuksesi lentokentältä majoituspaikkaan, jossa oleskelet 3 päivää. Täällä sinulla on mahdollisuus kokea asunnon omistaminen Carrington Groupin kiinteistössä Pohjois-Kyproksella.",
                            "de" => "Vi arrangerer din transfer fra lufthavnen til den ejendom, du skal bo i i 3 dage. Her får du mulighed for at opleve boligejerskab i en Carrington Group ejendom i Nordcypern.",
                            "zh" => "我们将安排您从机场到您将入住 3 天的酒店。 在这里，您将有机会在北塞浦路斯的 Carrington Group 房产中体验置业。",
                            "sv" => "Vi ordnar din transfer från flygplatsen till fastigheten där du ska bo i 3 dagar. Här kommer du att ha en möjlighet att uppleva bostadsägande i en Carrington Group-fastighet på norra Cypern.",
                            "lv" => "Mēs organizēsim jūsu transfēru no lidostas uz īpašumu, kurā uzturēsities 3 dienas. Šeit jums būs iespēja piedzīvot mājas īpašumtiesības Carrington Group īpašumā Ziemeļkiprā.",
                            "fa" => "ما ترتیب انتقال شما را از فرودگاه به ملکی که به مدت 3 روز در آن خواهید بود، خواهیم داد. در اینجا شما فرصتی برای تجربه مالکیت خانه در ملک Carrington Group در قبرس شمالی خواهید داشت.",
                            "en" => "We will arrange your transfer from the airport to the property you will stay in for 3 days. Here you will have an opportunity to experience home ownership in a Carrington Group property in North Cyprus."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
            </div>
            <div class="trips-description">
                <div class="trips-description__item trips-description__img">
                    <picture>
                        <source srcset="img/images/trips-02.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="img/images/trips-02.jpg" media="(max-width: 420px)" />
                        <source srcset="img/images/trips-02@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover trips-description__image"
                            src="img/images/trips-02@2x.jpg"
                            alt="Accommodation"
                            width="583"
                            height="300"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
                <div class="trips-description__item trips-description__content">
                    <h4 class="title trips-description__title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Размещение",
                            "tr" => "Konaklama",
                            "fi" => "Majoitus",
                            "de" => "Indkvartering",
                            "zh" => "住所",
                            "sv" => "boende",
                            "lv" => "Izmitināšana",
                            "fa" => "محل اقامت",
                            "en" => "Accommodation"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="trips-description__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "3 ночи бесплатного проживания в роскошной собственности, разработанной Carrington Group (1, 2 или 3 спальни, по мере необходимости). Вы, конечно же, можете продлить свое пребывание в Carrington! Бесплатный приветственный набор по прибытии.",
                            "tr" => "Carrington Group tarafından geliştirilen lüks bir tesiste 3 gece ücretsiz konaklama (gerektiğinde 1, 2 veya 3 yatak odalı). Elbette Carrington ile kalış sürenizi uzatabilirsiniz! Varışta ücretsiz karşılama paketi.",
                            "fi" => "3 yötä ilmaista majoitusta Carrington Groupin kehittämässä luksuskiinteistössä (1, 2 tai 3 makuuhuonetta tarpeen mukaan). Olet tietysti tervetullut jatkamaan oleskeluasi Carringtonissa! Ilmainen tervetuliaispaketti saavuttaessa.",
                            "de" => "3 nætter gratis overnatning i en luksusejendom udviklet af Carrington Group (1, 2 eller 3-værelses efter behov). Du er selvfølgelig velkommen til at forlænge dit ophold hos Carrington! Gratis velkomstpakke ved ankomst.",
                            "zh" => "在 Carrington Group 开发的豪华物业中免费住宿 3 晚（1、2 或 3 间卧室，视需要而定）。 当然，欢迎您延长您在 Carrington 的逗留时间！ 抵达时免费欢迎礼包。",
                            "sv" => "3 nätter gratis boende i en lyxfastighet utvecklad av Carrington Group (1, 2 eller 3 sovrum, efter behov). Du är självklart välkommen att förlänga din vistelse hos Carrington! Gratis välkomstpaket vid ankomst.",
                            "lv" => "3 naktis bezmaksas izmitināšana luksusa īpašumā, ko izstrādājusi Carrington Group (1, 2 vai 3 guļamistabu pēc vajadzības). Jūs, protams, esat laipni aicināti pagarināt savu uzturēšanos kopā ar Carrington! Ierodoties bezmaksas viesmīlības komplekts.",
                            "fa" => "3 شب اقامت رایگان در یک ملک لوکس توسعه یافته توسط Carrington Group (1، 2، یا 3 خوابه، در صورت نیاز). البته می توانید اقامت خود را با Carrington تمدید کنید! بسته خوش آمدگویی رایگان در بدو ورود",
                            "en" => "3 nights of free accommodation in a luxury property developed by Carrington Group (1, 2, or 3-bedrooms, as required). You are of course welcome to extend your stay with Carrington! Free welcome pack on arrival."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
            </div>
            <div class="trips-description">
                <div class="trips-description__item trips-description__img">
                    <picture>
                        <source srcset="img/images/trips-03.webp" media="(max-width: 420px)" type="image/webp" />
                        <source srcset="img/images/trips-03.jpg" media="(max-width: 420px)" />
                        <source srcset="img/images/trips-03@2x.webp" type="image/webp" />
                        <img class="image image__fit image__fit_cover trips-description__image"
                            src="img/images/trips-03@2x.jpg"
                            alt="We will show you as much as you want to see"
                            width="583"
                            height="300"
                            loading="lazy"
                            decoding="async"/>
                    </picture>
                </div>
                <div class="trips-description__item trips-description__content">
                    <h4 class="title trips-description__title lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Мы покажем вам столько, сколько вы хотите увидеть",
                            "tr" => "Görmek istediğin kadar sana göstereceğiz",
                            "fi" => "Näytämme sinulle niin paljon kuin haluat nähdä",
                            "de" => "Vi vil vise dig så meget, du vil se",
                            "zh" => "我们将向您展示您想看的所有内容",
                            "sv" => "Vi visar dig så mycket du vill se",
                            "lv" => "Mēs jums parādīsim tik daudz, cik vēlaties redzēt",
                            "fa" => "ما به شما نشان خواهیم داد تا آنجا که می خواهید ببینید",
                            "en" => "We will show you as much as you want to see"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </h4>
                    <p class="trips-description__text lang-fa" dir="auto">
                        {$textLang = [
                            "ru" => "Мы покажем вам достопримечательности и объекты, доступные рядом с нашими проектами. Процесс покупки и все юридические аспекты будут объяснены вместе с другой информацией, необходимой для принятия решения. Наша цель будет заключаться в том, чтобы воплотить вашу мечту в реальность.",
                            "tr" => "Projelerimizin yakınında bulunan turistik yerleri ve tesisleri size gösteriyoruz. Satın alma süreci ve tüm yasallıklar, karar vermeniz için gereken diğer bilgilerle birlikte açıklanacaktır. Amacımız sizin için bir hayali gerçekleştirmek olacaktır.",
                            "fi" => "Esittelemme projektiemme lähellä olevat nähtävyydet ja tilat. Ostoprosessi ja kaikki lait selitetään sekä muut tiedot, joita tarvitset päätöksen tekemiseen. Tavoitteemme on tehdä unelmastasi totta.",
                            "de" => "Vi viser dig de seværdigheder og faciliteter, der er tilgængelige i nærheden af vores projekter. Købsprocessen og alle lovligheder vil blive forklaret sammen med andre oplysninger, som du skal bruge for at træffe en beslutning. Vores mål vil være at gøre en drøm til virkelighed for dig.",
                            "zh" => "我们向您展示我们项目附近的景点和设施。 将解释购买过程和所有合法性以及您做出决定所需的其他信息。 我们的目标是为您实现梦想。",
                            "sv" => "Vi visar dig de sevärdheter och faciliteter som finns i närheten av våra projekt. Köpprocessen och alla lagligheter kommer att förklaras tillsammans med annan information som du behöver för att fatta ett beslut. Vårt mål kommer att vara att förverkliga en dröm för dig.",
                            "lv" => "Mēs parādām apskates vietas un iespējas, kas ir pieejamas mūsu projektu tuvumā. Pirkšanas process un visas likumības tiks izskaidrotas, kā arī cita informācija, kas jums nepieciešama lēmuma pieņemšanai. Mūsu mērķis būs īstenot jūsu sapni.",
                            "fa" => "ما مناظر و امکانات موجود در نزدیکی پروژه هایمان را به شما نشان می دهیم. مراحل خرید و کلیه موارد قانونی به همراه سایر اطلاعاتی که برای تصمیم گیری نیاز دارید توضیح داده خواهد شد. هدف ما تحقق یک رویا برای شما خواهد بود.",
                            "en" => "We show you the sights and facilities available nearby our projects. The buying process and all legalities will be explained along with other information that you need to make a decision. Our aim will be to make a dream come true for you."
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
