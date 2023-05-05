<% if $Image %>
    <img src="$Image.URL" alt="$Image.Title">
<% end_if %>

<% if $Headline || $Description || $PageLinkID %>
    <div class="slide-text vert-centering">
        <div class="slide-text__inner">
            <h1>$Headline</h1>
            <% if $Description %><p class="mb-10">$Description</p><% end_if %>
        </div>
        <% if $SlideLink %><p class="mb-0"><a href="$SlideLink.LinkURL" class="btn" title="Go to the $SlideLink.SiteTree.MenuTitle.XML page">Learn more</a></p><% end_if %>
    </div>
<% end_if %>
