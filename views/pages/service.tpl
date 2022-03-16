{extends "page.tpl"}

{block main}
    {include "views/pages/service/service-block.tpl" serviceData=$serviceData[{$smarty.get.service}]}
    {include "views/common/components/get-more.tpl"}
{/block}
