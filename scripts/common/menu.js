var menuSelect = "close";
// элементы с позицией fixed
const lockPadding = document.querySelectorAll(".lock-padding");

if($(window).width() < 568) {
    onClickMenuSelect();
};

// устанавливаем высоту menu__content для скролла меню, если маленький размер окна браузера
setHeightMenu();

// окрываем/закрываем меню от кликов
$(document).on("click", (e) => {
    if ($(".header__menu-btn").is(e.target)) openMenu()
    else if ($(".menu-closer").is(e.target)) closeMenu()
    else if (!$(".menu__inner").is(e.target) && $(".menu__inner").has(e.target).length === 0 && $(".menu").hasClass("open")) closeMenu();
});

$(window).resize(() =>  {
    if($(window).width() < 568 && menuSelect == "close") {
        onClickMenuSelect();
    } else if($(window).width() >= 568 && menuSelect == "open") {
        offClickMenuSelect();
    };
});

$(window).resize(() => setHeightMenu());

/* ------------------------------ Функции -----------------------------------*/

/**
 * Функция открывает меню
 */
function openMenu() {
    // получить ширину скролла
    const lockPaddingValue = window.innerWidth - document.querySelector('body').offsetWidth + "px";
    // добавить фиксированным элементам ширину скролла паддингом справа
    lockPadding.forEach((el) => el.style.paddingRight = lockPaddingValue);
    // добавить body ширину скролла паддингом справа
    $(".page__body").css({ "padding-right": lockPaddingValue });
    $(".menu").addClass("open");
    $(".page").css({ "overflow": "hidden" });
}

/**
 * Функция закрывает меню
 */
function closeMenu() {
    $(".menu").removeClass("open");
    $(".page").css({ "overflow": "initial" });
    // удалить паддинг справа у фиксированных элементов
    lockPadding.forEach((el) => el.style.paddingRight = 0);
    // удалить паддинг справа у body
    $(".page__body").css({ "padding-right": 0 });
}

/**
 * Функция устанавливает высоту menu__content для скролла меню для маленьких размеров окна браузера
 */
function setHeightMenu() {
    $(".menu__content").css({"height": "100%"});

    setTimeout(() => {
        var heightWindow = window.innerHeight;
        var heightMenu = $(".menu").height();
        var heightMenuContent = heightWindow - (heightMenu - $(".menu__content").height());

        if (heightMenu > heightWindow) {
            $(".menu__content").css({"height": heightMenuContent});
        } else {
            $(".menu__content").css({"height": "auto"});
        }
    }, 150)
}

function onClickMenuSelect() {
    $(".menu-select").on("click", function(e) {
        if ($(this).hasClass("open")) {
            closeMenuSelect($(this));
        } else {
            openMenuSelect($(this));
        }
    })
    $(document).click(function(e) {
        if (((!$(".menu-select").is(e.target) && $(".menu-select").has(e.target).length === 0)) && menuSelect == "open") {
            closeMenuSelect()
        }
    });
    menuSelect = "open";
}

function offClickMenuSelect() {
    $(".menu-select").off("click");
    menuSelect = "close";
    setHeightMenu();
}

function openMenuSelect(element) {
    element.addClass("open").find(".menu__submenu").slideDown(100);
    element.find(".menu-select__icon-down").fadeToggle(10);
    element.find(".menu-select__icon-up").fadeToggle(10);
    setHeightMenu();
}

function closeMenuSelect() {
    $(".menu-select").removeClass("open").find(".menu__submenu").slideUp(100);
    $(".menu-select__icon-down").fadeIn(10);
    $(".menu-select__icon-up").fadeOut(10);
    setHeightMenu();
}
