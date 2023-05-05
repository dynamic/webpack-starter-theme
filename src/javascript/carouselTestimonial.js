document.addEventListener( 'DOMContentLoaded', function () {
    var splide = new Splide( '.testimonial-splide', {
    type : 'loop',
    perPage: 1,
    perMove: 1,
    autoplay: true,
    } );

    splide.mount();
} );