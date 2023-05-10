<% cached $LastEdited, $Page.CacheBusterTimer %>

    <div class="container">
        <div class="row">
            <div class="col-md-12 <% if $StyleVariant == style-blue %>text-center<% end_if %>">
            <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
            <% if $HTML %>
                <div class="element__content typography">$HTML</div>
            <% else %>
                <% if $SiteConfig.ReviewContent %>
                    <div class="element__content typography missing">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin velit odio, pharetra eu leo vel, gravida auctor ipsum. Etiam sed orci quis ante imperdiet auctor eget id diam. Quisque ultrices eget enim ac varius. Maecenas rutrum massa ex, vitae efficitur tellus suscipit feugiat. Mauris bibendum eros orci, in pellentesque elit aliquam in. Aenean vitae elementum purus, vel sagittis quam. Mauris vitae laoreet lectus. Pellentesque lobortis, diam eget maximus feugiat, sapien sapien lobortis dui, nec fringilla leo massa suscipit nibh. Aenean eu nibh erat. Nulla eget cursus neque. In porta elementum lacus et maximus. Donec in rutrum massa, eleifend auctor nisi. Donec leo augue, viverra sit amet quam sit amet, rutrum tristique tellus. Aliquam erat volutpat.</p>
                    </div>
                <% end_if %>
            <% end_if %>
            </div>
        </div>
    </div>
<% end_cached %>
