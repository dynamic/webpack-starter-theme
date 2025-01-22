
<% if $VideoID || $EmbedVideoID %>
<div class="carousel-image carouse-video ele-height-as-var">
    <% if $VideoID && $VideoType = 'Native' %>
    <div class="ratio ratio-16x9">
        <video autoplay muted loop>
            <source src="{$Video.AbsoluteLink}" type="video/mp4">
        </video>
    </div>
    <% else_if $EmbedVideoID && $VideoType = 'Embed' %>
    <div class="ratio ratio-16x9" style="--bs-aspect-ratio: {$EmbedVideo.AspectRatioHeight}">
        {$EmbedVideo.EmbedHTML}
    </div>
    <% end_if %>
</div>
<% end_if %>

<% if $ShowCaption %>
<div class="carousel-caption-alt">
    <div class="container">
        <% if $TopTitle %><h3 class="top-title text-small mb-2 text-uppercase">$TopTitle</h3><% end_if %>

        <% if $Title && $ShowTitle %><h3 class="main-title text-big fw-bold mb-3">$Title</h3><% end_if %>

        <% if $Content %><div class="cc-content no-spacing-4-last-child">$Content</div><% end_if %>

        <% if $ElementLink %>
        <div class="cc-button pt-4">
            <% with $ElementLink %>
            <a href="$URL" class="btn btn-lg btn-light" <% if $OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>$Title</a>
            <% end_with %>
        </div>
        <% end_if %>
    </div>
</div>
<% end_if %>
