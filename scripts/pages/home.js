import "../common/projects";

setTimeout(()=>{
    $(".hero__slider").css("opacity", "1");
}, 1000);

setTimeout(()=>{
    $(".hero__swiper-slide-content, .benefit").css("opacity", "1");

    // running line initialization
    if ($(".hero__web-ticker").length > 0) {
        $('.hero__web-ticker').webTicker({
            speed: 100,
            hoverpause: false,
            duplicate: true
        });
    }

    // "hero" slider initialization
    if ($(".hero__swiper").length > 0) {
        new Swiper(".hero__swiper", {
            roundLengths: true,
            watchOverflow: true,
            slidesPerView: 1,
            slidesPerGroup: 1,
            speed: 800,
            spaceBetween: 10,
            autoplay: { delay: 3000 },
            effect: 'fade',
            fadeEffect: { crossFade: true },
            loopedSlides: 0
        });
    }
}, 1500);

// "benefit" slider initialization
if ($(".benefit-slider").length > 0) {
    new Swiper(".benefit__swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: true,
        slidesPerView: "auto",
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 20,
        navigation: {
            nextEl: ".benefit-slider .slider-btn__next",
            prevEl: ".benefit-slider .slider-btn__prev",
        },
        pagination: {
            el: ".benefit-slider .slider-pagination",
            clickable: true,
        },
    });
}
