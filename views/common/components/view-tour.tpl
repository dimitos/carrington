<section class="view-tour">
    <div class="view-tour__background">
        <div class="video__wrap">
            <video class="video video__track" preload="auto" width="1920" height="360" autoplay playsinline muted loop>
                <source type="video/mp4" src="video/view-tour.mp4">
                <source type="video/webm" src="video/view-tour.webm">
            </video>
        </div>
        <div class="bg-filter view-tour__bg-filter"></div>
    </div>
    <div class="container">
        <div class="view-tour__wrap">
            <h2 class="title title__section view-tour__title">
                {$textLang = [
                    "ru" => "Откройте для себя объекты в туре 360°",
                    "tr" => "360 Turda nesneleri keşfedin",
                    "fi" => "Tutustu esineisiin 360-kierroksella",
                    "de" => "Opdag objekter i en 360-tur",
                    "zh" => "在 360 度环游中发现对象",
                    "sv" => "Upptäck objekt i en 360-rundtur",
                    "lv" => "Atklājiet objektus 360 grādu ceļojumā",
                    "fa" => "اشیاء را در یک تور 360 کشف کنید",
                    "en" => "Discover objects in a 360 Tour"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h2>
            <a class="btn btn-default view-tour__btn no-wrap" href="#">
                {$textLang = [
                    "ru" => "Посмотреть 360 тур",
                    "tr" => "360 Turu Görüntüle",
                    "fi" => "Katso 360-kierros",
                    "de" => "Se 360-rundvisning",
                    "zh" => "查看 360 度全景游览",
                    "sv" => "Visa 360-rundtur",
                    "lv" => "Skatīt 360 grādu ceļojumu",
                    "fa" => "مشاهده تور 360",
                    "en" => "View 360 Tour"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </a>
        </div>
    </div>
</section>
