$(document).ready(function () {
    $('.list-slider').slick({
        slidesToShow: 4,
        dots: true,
        slidesToScroll: 2
    });
    $('.hotel-img-slider').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        infinite: false
    });
    $('.slider-images').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        speed: 900,
        autoplay: true,
        autoplaySpeed: 3000
    });
});