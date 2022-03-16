import "../common/projects";

setTimeout(()=>{
    $(".contacts-bl").css("opacity", "1");
}, 500);


ymaps.ready(function () {
    var contactsMap = new ymaps.Map("contacts-map", {
        center: [37.177046, 36.702202],
        zoom: 6,
    }, {
        suppressMapOpenBlock: true, //убирает кнопку КАК ДОБРАТЬСЯ
    });

    var myPlacemark1 = new ymaps.Placemark(
        [35.335637, 33.220326],
        { hintContent: "Cyprus" },
        {
            iconLayout: "default#image",
            iconImageHref: "img/svg/marker.svg",
            iconImageSize: [25, 36],
            iconImageOffset: [-12, -36]
        }
    );

    contactsMap.geoObjects.add(myPlacemark1);
    //contactsMap.behaviors.disable("scrollZoom");
});
