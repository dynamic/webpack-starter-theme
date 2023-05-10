<div class="container">
    <% if $Title && $ShowTitle || $Content %>
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                <% if $Content %><div class="element__content">$Content</div><% end_if %>
            </div>
        </div>
    <% end_if %>

<% if $SponsorsList %>
    <div class="row">
        <div class="col-md-12 sponsors-list splide" role="group" aria-label="Splide Basic HTML Example">
            <div class="splide__track">
                <ul class="splide__list">
                    <% loop $SponsorsList %>
                        <li class="sponsors-list__sponsor splide__slide <% if $First %>active<% end_if %>">
                            <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL"<% if $ElementLink.OpenInNewWindow %> target="_blank"<% end_if %> title="Go to $Title.ATT"><% end_if %>
                                <% if $Image %>
                                    <img src="$Image.Pad(576,576).URL" class="img-fluid" alt="$Title.ATT">
                                <% else_if $Title %>
                                    $Title
                                <% else %>
                                    Visit our Sponsor
                                <% end_if %>
                            <% if $ElementLink.LinkURL %></a><% end_if %>
                        </li>
                    <% end_loop %>
                </ul>
            </div>
        </div>
    </div>
<% end_if %>
</div>

<% require javascript($resourceURL('themes/dynamic/javascript/splide.min.js')) %>
<% require javascript($resourceURL('themes/dynamic/javascript/splide-extension-auto-scroll.min.js')) %>
<% require javascript($resourceURL('themes/dynamic/src/javascript/carouselSponsor.js')) %>