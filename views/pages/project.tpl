{extends "page.tpl"}

{$id = $smarty.get.project}

{block main}
    {include "views/pages/project/hero.tpl" heroData=$projectsData[$id]}
    {include "views/pages/project/benefit.tpl" benefitData=$projectsData[$id].benefit}
    {include "views/pages/project/video.tpl" videoData=$projectsData[$id].video}
    {include "views/pages/project/gallery.tpl" sliderData=$galleryData[$id].gallery}
    {include "views/pages/project/plans.tpl" plansData=$plansData[$id]}
    {include "views/pages/project/region.tpl" regionData=$projectsData[$id].region}
    {include "views/common/components/inspection.tpl"}
    {include "views/pages/project/spec.tpl" specData=$projectsData[$id].spec}
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
