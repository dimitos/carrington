import { windowHeight } from "../common/global";
import "../common/projects";

// запуск видео
$(".video-poster__btn").on("click", function () {
    // закрываем постер трека
    $(this).parent().parent().fadeOut(500);
    var treck = $(this).parent().parent().parent().find(".video-track");
    $(treck).fadeIn(500);
    // останавливаем все треки
    $('.video-track').each((i, video) => video.pause());
    // запускаем трек
    treck[0].volume = 0.3;
    treck[0].play();
})

$(".video-track").on("play", function () {
    var cntVideo = $(".video__swiper-slide");
    var trackVideo = $(this).parent().parent().parent().index();
    for (let i = 0; i < cntVideo.length; i++) {
        if (i !== trackVideo) {
            $(cntVideo).eq(i).find(".video-track")[0].pause();
        }
    }
})

// настройки модалки для слайдера галереи
let arcticmodal_settings = {
    overlay: {
        css: { opacity: 0.3 }
    },
    beforeOpen(data, modal) {
        let modalParent = $(modal).parent();
        let maxHg = windowHeight() - modalParent.padding("top") - modalParent.padding("bottom");
        $(modal).css("max-height", maxHg);

        const lockPaddingValue = window.innerWidth - document.querySelector('body').offsetWidth + "px";
        const lockPadding = document.querySelectorAll(".lock-padding");
        lockPadding.forEach((el) => el.style.paddingRight = lockPaddingValue);
    },
    afterOpen() {
        document.querySelector(".arcticmodal-container .intopModal").style.transform = "translateX(0)";
    },
    beforeClose(data, modal) {
        document.querySelector(".arcticmodal-container .intopModal").style.transform = "translateX(-105vw)";
    },
    afterClose() {
        const lockPadding = document.querySelectorAll(".lock-padding");
        lockPadding.forEach((el) => el.style.paddingRight = 0);
    }
};

setTimeout(() => {
    $(".hero").css("opacity", "1");
}, 500);

// "hero" slider initialization
var heroSwiperAutoplay = true;
var heroSwiper = null;
if ($(".hero__swiper").length > 0) {
    var heroSwiper = new Swiper(".hero__swiper", {
        roundLengths: true,
        watchOverflow: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 10,
        autoplay: { delay: 3000 },
        disableOnInteraction: true,
        effect: 'fade',
        fadeEffect: { crossFade: true },
        loopedSlides: 0
    });
}
if ($(window).width() < 568) {
    heroSwiperAutoplay = false;
    heroSwiper.slideTo(0);
    heroSwiper.autoplay.stop();
}
$(window).resize(() => {
    if ($(window).width() < 568 && heroSwiperAutoplay) {
        heroSwiper.slideTo(0);
        heroSwiper.autoplay.stop();
        heroSwiperAutoplay = false;
    } else if ($(window).width() >= 568 && !heroSwiperAutoplay) {
        heroSwiper.autoplay.start();
        heroSwiperAutoplay = true;
    }
});

// -------------------------------- block Plans -----------------------------------

const description = [
    {
        "ru" : "общая площадь",
        "tr" : "toplam alanı",
        "fi" : "kokonaisalue",
        "de" : "samlet areal",
        "zh" : "总面积",
        "sv" : "totalarea",
        "lv" : "kopējais laukums",
        "fa" : "مساحت کل",
        "en" : "total area"
    },
    {
        "ru" : "площадь террасы",
        "tr" : "teras alanı",
        "fi" : "terassialue",
        "de" : "terrasseareal",
        "zh" : "露台区",
        "sv" : "terrassområdet",
        "lv" : "terases zona",
        "fa" : "منطقه تراس",
        "en" : "terrace area"
    },
    {
        "ru" : "жилая площадь",
        "tr" : "kapalı alan",
        "fi" : "suljettu alue",
        "de" : "lukket område",
        "zh" : "封闭区",
        "sv" : "stängt område",
        "lv" : "slēgta zona",
        "fa" : "منطقه بسته",
        "en" : "closed area"
    },
    {
        "ru" : "площадь террасы на крыше",
        "tr" : "çatı teras alanı",
        "fi" : "kattoterassi alue",
        "de" : "tagterrasse område",
        "zh" : "屋顶露台区",
        "sv" : "takterrass område",
        "lv" : "jumta terases zona",
        "fa" : "منطقه تراس پشت بام",
        "en" : "roof terrace area"
    }
];

