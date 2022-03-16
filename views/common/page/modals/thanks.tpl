{extends "./modal.tpl"}

{block modal}
    <div class="thanks-modal">
        <div class="image thanks-modal__img">
            <div class="image__wrapper">
                <picture>
                    <source srcset="/img/images/modal-img_01.webp" media="(max-width: 420px)" type="image/webp" />
                    <source srcset="/img/images/modal-img_01.jpg" media="(max-width: 420px)" />
                    <source srcset="/img/images/modal-img_01@2x.webp" type="image/webp" />
                    <img class="image__fit image__fit_cover"
                        src="/img/images/modal-img_01@2x.jpg"
                        alt="Thank you! Your application has been accepted"
                        width="564"
                        height="293"
                        decoding="async"/>
                </picture>
            </div>
        </div>
        <div class="thanks-modal__content">
            <p class="thanks-text">
                {$textLang = [
                    "ru" => "Спасибо",
                    "tr" => "Teşekkür ederim",
                    "fi" => "Kiitos",
                    "de" => "tak skal du have",
                    "zh" => "谢谢",
                    "sv" => "Tack",
                    "lv" => "Paldies",
                    "fa" => "متشکرم",
                    "en" => "Thank you"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </p>
            <p class="thanks-text">
                {$textLang = [
                    "ru" => "Ваша заявка принята",
                    "tr" => "Başvurunuz kabul edildi",
                    "fi" => "Hakemuksesi on hyväksytty",
                    "de" => "Din ansøgning er blevet accepteret",
                    "zh" => "您的申请已被接受",
                    "sv" => "Din ansökan har godkänts",
                    "lv" => "Jūsu pieteikums ir pieņemts",
                    "fa" => "درخواست شما پذیرفته شده است",
                    "en" => "Your application has been accepted"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </p>
            {include "views/common/components/icon.tpl" icon=["class" => "thanks-modal__icon", "name" => "check"]}
        </div>
    </div>
{/block}
