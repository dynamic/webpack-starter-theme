document.addEventListener( 'DOMContentLoaded', function () {
    var splide = new Splide( '.slideshow-splide', {
    type : 'loop',
    perPage: 1,
    perMove: 1,
    autoScroll: false
    } );

    splide.mount(window.splide.Extensions);
} );