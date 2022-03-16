<header class="header header__line {$header.class} unselectable lock-padding">
    <div class="container">
        <div class="header__inner">
            <div class="header__left">
                <div class="header__menu-btn">
                    <div class="header__menu-btn-line"></div>
                    <div class="header__menu-btn-line"></div>
                    <div class="header__menu-btn-line"></div>
                </div>
                <a class="header__contact header__contact-email" href="mailto:{$email->title}">
                    {include "common/components/icon.tpl" icon=["class" => "header__contact-icon", "name" => "email-transparent"]}
                    <span class="header__contact-text no-wrap">{$email->title}</span>
                </a>
            </div>
            <div class="header__center">
                <a class="logo header__logo" href="/">
                    <img class="logo__link header__logo-link" src="/img/svg/logo-CG.svg" alt="
                        {$textLang = [
                            "ru" => "Логотип Carrington Group",
                            "tr" => "Carrington Grubu Logosu",
                            "fi" => "Carrington Groupin logo",
                            "de" => "Logo for Carrington Group",
                            "zh" => "卡灵顿集团标志",
                            "sv" => "Logotyp för Carrington Group",
                            "lv" => "Carrington Group logotips",
                            "fa" => "لوگوی گروه کارینگتون",
                            "en" => "Logo of Carrington Group"
                        ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}">
                </a>
            </div>
            <div class="header__right">
                <button class="header__contact header__contact-phone" type="button" data-modal="callBack">
                    {include "common/components/icon.tpl" icon=["class" => "header__contact-icon", "name" => "phone"]}
                    <span class="header__contact-text no-wrap">{$phone->title}</span>
                </button>
                {include "common/components/lang-filter.tpl"}
            </div>
        </div>
    </div>
</header>
