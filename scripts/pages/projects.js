setTimeout(()=>{
    $(".objects-section").css("opacity", "1");
}, 800);

var windowWidth = $(window).width();
var projects = document.querySelectorAll(".objects__item");
var selectedProjects = document.querySelectorAll(".objects__item");
var projectList = document.querySelector(".objects__list");
var getMore = document.querySelector(".get-more");
var filterTabs = document.querySelectorAll(".gallery__tab");
var projectsCntElement = document.querySelector(".objects__cnt span");

if (windowWidth < 768) {
    removeWrapper();
}

// слушаем изменение размера окна и убираем или добавляем обертки рядов .objects__wrapper
$(window).resize(() => {
    if($(window).width() < 768 && windowWidth >= 768) {
        removeWrapper();
    } else if($(window).width() >= 768 && windowWidth < 768) {
        renderWithWrapper();
    };
});

/**
 * Функция удаляет обертки рядов .objects__wrapper оставляя .objects__item при именении размера окна
 */
function removeWrapper() {
    //ES5
    document.querySelectorAll('.objects__wrapper').forEach((el) => el.replaceWith(...el.childNodes));
    windowWidth = 700;
}

/**
 * Функция очищает objects__list и добавляет в него обертки рядов .objects__wrapper и в них по три .objects__item при именении размера окна.
 * В последнюю обертку .objects__wrapper добавляет блок .get-more
 */
function renderWithWrapper() {
    var countProjects = selectedProjects.length;
    var countRows = Math.ceil(countProjects / 3);
    projectsCntElement.textContent = countProjects;

    while (projectList.firstChild) {
        projectList.firstChild.remove();
    }

    for (let i = 0; i < countRows; i++) {
        let div = document.createElement('div');
        if (i == countRows - 1 && countProjects % 3 != 0) {
            div.className = "objects__wrapper objects__wrapper-last";
        } else {
            div.className = "objects__wrapper";
        }

        for (let j = 0; j < 3; j++) {
            var indexObject = i * 3 + j;
            if (indexObject < countProjects) {
                div.append(selectedProjects[indexObject]);
            } else if (countProjects % 3 != 0) {
                let el = document.createElement('div');
                if (countRows * 3 - countProjects == 2) {
                    el.className = "objects__get-more objects__get-more_small";
                } else {
                    el.className = "objects__get-more objects__get-more_big";
                }
                el.append(getMore);
                div.append(el);
                break;
            }
        }
        projectList.append(div);
    }

    if (countProjects % 3 == 0) {
        let div = document.createElement('div');
        div.className = "objects__wrapper objects__wrapper-last";
        let el = document.createElement('div');
        el.className = "objects__get-more objects__get-more_big";
        el.append(getMore);
        div.append(el);
        projectList.append(div);
    }

    windowWidth = 800;
}

/**
 * Функция очищает objects__list и добавляет в него актуальные objects__item и блок .get-more
 */
function renderWithoutWrapper() {
    projectsCntElement.textContent = selectedProjects.length;

    while (projectList.firstChild) {
        projectList.firstChild.remove();
    }

    selectedProjects.forEach((el) => {
        projectList.append(el);
    })

    let el = document.createElement('div');
    el.className = "objects__get-more objects__get-more_big";
    el.append(getMore);
    projectList.append(el);
}

// Переключение вкладок фильтра
filterTabs.forEach((el) => {
    el.addEventListener("click", (e) => {
        var tab = e.target;

        if (!tab.classList.contains("selected")) {
            filterTabs.forEach((el) => el.classList.remove("selected"));
            tab.classList.add("selected");
        }
        if (tab.dataset.type === "all") {
            selectedProjects = [...projects];
        } else {
            getSelectedProjects(tab.dataset.type);
        }

        if (windowWidth >= 768) renderWithWrapper()
        else renderWithoutWrapper();
    })
})

/**
 * Функция сортирует узлы projects и создаёт новый массив узлов selectedProjects в зависимости от переданного типа
 * @param {string} type выбранный тип project
 */
function getSelectedProjects(type) {
    selectedProjects = [];

    projects.forEach((el) => {
        var types = el.querySelectorAll(".objects-item__type");
        types.forEach((node) => {
            if(node.dataset.type === type) {
                selectedProjects.push(el);
            }
        })
    })
}
