<% if $Title && $ShowTitle || $Content %>
    <div class="container">
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                <% if $Content %><div class="element__content">$Content</div><% end_if %>
            </div>
        </div>
    </div>
<% end_if %>

<% if $SlideShow %>
    <% include Slideshow %>
<% end_if %>
