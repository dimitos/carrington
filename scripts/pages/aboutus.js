import "../common/projects";

setTimeout(()=>{
    $(".hero, .benefit").css("opacity", "1");
}, 1000);

var whySlider = new Swiper(".why__swiper", {
    roundLengths: true,
    watchOverflow: true,
    slidesPerView: 1,
    slidesPerGroup: 1,
    speed: 800,
    spaceBetween: 20,
    navigation: {
        nextEl: ".why-slider .slider-btn__next",
        prevEl: ".why-slider .slider-btn__prev",
    },
    pagination: {
        el: ".why-slider .slider-pagination",
        clickable: true,
    },
    breakpoints: {
        569: {
            spaceBetween: 30,
        }
    }
});

var commentSlider = new Swiper(".comment__swiper", {
    roundLengths: true,
    watchOverflow: true,
    slidesPerView: 1,
    slidesPerGroup: 1,
    speed: 800,
    loop: true,
    spaceBetween: 20,
    navigation: {
        nextEl: ".comment-slider .slider-btn__next",
        prevEl: ".comment-slider .slider-btn__prev",
    },
    pagination: {
        el: ".comment-slider .slider-pagination",
        clickable: true,
    },
    breakpoints: {
        768: {
            slidesPerView: 2,
        }
    }
});

// "awards-slider" slider initialization
function awardsSliderInit(slider) {
    if ($(slider).length > 0) {
        new Swiper(`${slider} .gallery__swiper`, {
            roundLengths: true,
            watchOverflow: true,
            slidesPerView: 1,
            slidesPerGroup: 1,
            centeredSlides: true,
            speed: 800,
            spaceBetween: 20,
            initialSlide: 1,
            navigation: {
                nextEl: `${slider} .slider-btn__next`,
                prevEl: `${slider} .slider-btn__prev`,
            },
            pagination: {
                el: `${slider} .slider-pagination`,
                clickable: true,
            },
            breakpoints: {
                768: {
                    spaceBetween: 30,
                }
            }
        });
    }
}

awardsSliderInit(".awards-2016-slider");
awardsSliderInit(".awards-2014-slider");
awardsSliderInit(".awards-2011-slider");
awardsSliderInit(".awards-2009-slider");
awardsSliderInit(".awards-2008-slider");

// открываем/закрываем comment блоки
var comment = $(window).width() < 1200 ? 0 : 1;
$(window).resize(() => {
    if ($(window).width() >= 1200 && comment == 0) {
        comment = 1;
        closeCommet($(".comment__btn"));
        $(".comment-slide__text").css("display", "block");
    } else if ($(window).width() < 1200 && comment == 1) {
        comment = 0;
        $(".comment-slide__text").css("display", "none");
    }
});

$(document).on("click", function (e) {
    if ($(".comment__btn").is(e.target) && !$(e.target).parent().hasClass("open")) openCommet($(e.target))
    else if ($(".comment__btn").is(e.target) && $(e.target).parent().hasClass("open")) closeCommet($(e.target))
    else if (!$(".comment-slide__content").is(e.target) &&
        $(".comment-slide__content").has(e.target).length === 0 &&
        $(".comment-slide__content-inner").hasClass("open")) closeCommet($(".comment__btn"));
});

function openCommet(el) {
    closeCommet($(".comment__btn"));
    el.parent().addClass("open");
    el.parent().prev(".comment-slide__content-main").fadeOut(0);
    el.parent().find(".comment-slide__text").fadeIn(0);
    el.find(".comment__btn-reval").fadeOut(0);
    el.find(".comment__btn-hide").fadeIn(0);
    el.find(".comment__btn-icon-down").fadeOut(0);
    el.find(".comment__btn-icon-up").fadeIn(0);
}

function closeCommet(el) {
    el.parent().removeClass("open");
    el.parent().find(".comment-slide__text").fadeOut(0);
    el.parent().prev(".comment-slide__content-main").fadeIn(0);
    el.find(".comment__btn-reval").fadeIn(0);
    el.find(".comment__btn-hide").fadeOut(0);
    el.find(".comment__btn-icon-down").fadeIn(0);
    el.find(".comment__btn-icon-up").fadeOut(0);
}
