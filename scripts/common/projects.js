// "projects" slider initialization
if ($(".projects-slider").length > 0) {
    new Swiper(".projects__swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 0,
        navigation: {
            nextEl: ".projects-slider .slider-btn__next",
            prevEl: ".projects-slider .slider-btn__prev",
        },
        pagination: {
            el: ".projects-slider .slider-pagination",
            clickable: true,
        },
        breakpoints: {
            568: {
                slidesPerView: 2
            },
            768: {
                slidesPerView: 3
            }
        }
    });
}
