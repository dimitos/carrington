<section class="hero">
    <div class="hero__img">
        <picture>
            <source srcset="/img/buying/buying-hero.webp" media="(max-width: 420px)" type="image/webp" />
            <source srcset="/img/buying/buying-hero.jpg" media="(max-width: 420px)" />
            <source srcset="/img/buying/buying-hero@2x.webp" type="image/webp" />
            <img class="image image__fit image__fit_cover hero__image"
                src="/img/buying/buying-hero@2x.jpg"
                alt="Buying a property in the Turkish Republice of Northern Cyprus"
                width="1920"
                height="648"
                decoding="async"/>
        </picture>
        <div class="hero__img-filter"></div>
    </div>
    <div class="container hero__container">
        {$textLang = [
                "ru" => "Покупка",
                "tr" => "Satın alma",
                "fi" => "Ostaminen",
                "de" => "At købe",
                "zh" => "购买",
                "sv" => "Uppköp",
                "lv" => "Pirkšana",
                "fa" => "خریداری کردن",
                "en" => "Buying"
            ]}
            {include "views/common/components/breadcrumbs.tpl" breadcrumbs=[
                "class" => "breadcrumbs__light",
                "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                "link" => "buying"
            ]}
        <div class="hero__inner">
            <h2 class="title title__section hero__title" dir="auto">
                {$textLang = [
                    "ru" => "Покупка недвижимости в Турецкой Республике Северного Кипра",
                    "tr" => "Kuzey Kıbrıs Türk Cumhuriyeti'nde mülk satın almak",
                    "fi" => "Kiinteistön ostaminen Pohjois-Kyproksen turkkilaisesta tasavallasta",
                    "de" => "Køb af en ejendom i den tyrkiske republik Nordcypern",
                    "zh" => "在北塞浦路斯土耳其共和国购买房产",
                    "sv" => "Köpa en fastighet i den turkiska republiken norra Cypern",
                    "lv" => "Īpašuma pirkšana Ziemeļkipras Turcijas Republikā",
                    "fa" => "خرید ملک در جمهوری ترک قبرس شمالی",
                    "en" => "Buying a property in the Turkish Republice of Northern Cyprus"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <p class="hero__text" dir="auto">
                {$textLang = [
                    "ru" => "Покупка недвижимости в ТРСК может быть сложной и напряженной для тех, кто не знаком с законом и процессуальными нормами. С нами покупка недвижимости будет легкой.",
                    "tr" => "KKTC'de mülk satın almak, hukuka ve yasal prosedüre aşina olmayanlar için karmaşık ve yorucu olabilir. Bizimle bir mülk satın almak kolay olacak.",
                    "fi" => "Kiinteistön ostaminen TRNC:stä voi olla monimutkaista ja raskasta niille, jotka eivät tunne lakia ja oikeudellisia menettelyjä. Meillä asunnon ostaminen on helppoa.",
                    "de" => "At købe ejendom i TRNC kan være kompliceret og anstrengende for dem, der ikke er bekendt med loven og den juridiske procedure. Hos os bliver det nemt at købe en bolig.",
                    "zh" => "对于那些不熟悉法律和法律程序的人来说，在 TRNC 购买房产可能会很复杂和费力。 有了我们，买房很容易。",
                    "sv" => "Att köpa fastighet i TRNC kan vara komplicerat och ansträngande för dem som inte är bekanta med lagen och det juridiska förfarandet. Hos oss blir det enkelt att köpa en fastighet.",
                    "lv" => "Īpašuma pirkšana TRNC var būt sarežģīta un smaga tiem, kas nepārzina likumus un juridiskās procedūras. Pie mums īpašuma iegāde būs vienkārša.",
                    "fa" => "خرید ملک در TRNC برای کسانی که با قانون و روال قانونی آشنایی ندارند می تواند پیچیده و سخت باشد. با ما خرید ملک آسان خواهد بود.",
                    "en" => "Buying property in TRNC can be complicated and strenuous for those who are not familiar with the law and legal procedure. With us, buying a property will be easy."
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </p>
            <button class="btn btn-default btn-default__white-black hero__buying-btn" type="button" data-modal="application" dir="auto">
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
    </div>
</section>
