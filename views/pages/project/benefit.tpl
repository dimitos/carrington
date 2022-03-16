<section class="benefit unselectable">
    <div class="container benefit__container">
        <div class="ellipse benefit__ellipse"></div>
        <div class="benefit__content">
            {if ($benefitData.logo != "")}
                <img class="benefit__logo" src="{$benefitData.logo}" width="{$benefitData.logoWidth}" height="{$benefitData.logoHeight}" alt="Logo of project">
            {/if}
            <h2 class="title title__section benefit__title">{include "views/common/components/textLanguage.tpl" textLang=$benefitData.title}</h2>
            {if (count($benefitData.table) > 0)}
                <div class="table benefit__table">
                    {foreach $benefitData.table as $item}
                        <div class="tr benefit__row">
                            <div class="td benefit__td no-wrap lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$item[0]}</div>
                            {if ($item[1]|is_array)}
                                <div class="td benefit__td no-wrap lang-fa" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$item[1]}</div>
                            {else} <div class="td benefit__td no-wrap lang-fa" dir="auto">{$item[1]}</div>
                            {/if}
                        </div>
                    {/foreach}
                </div>
            {/if}
            <p class="benefit__text" dir="auto">{include "views/common/components/textLanguage.tpl" textLang=$benefitData.text}</p>
        </div>
    </div>
</section>
