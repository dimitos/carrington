{extends "page.tpl"}

{block main}
    {include "views/pages/home/hero.tpl"}
    {include "views/pages/home/benefit.tpl"}
    {include "views/common/components/projects.tpl"
        block=[
            "theme" => "light",
            "title" => [
                "ru" => "Новые и завершенные проекты",
                "tr" => "Yeni ve Biten Projeler",
                "fi" => "Uudet ja valmiit projektit",
                "de" => "Nye og afsluttede projekter",
                "zh" => "新项目和已完成项目",
                "sv" => "Nya och avslutade projekt",
                "lv" => "Jauni un pabeigti projekti",
                "fa" => "پروژه های جدید و تکمیل شده",
                "en" => "New & Completed Projects"
            ],
            "text" => [
                "ru" => "Carrington Group проектирует, строит и продает высококачественные роскошные виллы и апартаменты на Северном Кипре с 25-летним опытом.",
                "tr" => "Carrington Group, 25 yıllık tecrübesi ile Kuzey Kıbrıs'ta yüksek kaliteli lüks villalar ve daireler tasarlar, inşa eder ve satar.",
                "fi" => "Carrington Group suunnittelee, rakentaa ja myy korkealaatuisia ylellisiä huviloita ja huoneistoja Pohjois-Kyproksella 25 vuoden kokemuksella.",
                "de" => "Carrington Group designer, bygger og sælger højkvalitets luksuriøse villaer og lejligheder i Nordcypern med 25 års erfaring.",
                "zh" => "Carrington Group 拥有 25 年的经验，在北塞浦路斯设计、建造和销售高品质的豪华别墅和公寓。",
                "sv" => "Carrington Group designar, bygger och säljer högkvalitativa lyxiga villor och lägenheter på norra Cypern med 25 års erfarenhet.",
                "lv" => "Carrington Group projektē, būvē un pārdod augstas kvalitātes greznas villas un dzīvokļus Ziemeļkiprā ar 25 gadu pieredzi.",
                "fa" => "گروه کارینگتون طراحی، ساخت و فروش ویلاها و آپارتمان های مجلل با کیفیت بالا در قبرس شمالی با 25 سال تجربه.",
                "en" => "Carrington Group design, build and sell high-quality luxurious villas and apartments in North Cyprus with 25 years of experience."
            ]
        ]}
    {include "views/common/components/inspection.tpl"}
    {include "views/pages/home/country.tpl"}
    {* {include "views/common/components/view-tour.tpl"} *}
    {include "views/common/components/get-more.tpl"}
{/block}
