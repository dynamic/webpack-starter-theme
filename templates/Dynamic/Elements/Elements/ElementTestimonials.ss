<div class="container">
    <% if $Title && $ShowTitle || $Content %>
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                <% if $Content %><div class="element__content">$Content</div><% end_if %>
            </div>
        </div>
    <% end_if %>

    <% if $TestimonialsList %>
        <div class="row">
            <div class="col-md-12 testimonial-splide splide" role="group" aria-label="Splide Basic HTML Example">
                <div class="splide__track">
                    <ul class="splide__list">
                        <% loop $TestimonialsList %>
                            <% if $Content || $Name || $Affiliation %>
                                <div class="testimonial__quote  splide__slide <% if $First %>active<% end_if %>">
                                    <blockquote class="blockquote text-center">
                                        <% if $Content %><p>$Content</p><% end_if %>
                                        <% if $Name || $Affiliation %>
                                        <footer class="blockquote-footer">
                                            <% if $Name %>$Name<% end_if %><% if $Affiliation %><% if $Name && $Affiliation %> - <% end_if %>$Affiliation<% end_if %>
                                        </footer>
                                        <% end_if %>
                                    </blockquote>
                                </div>

                            <% end_if %>
                        <% end_loop %>
                    </ul>
                 </div>
            </div>
        </div>
    <% end_if %>
</div>

<% require javascript($resourceURL('themes/webpack-starter-theme/javascript/splide.min.js')) %>
<% require javascript($resourceURL('themes/webpack-starter-theme/javascript/splide-extension-auto-scroll.min.js')) %>
<% require javascript($resourceURL('themes/webpack-starter-theme/src/javascript/carouselTestimonial.js')) %>