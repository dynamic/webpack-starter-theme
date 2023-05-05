<% if $Image %>
    <img src="$Image.URL" alt="$Image.Title">
    <% if $Headline || $Description || $PageLinkID %>
        <div class="slide-text vert-centering">
            <div class="slide-text__inner">
                <% if $Headline %><h1>$Headline</h1><% end_if %>
                <% if $Description %><div class="typography"><p class="mb-10">$Description</p></div><% end_if %>
            </div>
            <% if $Video %><a href="#" data-bs-toggle="modal" data-bs-target="#myModal-{$ID}" class="btn btn-primary" title="Watch Video">Watch Video</a><% end_if %>
        </div>
    <% end_if %>
<% end_if %>