const slidePrompt = {
    "ru" : "смотреть больше фотографий",
    "tr" : "daha fazla fotoğraf gör",
    "fi" : "katso lisää kuvia",
    "de" : "se flere billeder",
    "zh" : "查看更多照片",
    "sv" : "se fler bilder",
    "lv" : "skatiet vairāk fotoattēlu",
    "fa" : "عکس های بیشتر را ببینید",
    "en" : "see more photos"
}

var genPlansSwiper = null;           // слайдер генпланов
var planActive = 0;                  // номер активной квартиры
var plansCnt = plans.plans.length;   // коиличество планов квартир
if (plansCnt > 0) {
    changePlan(0);                       // рисуем первую квартиру
    insertGenPlanImage(planActive);      // рисуем генпланы
    genPlanSwiperInit();                 // инициируем слайдер генпланов
}

// открытие / закрытие всплывашки info
if($(".info-btn").length) {
    $(".info-btn").on("click", () =>  $(".info-btn__modal").fadeToggle(100));
    $(document).scroll(() => $(".info-btn__modal").fadeOut(100));
    $(".info-btn__modal-icon").on("click", () => $(".info-btn__modal").fadeOut(100));

    $(document).on("click", (e) => {
        if (!$(".info-btn__modal").is(e.target) && !$(".info-btn").is(e.target) && $(".info-btn__modal").has(e.target).length === 0) {
            $(".info-btn__modal").fadeOut(100);
        }
    });
}

// нажатие на кнопку следующая квартира
$(".select-floor__btn-next").on("click", function () {
    planActive++;
    if (planActive > plansCnt - 1) planActive = 0;
    // меняем квартиру
    changePlan(planActive);
});

// нажатие на кнопку предыдущая квартира
$(".select-floor__btn-prev").on("click", function () {
    planActive--;
    if (planActive < 0) planActive = plansCnt - 1;
    // меняем квартиру
    changePlan(planActive);
});

/**
 * Функция перерисовывает все данные активной квартиры, его название, генплан, первую квартиру в слайдер планов и её данные
 * @param {number} index номер активной квартиры
 */
function changePlan(index) {
    // меняем название квартиры
    $(".select-apart__selected").text(getTranslate(plans.plans[index].name));

    $(".genplan-modal-slider").removeClass("disabled");
    // меняем картинку генплана
    if (genPlansSwiper) {
        genPlansSwiper.destroy();
        genPlansSwiper = null;
    }

    insertGenPlanImage(index);
    genPlanSwiperInit();

    // выводим данные квартиры
    changeApart(index);

    // меняем картинку плана квартиры
    insertGenPlanImage(index);
    // удаляем старe. картинку плана квартиры
    $(".plans__right").empty();

    // вставляем новую картинку плана квартиры
    const pathImage = plans.plans[index].plan.slice(0, -4);
    const el = `<div class="image plans__image">
                    <div class="image__wrapper">
                        <picture>
                            <source srcset="${pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="${pathImage}.png" media="(max-width: 420px)" />
                            <source srcset="${pathImage}@2x.webp" type="image/webp" />
                            <img class="image__fit image__fit_contain"
                                src="${pathImage}@2x.png"
                                alt="${plans.title}"
                                width="582"
                                height="575"
                                loading="lazy"
                                decoding="async"/>
                        </picture>
                    </div>
                </div>`;
    $(".plans__right").append(el);
}

/**
 * Функция перерисовывает слайдер генпланов
 * @param {number} index номер активной квартиры
 */
