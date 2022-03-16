<section class="get-more">
    <picture>
        <source srcset="img/images/get-more.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="img/images/get-more.jpg" media="(max-width: 420px)" />
        <source srcset="img/images/get-more@2x.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover get-more__image"
            src="img/images/get-more@2x.jpg"
            alt="{$textLang = [
                    "ru" => "Заполните следующую форму, чтобы забронировать бесплатную 3-дневную ознакомительную поездку на Северный Кипр.",
                    "tr" => "Kuzey Kıbrıs'a 3 günlük ücretsiz bir inceleme gezisi rezervasyonu yapmak için lütfen aşağıdaki formu doldurun",
                    "fi" => "Täytä seuraava lomake varataksesi ilmaisen 3 päivän tarkastusmatkan Pohjois-Kyprokselle",
                    "de" => "Udfyld venligst følgende formular for at bestille en gratis 3-dages inspektionsrejse til Nordcypern",
                    "zh" => "请填写以下表格预订北塞浦路斯为期 3 天的免费考察之旅",
                    "sv" => "Vänligen fyll i följande formulär för att boka en gratis 3 dagars inspektionsresa till norra Cypern",
                    "lv" => "Lūdzu, aizpildiet šo veidlapu, lai rezervētu bezmaksas 3 dienu apskates braucienu uz Ziemeļkipru",
                    "fa" => "لطفا فرم زیر را برای رزرو یک سفر بازرسی 3 روزه رایگان به قبرس شمالی پر کنید",
                    "en" => "Please fill the following form to book a free 3 day inspection trip to North Cyprus"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}"
            width="1920"
            height="742"
            loading="lazy"
            decoding="async"/>
    </picture>
    <div class="container">
        <div class="get-more__wrap">
            <h2 class="get-more__title lang-fa" dir="auto">
                {$textLang = [
                    "ru" => "Заполните следующую форму, чтобы забронировать бесплатную 3-дневную ознакомительную поездку на Северный Кипр.",
                    "tr" => "Kuzey Kıbrıs'a 3 günlük ücretsiz bir inceleme gezisi rezervasyonu yapmak için lütfen aşağıdaki formu doldurun",
                    "fi" => "Täytä seuraava lomake varataksesi ilmaisen 3 päivän tarkastusmatkan Pohjois-Kyprokselle",
                    "de" => "Udfyld venligst følgende formular for at bestille en gratis 3-dages inspektionsrejse til Nordcypern",
                    "zh" => "请填写以下表格预订北塞浦路斯为期 3 天的免费考察之旅",
                    "sv" => "Vänligen fyll i följande formulär för att boka en gratis 3 dagars inspektionsresa till norra Cypern",
                    "lv" => "Lūdzu, aizpildiet šo veidlapu, lai rezervētu bezmaksas 3 dienu apskates braucienu uz Ziemeļkipru",
                    "fa" => "لطفا فرم زیر را برای رزرو یک سفر بازرسی 3 روزه رایگان به قبرس شمالی پر کنید",
                    "en" => "Please fill the following form to book a free 3 day inspection trip to North Cyprus"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            {include "common/components/request.tpl" class="get-more__request"}
            <button id="form1" class="btn btn-default btn-form get-more__btn" type="button">
                {$textLang = [
                    "ru" => "Отправить",
                    "tr" => "göndermek",
                    "fi" => "lähettää",
                    "de" => "sende",
                    "zh" => "发送",
                    "sv" => "skicka",
                    "lv" => "nosūtīt",
                    "fa" => "ارسال",
                    "en" => "Submit"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </button>
        </div>
    </div>
</section>
