document.addEventListener( 'DOMContentLoaded', function () {
    var splide = new Splide( '.splide', {
    type : 'loop',
    perPage: 3,
    perMove: 1,
    autoplay: true,
    autoScroll: {
        speed: 2,
    },
    breakpoints: {
        991: {
        perPage: 2
        },
        767: {
        perPage: 1
        },
    },
    } );

    splide.mount(window.splide.Extensions);
} );