function insertGenPlanImage(index) {
    // удаляем старые генпланы
    $(".genplan-modal__swiper-wrapper").empty();

    const genplan = plans.plans[index].genplan;    // массив новых генпланов

    // вставляем новые генпланы
    for (let i = 0; i < genplan.length; i++) {
        const pathImage = genplan[i].slice(0, -4);

        const imgGenPlan = `<div class="swiper-slide genplan-modal__swiper-slide">
                                <div class="genplan-modal__swiper-slide-wrap">
                                    <div class="image plans__image">
                                        <div class="image__wrapper">
                                            <picture>
                                                <source srcset="${pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                                <source srcset="${pathImage}.jpg" media="(max-width: 420px)" />
                                                <source srcset="${pathImage}@2x.webp" type="image/webp" />
                                                <img class="image__fit image__fit_contain"
                                                    src="${pathImage}@2x.jpg"
                                                    alt="${plans.title}"
                                                    width="1600"
                                                    height="800"
                                                    loading="lazy"
                                                    decoding="async"/>
                                            </picture>
                                        </div>
                                    </div>
                                </div>
                            </div>`;
        $(".genplan-modal__swiper-wrapper").append(imgGenPlan);
    }
}

/**
 * Функция меняет данные в таблице отображаемой квартиры
 * @param {number} indexSlide номер активного слайда с 0
 */
function changeApart(index) {
    // массив данных по квартире
    const apart = plans.plans[index];
    // меняем номер квартиры
    $(".select-apart__selected").text(apart.name);
    // удаляем старые данные
    $(".plans__data").empty();
    // добавляем новые данные
    for (let i = 0; i < apart.note.length; i++) {
        if (apart.note[i] && apart.note[i] != "") {
            const el = `<div class="plans__data-item">
                        <div class="plans__data-cnt no-wrap">${apart.note[i]}</div>
                        <div class="plans__data-addition no-wrap">${getTranslate(description[i])}</div>
                    </div>`;
            $(".plans__data").append(el);
        }
    }
}

/**
 * Функция из объекта текстов по языкам возвращает текст, соответствующий выбранному текущему языку
 * @param {object} arrayText объект текстов по языкам
 * @returns {string} текст, соответствующий выбранному текущему языку
 */
function getTranslate(arrayText) {
    // получаем используемый язык
    var lang = $(".page").prop("classList")[2].slice(-2);
    var str = "";
    Object.keys(arrayText).forEach(function(key) {
        if (lang === key) {
            str = arrayText[key];
        };
    });
    return str;
}

/**
 * The function "genplan" slider initialization
 */
function genPlanSwiperInit() {
    if ($(".genplan-modal__swiper-slide").length > 1) {
        genPlansSwiper = new Swiper(".genplan-modal__swiper", {
            roundLengths: true,
            watchOverflow: true,
            slidesPerView: 1,
            slidesPerGroup: 1,
            speed: 800,
            spaceBetween: 30,
            loopedSlides: 0,
            grabCursor: true,
            navigation: {
                nextEl: ".genplan-modal-slider .slider-btn__next",
                prevEl: ".genplan-modal-slider .slider-btn__prev",
            }
        });
    } else {
        $(".genplan-modal-slider").addClass("disabled");
    }
}

// -------------------------------- block Gallery -----------------------------------
var gallerySwiper = null;
var gallerySlider = document.querySelector(".gallery-slider");
var galleryTabs = document.querySelectorAll(".gallery__tab");
var slidesImage = images.slice(); // текущий массив картинок для слайдера
var viewModalSwiper = null;

if (gallerySlider) {
    gallerySwiperInit();

    // При открытии отрисовываем слайды в попапе, передаем массив картинок и имя слайдера
    insertViewSlides(slidesImage, "view");
    insertViewSlides(slidesImage, "preview");
    // вешаем слушатель, определяющий номер нажатого слайда
    numberSledeListner();
    // запустить
    viewModalSwiperInit();
}

// Переключение вкладок фильтра галереи
galleryTabs.forEach((el) => {
    el.addEventListener("click", (e) => {
        var slide = e.target;
        if (!slide.classList.contains("selected")) {
            galleryTabs.forEach((el) => el.classList.remove("selected"));
            slide.classList.add("selected");
            // получаем тип выбранных фото
            var slideDatasetType = slide.dataset.type
            if (slideDatasetType == "all") {
                slidesImage = images.slice();
            } else {
                slidesImage = [];
                images.forEach(el => {
                    if(el.type === slideDatasetType) slidesImage.push(el);
                });
            }
            viewModalSwiper.destroy();
            // перерисовываем слайды и запускаем попап слайдер
            insertGallerySlides(slidesImage, "gallery");
            insertViewSlides(slidesImage, "view");
            insertViewSlides(slidesImage, "preview");

            // вешаем слушатель на слайды, определяющий номер нажатого слайда
            numberSledeListner();

            gallerySwiperInit();
            viewModalSwiperInit();
        }
    })
})

