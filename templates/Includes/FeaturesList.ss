<div class="row features__feature<% if $Last %> last<% end_if %>">
    <% if $Image || $SiteConfig.ReviewContent %>
        <div class="col-md-12 col-lg-6 img-side">
            <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT"><% end_if %>
                <% if $Image %>
                    <img src="$Image.URL" class="img-fluid lazy" alt="$Image.Title.ATT">
                <% else %>
                    <img src="https://placem.at/things?w=576&h=350&random={$ID}" alt="Default Placeholder Image" class="img-fluid lazy">
                <% end_if %>
            <% if $ElementLink.LinkURL %></a><% end_if %>
        </div>
    <% end_if %>

    <div class="col-md-12 col-lg-<% if $Image || $SiteConfig.ReviewContent %>6<% else %>12<% end_if %> text-side">

    <% if $Title %><div class='element__title'>$Title</div><% end_if %>
    <% if $Content %>
        <div class='element__content typography'>$Content</div>
    <% else %>
        <% if $SiteConfig.ReviewContent %>
            <div class='feature__content typography missing'><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div>
        <% end_if %>
    <% end_if %>
    <% if $ElementLink %><a href="$ElementLink.LinkURL" class="btn btn-primary" title="Go to the $ElementLink.SiteTree.MenuTitle.XML page">$ElementLink.Title</a><% end_if %>
    </div>
</div>
