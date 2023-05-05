<% if $PageLink %><a href="$PageLink.Link" title="Go to the $PageLink.MenuTitle.XML page"></a><% end_if %>
<% if $Headline || $Description || $PageLinkID %>
    <div class="slide-text vert-centering">
        <div class="slide-text__inner">
            <h1>$Headline</h1>
            <% if $Description %><p class="mb-10">$Description</p><% end_if %>
        </div>
        <% if $PageLinkID %><p class="mb-0"><a href="$PageLink.Link" class="btn" title="Go to the $PageLink.MenuTitle.XML page">Learn more</a></p><% end_if %>
    </div>
<% end_if %>