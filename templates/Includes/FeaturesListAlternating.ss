<div class="row features__feature features__feature--alternating<% if $Last %> last<% end_if %>">
    <div class="col-md-12 col-lg-6 px-0 img-side">
        <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT"><% end_if %>
            <% if $Image %>
                <img src="$Image.URL" class="img-fluid lazy feauture__image" alt="$Image.Title.ATT">
            <% else %>
                <% if $SiteConfig.ReviewContent %>
                    <img src="https://placem.at/things?w=576&h=350&random={$ID}" alt="Default Placeholder Image" class="img-fluid lazy">
                <% end_if %>
            <% end_if %>
        <% if $ElementLink.LinkURL %></a><% end_if %>
    </div>
    <div class="col-md-12 col-lg-6<% if $Odd %> order-lg-first<% end_if %> text-side">
        <% if $Title %><div class='element__title'>$Title</div><% end_if %>
        <% if $Content %>
            <div class='element__content typography'>$Content</div>
        <% else %>
            <% if $SiteConfig.ReviewContent %>
                <div class='element__content typography missing'><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div>
            <% end_if %>
        <% end_if %>

        <% if $ElementLink %><a href="$ElementLink.LinkURL" class="btn btn-primary" title="Go to the $ElementLink.SiteTree.MenuTitle.XML page">$ElementLink.Title</a><% end_if %>
    </div>
</div>
