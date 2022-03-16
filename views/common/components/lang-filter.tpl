<div class="language">
    <div class="language__wrap">
        <div class="language__top">
            {if $lang == "ru"}
                <div class="language__selected" lang="ru" title="Русский">Русский</div>
            {elseif $lang == "tr"}
                <div class="language__selected" lang="tr" title="Türkçe">Türkçe</div>
            {elseif $lang == "fi"}
                <div class="language__selected" lang="fi" title="Suomi">Suomi</div>
            {elseif $lang == "de"}
                <div class="language__selected" lang="de" title="Deutsch">Deutsch</div>
            {elseif $lang == "zh"}
                <div class="language__selected" lang="zh" title="简体中文">简体中文</div>
            {elseif $lang == "sv"}
                <div class="language__selected" lang="sv" title="Svenska">Svenska</div>
            {elseif $lang == "lv"}
                <div class="language__selected" lang="lv" title="Latviešu">Latviešu</div>
            {elseif $lang == "fa"}
                <div class="language__selected" lang="fa" title="فارسی">فارسی</div>
            {else}
                <div class="language__selected" lang="en" title="English">English</div>
            {/if}
            {include "common/components/icon.tpl" icon=["class" => "language__top-icon language__top-icon-down", "name" => "tab_arrow-down"]}
            {include "common/components/icon.tpl" icon=["class" => "language__top-icon language__top-icon-up", "name" => "tab_arrow-up"]}
        </div>
        <div class="language__list">
            <a class="language__item no-wrap {if $lang == "en"}selected{/if}" href="https://carrington.intopweb.ru/" title="English" lang="en">English</a>
            <a class="language__item no-wrap {if $lang == "tr"}selected{/if}" href="https://tr.carrington.intopweb.ru/" title="Türkçe" lang="tr">Türkçe</a>
            <a class="language__item no-wrap {if $lang == "ru"}selected{/if}" href="https://ru.carrington.intopweb.ru/" title="Русский" lang="ru">Русский</a>
            <a class="language__item no-wrap {if $lang == "fi"}selected{/if}" href="https://fi.carrington.intopweb.ru/" title="Suomi" lang="fi">Suomi</a>
            <a class="language__item no-wrap {if $lang == "de"}selected{/if}" href="https://de.carrington.intopweb.ru/" title="Deutsch" lang="de">Deutsch</a>
            <a class="language__item no-wrap {if $lang == "zh"}selected{/if}" href="https://zh.carrington.intopweb.ru/" title="简体中文" lang="zh">简体中文</a>
            <a class="language__item no-wrap {if $lang == "sv"}selected{/if}" href="https://sv.carrington.intopweb.ru/" title="Svenska" lang="sv">Svenska</a>
            <a class="language__item no-wrap {if $lang == "lv"}selected{/if}" href="https://lv.carrington.intopweb.ru/" title="Latviešu" lang="lv">Latviešu</a>
            <a class="language__item no-wrap {if $lang == "fa"}selected{/if}" href="https://fa.carrington.intopweb.ru/" title="فارسی" lang="fa">فارسی</a>
        </div>
    </div>
</div>
