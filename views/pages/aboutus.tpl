{extends "page.tpl"}

{block main}
    {include "views/pages/aboutus/hero.tpl"}
    {include "views/pages/aboutus/benefit.tpl"}
    {include "views/pages/aboutus/why.tpl"}
    {include "views/pages/aboutus/awards-2016.tpl"}
    {include "views/pages/aboutus/awards-2014.tpl"}
    {include "views/pages/aboutus/awards-2011.tpl"}
    {include "views/pages/aboutus/awards-2009.tpl"}
    {include "views/pages/aboutus/awards-2008.tpl"}
    {include "views/pages/aboutus/comment.tpl"}
    {include "views/common/components/get-more.tpl"}
    {include "views/common/components/projects.tpl"
        block=[
            "theme" => "dark",
            "title" => [
                "ru" => "Посмотреть другие проекты",
                "tr" => "Diğer Projeleri Gör",
                "fi" => "Katso muut projektit",
                "de" => "Se andre projekter",
                "zh" => "查看其他项目",
                "sv" => "Se andra projekt",
                "lv" => "Skatīt citus projektus",
                "fa" => "پروژه های دیگر را ببینید",
                "en" => "See other Projects"
            ],
            "text" => ""
        ]}
    {* {include "views/common/components/view-tour.tpl"} *}
{/block}