// слушатель на слайды галлереи, определяет id слайда, и открывает попап-галерею на этом id.
function numberSledeListner() {
    $(".gallery__swiper-slide").on("click", function() {
        var idClickSlide = this.dataset.id;

        //если кликнут на последний слайд, то спопап открывается на первом слайде выбранного типа фотографий
        if ($(this).hasClass("last-slide")) {
            viewModalSwiperInit(0);
        } else {
            for (let i = 0; i < slidesImage.length; i++) {
                if (slidesImage[i].id == idClickSlide) {
                    viewModalSwiperInit(i);
                    break;
                };
            }
        }
    })
}

/**
 * Функция определяет номер активного слайда
 * @returns {number} the number of the active slide
 */
function getinitialGallerySlide() {
    var gallerySlidesCnt = document.querySelectorAll(".gallery__swiper-slide");
    var initialGallerySlide = 1;

    if (gallerySlidesCnt.length < 3) initialGallerySlide = 0;
    if (gallerySlidesCnt.length == 1) {
        document.querySelector(".gallery-slider .slider-nav__btn").style.display = "none";
        document.querySelector(".gallery-tabs").style.display = "none";
    } else {
        document.querySelector(".gallery-slider .slider-nav__btn").style.display = "flex";
        document.querySelector(".gallery-tabs").style.display = "flex";
    }
    return initialGallerySlide;
}

/**
 * Функция записывает выбранные слайды в слайдер галереи
 * @param {string} select selection key
 */
function insertGallerySlides(slidesImage, nameSlider) {

    // удаляем старые слайды
    $(`.${nameSlider}__swiper-wrapper`).empty();

    const countSlides = slidesImage.length < 9 ? slidesImage.length : 9;

    for (let i = 0; i < countSlides; i++) {
        const pathImage = slidesImage[i].image.slice(0, -4);
        let alt = "";
        const lastSlide = i == countSlides - 1 ? "last-slide" : "";

        for (var key in slidesImage[i].alt) {
            if (key == lang) alt = slidesImage[i].alt[key];
        }
        let slide = `<div class="swiper-slide ${nameSlider}__swiper-slide ${lastSlide}" data-id="${slidesImage[i].id}" data-type="${slidesImage[i].type}" data-modal="view">
                        <div class="slide-prompt" dir="auto">${getTranslate(slidePrompt)}</div>
                        <div class="image ${nameSlider}-slider__image">
                            <div class="image__wrapper">
                                <picture>
                                    <source srcset="${pathImage}.webp" media="(max-width: 420px)" type="image/webp" />
                                    <source srcset="${pathImage}.jpg" media="(max-width: 420px)" />
                                    <source srcset="${pathImage}@2x.webp" type="image/webp" />
                                    <img class="image__fit image__fit_cover"
                                        src="${pathImage}@2x.jpg"
                                        alt="${alt}"
                                        width="582"
                                        height="336"
                                        loading="lazy"
                                        decoding="async"/>
                                </picture>
                            </div>
                        </div>
                    </div>`;

        $(`.${nameSlider}__swiper-wrapper`).append(slide);
    }

    // вешаем слушатели на слайды для открытия попапа
    $("." + nameSlider + "__swiper-slide[data-modal]").on("click", function (event) {
        event.preventDefault();

        let $modal = $(".intopModal-" + $(this).data("modal"));
        if ($modal.length > 0) {
            if($(".page__body").hasClass("arcticmodal-wrap-active")) {
                $((".arcticmodal-container .intopModal")).arcticmodal('close');
                setTimeout(() => {
                    $modal.arcticmodal(arcticmodal_settings);
                }, 100);
            } else {
                $modal.arcticmodal(arcticmodal_settings);
            }
        }
    });

    if (countSlides < 2) {
        $(`.${nameSlider}-slider .slider-nav`).css({'display' : 'none'});
    } else {
        $(`.${nameSlider} .slider-nav`).css({'display' : 'flex'});
    }
}

