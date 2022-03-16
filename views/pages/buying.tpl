{extends "page.tpl"}

{block main}
    {include "views/pages/buying/hero.tpl"}
    {include "views/pages/buying/taxes.tpl"}
    {* {include "views/pages/buying/help.tpl"} *}
    {include "views/pages/buying/solicitor.tpl"}
    {include "views/pages/buying/faq.tpl"}
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
