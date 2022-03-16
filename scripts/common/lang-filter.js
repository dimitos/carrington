$(".language__top").on("click", () => {
    openLanguage();
})

var languageItem = $(".language__item");

languageItem.each(function(){
    $(this).click
})

$(".language__item").on("click", (e) => {
    //e.preventDefault();
    var elLang = $(e.currentTarget);
    $(".language__selected")
        .html(elLang.attr("title"))
        .attr({
            lang: elLang.attr("lang"),
            title: elLang.attr("title")
        });

    $(".language__item").removeClass("selected");
    elLang.addClass("selected");

    openLanguage();
})

$(document).on("click", (e) => {
    if (!$(".language").is(e.target) && $(".language").has(e.target).length === 0) {
        $(".language").removeClass("open");
    }
});

function openLanguage() {
    if($(".language").hasClass("open")) {
        $(".language").removeClass("open");
    } else {
        $(".language").addClass("open");
    }
}