/**
 * Функция заполняет слайдер попапа слайдами
 * @param {array} slidesImage массив путей к картинкам
 * @param {string} nameSlider селектор wrapper слайда
 */
function insertViewSlides(slidesImage, nameSlider) {
    // удаляем старые слайды
    $(`.${nameSlider}__swiper-wrapper`).empty();

    for (let i = 0; i < slidesImage.length; i++) {
        var pathImage = slidesImage[i].image.slice(0, -4);
        var alt = "";
        for (var key in slidesImage[i].alt) {
            if (key == lang) alt = slidesImage[i].alt[key];
        }
        var sourse = "";
        if (nameSlider == "view") {
            sourse = `<source srcset="${pathImage}@2x.webp" type="image/webp" />
                        <img class="image__fit image__fit_cover"
                        src="${pathImage}@2x.jpg"`;
        } else {
            sourse = `<source srcset="${pathImage}.webp" type="image/webp" />
                        <img class="image__fit image__fit_cover"
                        src="${pathImage}.jpg"`;
        }
        let slide = `<div class="swiper-slide ${nameSlider}__swiper-slide">
                        <div class="image ${nameSlider}-slider__image">
                            <div class="image__wrapper">
                                <picture>${sourse}
                                    alt="${alt}"
                                    width="582"
                                    height="336"
                                    loading="lazy"
                                    decoding="async"/>
                                </picture>
                            </div>
                        </div>
                    </div>`;

        $(`.${nameSlider}__swiper-wrapper`).append(slide);
    }
}

/**
 * The function "gallery" slider initialization
 */
function gallerySwiperInit() {

    if (gallerySwiper) {
        gallerySwiper.destroy();
        gallerySwiper = null;
    }

    gallerySwiper = new Swiper(".gallery__swiper", {
        roundLengths: true,
        watchOverflow: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        centeredSlides: true,
        speed: 800,
        spaceBetween: 20,
        initialSlide: getinitialGallerySlide(),
        navigation: {
            nextEl: ".gallery-slider .slider-btn__next",
            prevEl: ".gallery-slider .slider-btn__prev",
        },
        pagination: {
            el: ".gallery-slider .slider-pagination",
            clickable: true,
        },
        breakpoints: {
            768: {
                spaceBetween: 30,
            }
        }
    });
}

/**
 * The function "view-modal" slider initialization
 */
function viewModalSwiperInit(activeSlide = 0) {

    if (viewModalSwiper) {
        viewModalSwiper.destroy();
        viewModalSwiper = null;
    }

    viewModalSwiper = new Swiper(".view__swiper", {
        roundLengths: true,
        watchOverflow: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        initialSlide: activeSlide,
        speed: 800,
        spaceBetween: 26,
        navigation: {
            nextEl: ".view-slider .slider-btn__next",
            prevEl: ".view-slider .slider-btn__prev",
        },
        thumbs: {
            swiper: {
                el: ".preview__swiper",
                slidesPerView: 5,
                slidesPerGroup: 5,
                slideToClickedSlide: true,
                spaceBetween: 10,
                speed: 800,
                touchRatio: 0.3,
                watchSlidesProgress: true,
                breakpoints: {
                    568: {
                        spaceBetween: 15
                    },
                    1200: {
                        spaceBetween: 22,
                    }
                }
            }
        }
    });
}

const videoSwiper = new Swiper(".video__swiper", {
    roundLengths: true,
    watchOverflow: true,
    slidesPerView: 1,
    slidesPerGroup: 1,
    centeredSlides: true,
    speed: 800,
    spaceBetween: 20,
    navigation: {
        nextEl: ".video-slider .slider-btn__next",
        prevEl: ".video-slider .slider-btn__prev",
    },
    pagination: {
        el: ".video-slider .slider-pagination",
        clickable: true,
    },
    breakpoints: {
        768: {
            spaceBetween: 30,
        }
    }
});
