{extends "./modal.tpl"}

{block modal}
    <div class="request-modal">
        <div class="image-block request-modal__img">
            <div class="image__wrapper">
                {$pathImage = mb_substr($img, 0, -4)}
                <picture>
                    <source srcset="{$pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                    <source srcset="{$pathImage}.jpg" media="(max-width: 420px)" />
                    <source srcset="{$pathImage}@2x.webp" type="image/webp" />
                    <img class="image image__fit image__fit_cover"
                        src="{$pathImage}@2x.jpg"
                        alt="{include "views/common/components/textLanguage.tpl" textLang=$title}"
                        width="1061"
                        height="596"
                        decoding="async"/>
                </picture>
            </div>
        </div>
        <div class="request-modal__wrap">
            <div class="request-modal__content">
                <h3 class="title request-modal__title" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$title}</h3>
                <p class="request-modal__subtitle" dir="auto">{$textLang = [
                    "ru" => "Пожалуйста, заполните эту форму",
                    "tr" => "Lütfen bu formu doldurun",
                    "fi" => "Ole hyvä ja täytä tämä lomake",
                    "de" => "Udfyld venligst denne formular",
                    "zh" => "请填写此表格",
                    "sv" => "Vänligen fyll i detta formulär",
                    "lv" => "Lūdzu, aizpildiet šo veidlapu",
                    "fa" => "لطفا این فرم را پر کنید",
                    "en" => "Please fill this form"
                ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}</p>
                {include "common/components/request.tpl" class="get-more__request"}
                <div class="request-modal__buttons">
                    <button class="btn btn-default btn-form request-modal__btn no-wrap" type="button">{include "views/common/components/textLanguage.tpl" textLang=$button}</button>
                </div>
            </div>
        </div>
    </div>
{/block}

