<form class="form request {$class}">
    <div class="request__fields">
        <div class="request__fields-item">
            <label class="request__field request__field-name">
                {$textLang = [
                    "ru" => "Ваше имя",
                    "tr" => "Adınız",
                    "fi" => "Sinun nimesi",
                    "de" => "Dit navn",
                    "zh" => "你的名字",
                    "sv" => "Ditt namn",
                    "lv" => "Tavs vārds",
                    "fa" => "اسم شما",
                    "en" => "Your name"
                ]}
                <input class="request__input request__input-name"
                    type="text"
                    dir="auto"
                    placeholder="{textformat}{include 'views/common/components/textLanguage.tpl' textLang=$textLang}{/textformat}">
            </label>
        </div>
        <div class="request__fields-item">
            <label class="request__field request__field-phone">
                {$textLang = [
                    "ru" => "Ваш номер телефона",
                    "tr" => "Telefon numaran",
                    "fi" => "Puhelinnumerosi",
                    "de" => "Dit telefonnummer",
                    "zh" => "你的电话号码",
                    "sv" => "Ditt telefonnummer",
                    "lv" => "Jūsu tālruņa numurs",
                    "fa" => "پیغام تو",
                    "en" => "Your phone namber"
                ]}
                <input class="request__input request__input-phone"
                    type="number"
                    dir="auto"
                    placeholder="{textformat}{include 'views/common/components/textLanguage.tpl' textLang=$textLang}{/textformat}">
            </label>
        </div>
        <div class="request__fields-item">
            <label class="request__field request__field-comment">
                {$textLang = [
                    "ru" => "Ваше сообщение",
                    "tr" => "Mesajın",
                    "fi" => "Viestisi",
                    "de" => "Din besked",
                    "zh" => "您的留言",
                    "sv" => "Ditt meddelande",
                    "lv" => "Tava ziņa",
                    "fa" => "پیغام تو",
                    "en" => "Your message"
                ]}
                <input class="request__input request__input-comment"
                    type="text"
                    dir="auto"
                    placeholder="{textformat}{include 'views/common/components/textLanguage.tpl' textLang=$textLang}{/textformat}">
            </label>
        </div>
    </div>
</form>
