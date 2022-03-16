import { scrollToBlock } from "./helpers";
import { arcticmodal_settings } from "./modal";

/**
 * Smooth scroll to anchor
 */
$("a[href^='#']:not([data-modal])").click(function (event) {
    event.preventDefault();
    if($(this).attr("href") !=="#") scrollToBlock($(this).attr("href"));
});

/**
 * Delete anchor hash
 */
const hash = document.querySelectorAll(".del-hash");
if (document.querySelectorAll(".del-hash")) {
    hash.forEach((el) => el.addEventListener("click", () => setTimeout(() => history.replaceState(null, null, " "), 1), { passive: true }));
}

// Кнопка "НАВЕРХ"
var btnPageUp = $(".btn-pageUp");
btnPageUp.on("click", function () {
    //$("body").animate({scrollTop: 0}, 500);
    $("html").animate({scrollTop: 0}, 500);
});
$(window).scrollTop() > $(window).height() ? btnPageUp.addClass('active') : btnPageUp.removeClass('active');
$(window).scroll(function () {
    $(window).scrollTop() > $(window).height() ? btnPageUp.addClass('active') : btnPageUp.removeClass('active');
});

// Состояние header при скролле
var lightHeder = $(".header").hasClass("header__light");
var bgHeader = $(".header").hasClass("header__bg");

if ($(document).scrollTop() > 50) {
    $(".header").addClass("header__bg");
    bgHeader = true;
    if (lightHeder) $(".header").removeClass("header__light").addClass("header__dark");
}

$(document).scroll(function (e) {
    e.preventDefault();

    if (lightHeder) {
        if ($(this).scrollTop() > 50 && !bgHeader) {
            $(".header").removeClass("header__light").addClass("header__bg header__dark");
            bgHeader = true;
        } else if ($(this).scrollTop() < 50 && bgHeader) {
            $(".header").removeClass("header__bg").removeClass("header__dark").addClass("header__light");
            bgHeader = false;
        }
    } else {
        if ($(this).scrollTop() > 50 && !bgHeader) {
            $(".header").addClass("header__bg");
            bgHeader = true;
        } else if ($(this).scrollTop() < 50 && bgHeader) {
            $(".header").removeClass("header__bg");
            bgHeader = false;
        }
    }
});

// ------------ Валидация форм -----------------------------------------------------------------------

// при фокусе поля убираем вывод ошибки
removePrintErrorFocus(".request__input-name");
removePrintErrorFocus(".request__input-phone");

// нажатие на кнопку ОТПРАВИТЬ
$(".btn-form").on("click", function () {
    var inputName = $(this).parent().parent().find(".request__input-name");
    var inputPhone = $(this).parent().parent().find(".request__input-phone");
    // если поле валидно ...
    if(getValidForm(inputName, inputPhone)) {
        // отправляем ajax ...
        // обнуляем форму
        $(this).parent().parent().find("form")[0].reset();
        // открываем попап СПАСИБО
        openModalThanks();
    };
})

/**
 * Функция убирает вывод ошибки при фокусе поля
 * @param {node} el элемент
 */
function removePrintErrorFocus(el) {
    $(el).focus(function () {
        $(this).removeClass("input_error");
    });
}

/**
 * Функция выводит ошибку заполнения поля
 * @param {node} el элемент
 */
function printError(el) {
    $(el).addClass("input_error");
}

/**
 * Функция проверяет валидно ли поле телефона
 * @param {node} el элемент
 * @returns {boolean} да нет
 */
function inputChekPhone(el) {
    console.log($(el).val().length);
    if ($(el).val().length < 6) {
        printError(el);
        return false;
    } else return true;
}

/**
 * Функция проверяет валидно ли поле имени
 * @param {node} el элемент
 * @returns {boolean} да нет
 */
function inputChekName(el) {
    if (!$(el).val()) {
        printError(el);
        return false;
    } else return true;
}

/**
 * Функция проверяет валидна ли вся форма
 * @param {node} name поле имени
 * @param {node} phone поле телефона
 * @returns {boolean} да нет
 */
function getValidForm(name, phone) {
    // проверяем поля формы
    const userName = inputChekName(name);
    const userPhone = inputChekPhone(phone);
    return userName && userPhone;
}

/**
 * Функция открывает попап СПАСИБО
 */
function openModalThanks() {
    let $modal = $(".intopModal-thanks");
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
};
