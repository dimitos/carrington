<div class="menu-contacts {$menuContacts.class}">
    <div class="menu-contacts__top">
        <a class="menu-contacts__title" href="contacts">
            {$textLang = [
                "ru" => "Связаться с нами",
                "tr" => "Bize Ulaşın",
                "fi" => "Ota meihin yhteyttä",
                "de" => "Kontakt os",
                "zh" => "联系我们",
                "sv" => "Kontakta oss",
                "lv" => "Sazinies ar mums",
                "fa" => "با ما تماس بگیرید",
                "en" => "Contact us"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
        </a>
        <ul class="menu-contacts__list">
            <li class="menu-contacts__list-item">
                <div class="menu-contacts__contact menu-contacts__contact-marker menu-contacts__contact_no-hover">
                    {include "./icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "marker"]}
                    <div class="menu-contacts__contact-text">{$address}</div>
                </div>
            </li>
            <li class="menu-contacts__list-item">
                <a class="menu-contacts__contact menu-contacts__contact-phone" href="{$phone->link}">
                    {include "./icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "phone"]}
                    <div class="menu-contacts__contact-text no-wrap">{$phone->title}</div>
                </a>
            </li>
            <li class="menu-contacts__list-item">
                <a class="menu-contacts__contact menu-contacts__contact-email" href="{$email->link}">
                    {include "./icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "email-color"]}
                    <div class="menu-contacts__contact-text no-wrap">{$email->title}</div>
                </a>
            </li>
        </ul>
    </div>
    <div class="menu-contacts__bottom">
        <h3 class="menu-contacts__title">
            {$textLang = [
                "ru" => "Подписывайтесь на нас",
                "tr" => "bizi takip edin",
                "fi" => "seuraa meitä",
                "de" => "Følg os",
                "zh" => "跟着我们",
                "sv" => "Följ oss",
                "lv" => "Seko mums",
                "fa" => "ما را دنبال کنید",
                "en" => "Follow us"
            ]}{include "views/common/components/textLanguage.tpl" textLang=$textLang}
            </h3>
        {include "./social-links.tpl" social=["class" => "menu-contacts__social"]}
    </div>
</div>
