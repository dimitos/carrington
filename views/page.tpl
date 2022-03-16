{$textLang = [
    "ru" => "ru",
    "tr" => "tr",
    "fi" => "fi",
    "de" => "de",
    "zh" => "zh",
    "sv" => "sv",
    "lv" => "lv",
    "fa" => "fa",
    "en" => "en"
]}
{$taxtLang = "{include "views/common/components/textLanguage.tpl" textLang=$textLang}"}

<!DOCTYPE html>
<html class="page page_{$page->name} page-{$taxtLang}" lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="viewport-fit=cover, width=device-width, initial-scale=1">

        {* Title, description, etc *}
        {include "common/page/head/seo.tpl"}

        {* Загрузка шрифтов *}
        {include "common/page/head/loadfonts.tpl"}

        {* Фавиконки *}
        {include "common/page/head/favicons.tpl"}

        {* Микроразметка Open Graph *}
        {include "common/page/head/open-graph.tpl"}

        {* Микроразметка Schema.org *}
        {include "common/page/head/schema.tpl"}

        {* Стили, общие для всех страниц *}
        {$common_styles}

        {* Стили текущей страницы *}
        {if !empty($page->styles)}
            {$page->styles}
        {/if}

        {* Критические скрипты *}
        {$inline_scripts}

        {if $smarty.env.MODE === "prod"}
            {* {include "blocks/counters.tpl"} *}
        {/if}
    </head>

    <body class="page__body page__body_{$page->name}">
        <script>checkWebpSupport();</script>

        {* Основной заголовок страницы *}
        {* <h1 class="page__h1 visually-hidden">{$meta->h1}</h1> *}
        <h1 class="page__h1 visually-hidden">
            {if $lang == "ru"}Развитие недвижимости на Северном Кипре - Роскошные виллы и апартаменты на Кипре
            {elseif $lang == "tr"}Kuzey Kıbrıs Emlak Geliştirme - Lüks Villa ve Apartlar Kıbrıs
            {elseif $lang == "fi"}Pohjois-Kypros Property Development - Luxury Villa and Apartments Kypros
            {elseif $lang == "de"}Nordcypern Ejendomsudvikling - Luksus villa og lejligheder Cypern
            {elseif $lang == "zh"}北塞浦路斯房地产开发 - 塞浦路斯豪华别墅和公寓
            {elseif $lang == "sv"}Norra Cypern Fastighetsutveckling - Lyxvilla och lägenheter Cypern
            {elseif $lang == "lv"}Ziemeļkipras īpašuma attīstība - Luksusa villa un dzīvokļi Kipra
            {elseif $lang == "fa"}"توسعه املاک قبرس شمالی - ویلا و آپارتمان لوکس قبرس
            {else}North Cyprus Property Development - Luxury Villa and Apartments Cyprus
            {/if}
        </h1>

        {* Шапка страницы *}
        {$headerDecor = "header__light"}
        {if (($page->name == "services") || ($page->name == "service") || ($page->name == "aboutus") || ($page->name == "buying") || ($page->name == "projects"))}
            {$headerDecor = "header__dark"}
        {/if}
        {include "common/components/header.tpl" header=[
            "class" => "{$headerDecor} page__header page__header_{$page->name}"
        ]}

        {* Меню страницы *}
        {include "common/components/menu.tpl"}

        {* Основной контент страницы *}
        <main class="{$page->name} page__main page__main_{$page->name}">
            {block main}{/block}
        </main>

        {* Футер страницы *}
        {include "common/components/footer.tpl" footer=[
            "class" => "page__footer page__footer_{$page->name}"
        ]}

        {* Кнопка наверх *}
        {include "common/components/btnPageUp.tpl"}

        {* Модалки *}
        <div class="intopModal__wrap">
            {$callTitle = [
                "ru" => "Позвонить тебе первой?",
                "tr" => "Önce seni aradın mı?",
                "fi" => "Soitatko sinulle ensin?",
                "de" => "Ringer du først?",
                "zh" => "先给你打电话？",
                "sv" => "Ring dig först?",
                "lv" => "Piezvanīt tev vispirms?",
                "fa" => "اول بهت زنگ بزنم؟",
                "en" => "Call you first?"
            ]}
            {$callBtn = [
                "ru" => "Позвони мне",
                "tr" => "Beni ara",
                "fi" => "Soita minulle",
                "de" => "Ring til mig",
                "zh" => "打电话给我",
                "sv" => "Ring mig",
                "lv" => "Piezvani man",
                "fa" => "به من زنگ بزن",
                "en" => "Call me"
            ]}
            {include "common/page/modals/request.tpl"
                eng="callBack"
                title=$callTitle
                img="/img/images/modal-img_03.jpg"
                button=$callBtn}

            {$bookTrip = [
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
            {include "common/page/modals/request.tpl"
                eng="bookTrip"
                title=$bookTrip
                img="/img/images/modal-img_04.jpg"
                button=$bookTrip}

            {if ($page->name == "project")}
                {$textLang = [
                    "ru" => "Бесплатная 3-х дневная ознакомительная поездка на Северный Кипр!",
                    "tr" => "Kuzey Kıbrıs'a 3 günlük ücretsiz inceleme gezisi!",
                    "fi" => "Ilmainen 3 päivän katsastusmatka Pohjois-Kyprokselle!",
                    "de" => "Gratis 3 dages inspektionsrejse til Nordcypern!",
                    "zh" => "北塞浦路斯3天免费考察之旅！",
                    "sv" => "Gratis 3 dagars inspektionsresa till norra Cypern!",
                    "lv" => "Bezmaksas 3 dienu apskates brauciens uz Ziemeļkipru!",
                    "fa" => "سفر بازرسی 3 روزه رایگان به قبرس شمالی!",
                    "en" => "Free 3 days inspection trip to North Cyprus!"
                ]}
                {include "common/page/modals/inspectionTrip.tpl"
                eng="inspectionTrip"
                title=$textLang
                img="/img/images/modal-img_02.jpg"}
            {/if}

            {if ($page->name == "project" && $plansData[$id].plans)}
                {include "common/page/modals/genplan.tpl" eng="genplan"}
            {/if}

            {if ($page->name == "project" || $page->name == "aboutus" || $page->name == "buying")}
                {$submit = [
                    "ru" => "Подать заявку",
                    "tr" => "Başvuruyu Gönder",
                    "fi" => "Lähettää hakemus",
                    "de" => "Send ansøgningen",
                    "zh" => "提交申请表",
                    "sv" => "Lämna in ansökan",
                    "lv" => "Iesniegt pieteikumu",
                    "fa" => "درخواست ارسال کنید",
                    "en" => "Submit application"
                ]}
                {include "common/page/modals/request.tpl"
                    eng="application"
                    title=$submit
                    img="/img/images/modal-img_05.jpg"
                    button=$submit}
            {/if}

            {include "common/page/modals/thanks.tpl" eng="thanks"}

            {if ($page->name == "project" || $page->name == "aboutus")}
                {include "common/page/modals/view.tpl" eng="view"}
            {/if}
        </div>

        {* Уведомления *}
        <div class="page__notifications"></div>

        {if ($page->name == "contacts")}
            <script src="https://api-maps.yandex.ru/2.1?apikey=29efabea-a274-4174-b472-b2f49abef7c2&lang=ru_RU"></script>
        {/if}

        {* Вендорные скрипты *}
        {$vendor_scripts}
        <script> var $body = $("body"); </script>

        {* Скрипты, общие для всех страниц *}
        {$common_scripts}

        {* Скрипты текущей страницы *}
        {if !empty($page->scripts)}
            {$page->scripts}
        {/if}
    </body>
</html>
