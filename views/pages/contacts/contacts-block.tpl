<section class="contacts-bl">
    <picture>
        <source srcset="img/images/contacts.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="img/images/contacts.jpg" media="(max-width: 420px)" />
        <source srcset="img/images/contacts@2x.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover contacts-bl__image"
            src="img/images/contacts@2x.jpg"
            alt="Contact Us"
            width="1920"
            height="680"
            decoding="async"/>
    </picture>
    <div class="container">
        <div class="contacts-bl__wrapper">
            <div class="contacts-bl__left">
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
                ]}
                {include "views/common/components/breadcrumbs.tpl"
                    breadcrumbs=[
                        "class" => "breadcrumbs__light",
                        "name" => "{include "views/common/components/textLanguage.tpl" textLang=$textLang}",
                        "link" => "contacts"
                    ]}
                <h2 class="title title__section contacts-bl__title">
                    {include "views/common/components/textLanguage.tpl" textLang=$textLang}
                </h2>
                <ul class="menu-contacts__list">
                    <li class="menu-contacts__list-item">
                        <a class="menu-contacts__contact menu-contacts__contact-phone" href="{$phone->link}">
                            {include "views/common/components/icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "phone"]}
                            <div class="menu-contacts__contact-text"><span class="no-wrap">{$phone->title}</span> (WhatsApp, Viber)</div>
                        </a>
                    </li>
                    <li class="menu-contacts__list-item">
                        <a class="menu-contacts__contact menu-contacts__contact-email" href="{$email->link}">
                            {include "views/common/components/icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "email-color"]}
                            <div class="menu-contacts__contact-text no-wrap">{$email->title}</div>
                        </a>
                    </li>
                    <li class="menu-contacts__list-item">
                        <div class="menu-contacts__contact menu-contacts__contact-marker menu-contacts__contact_no-hover">
                            {include "views/common/components/icon.tpl" icon=["class" => "menu-contacts__contact-icon", "name" => "marker"]}
                            <div class="menu-contacts__contact-text">{$address}</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="contacts-bl__right"><div id="contacts-map"></div></div>
        </div>
    </div>
</section>
