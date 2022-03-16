import "../common/projects";

setTimeout(()=>{
    $(".hero, .taxes").css("opacity", "1");
}, 1000);

// окрываем/закрываем solicitor блоки от кликов
$(document).on("click", (e) => {
    if ($(".solicitor__btn").is(e.target) && !$(e.target).parent().hasClass("open")) openSolicitorItem($(e.target))
    else if ($(".solicitor__btn").is(e.target) && $(e.target).parent().hasClass("open")) closeSolicitorItem($(e.target))
    else if (!$(".solicitor__item-wrap").is(e.target) && $(".solicitor__item-wrap").has(e.target).length === 0 && $(".solicitor__item-wrap").hasClass("open")) closeSolicitorItem($(".solicitor__btn"));
});

function openSolicitorItem(el) {
    closeSolicitorItem($(".solicitor__btn"));
    var h = el.next(".solicitor__item-content").outerHeight();
    el.parent().addClass("open").height(h);
    el.find(".solicitor__btn-reval").fadeOut(0);
    el.find(".solicitor__btn-hide").fadeIn(0);
    el.find(".solicitor__btn-icon-down").fadeOut(0);
    el.find(".solicitor__btn-icon-up").fadeIn(0);
}

function closeSolicitorItem(el) {
    el.parent().removeClass("open").height(328);
    el.find(".solicitor__btn-reval").fadeIn(0);
    el.find(".solicitor__btn-hide").fadeOut(0);
    el.find(".solicitor__btn-icon-down").fadeIn(0);
    el.find(".solicitor__btn-icon-up").fadeOut(0);
}
$(window).resize(() =>  {
    if($(".solicitor__item-wrap").hasClass("open")) {
        var h = $(".solicitor__item-wrap.open").find(".solicitor__item-content").outerHeight();
        $(".solicitor__item-wrap.open").height(h);
    }
});

// окрываем/закрываем faq блоки от кликов
$(document).on("click", (e) => {
    if ($(".faq__item-title").is(e.target) && !$(e.target).parent().hasClass("open")) openFaqItem($(e.target))
    else if ($(".faq__item-title").is(e.target) && $(e.target).parent().hasClass("open")) closeFaqItem($(e.target))
    else if (!$(".faq__item").is(e.target) && $(".faq__item").has(e.target).length === 0 && $(".faq__item").hasClass("open")) closeFaqItem($(".faq__item-title"));
    else if ($(".faq__btn-icon-up").is(e.target)) closeFaqItem($(".faq__item-title"));
});

function openFaqItem(el) {
    closeFaqItem($(".faq__item-title"));
    el.parent().addClass("open");
    el.parent().find(".faq__item-text").slideDown(300);
    el.parent().find(".faq__btn-icon-down").fadeOut(0);
    el.parent().find(".faq__btn-icon-up").fadeIn(0);
}

function closeFaqItem(el) {
    el.parent().removeClass("open");
    el.parent().find(".faq__item-text").slideUp(300);
    el.parent().find(".faq__btn-icon-down").fadeIn(0);
    el.parent().find(".faq__btn-icon-up").fadeOut(0);
}
