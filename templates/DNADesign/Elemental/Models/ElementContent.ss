<div class="$ElementClasses" data-media-pos="{$MediaPosition}">
    <% if $TopTitle %>
    <div class="d-block d-lg-none text-center">
        <span class="top-title d-inline-block">{$TopTitle}</span>
    </div>
    <% end_if %>

    <div class="$MediaColumnClasses">
        <% if $MediaType == 'image' && $MediaImage %>
            <% if $MediaImage %>
                <% if $MediaCaption %><div class="captionImage"><% end_if %>
                <figure class="image<% if $MediaRatioClass %> $MediaRatioClass<% end_if %>">
                    <picture>
                        <source media="(max-width: 992px)" srcset="<% if $MediaImageMobileID && $MediaImageMobile.exists %>{$MediaImageMobile.FocusFill(480,480).URL}<% else %>{$MediaImage.FocusFill(480,480).URL}<% end_if %>" />

                        <% if $MediaImage.Width == $MediaImageWidth && $MediaImage.Height == $MediaImageHeight %>
                            <img src="$MediaImage.URL" alt="$MediaImage.Title" width="$MediaImageWidth" height="$MediaImageHeight" class="is-block" loading="lazy">
                        <% else %>
                        <img src="$MediaImageSourceURL" alt="$MediaImage.Title" width="$MediaImageWidth" height="$MediaImageHeight" class="is-block" loading="lazy">
                        <% end_if %>
                    </picture>
                </figure>
                <% if $MediaCaption %><p class="caption leftAlone">$MediaCaption</p><% end_if %>
                <% if $MediaCaption %></div><% end_if %>
            <% end_if %>
        <% else_if $MediaType == 'video' && $MediaVideoFullURL && $MediaVideoEmbeddedURL %>
            <% if $MediaCaption %><div class="captionImage mb-0"><% end_if %>
            <figure class="ratio video image<% if $MediaRatioClass %> ratio-$MediaRatioClass<% end_if %>" data-video-embed-url="$MediaVideoEmbeddedURL" data-element-id="$ID" data-video-type="$MediaVideoProvider">
                <div class="video-thumbnail<% if $MediaVideoHasOverlay %> has-overlay<% end_if %>" id="playVideo-$ID" style="background-image: url('<% if $MediaVideoCustomThumbnail %>$MediaVideoCustomThumbnail.FocusFill(1440,800).URL<% else %>$MediaVideoEmbeddedThumbnail<% end_if %>')">
                    <span class="btn-play-video">
                        <span class="svg-icon">
                            <% include Includes/Icons/ButtonPlay %>
                        </span>
                    </span>
                </div>
                <div class="video-wrapper" id="player-$ID"></div>
            </figure>
            <% if $MediaCaption %><p class="caption leftAlone mb-0">$MediaCaption</p><% end_if %>
            <% if $MediaCaption %></div><% end_if %>
            <script type="application/ld+json">
            {
                "@context": "http://schema.org",
                "@type": "VideoObject",
                "playerType": "HTML5",
                "embedUrl": "$MediaVideoEmbeddedURL",
                "name": "$MediaVideoEmbeddedName",
                "description": "$MediaVideoEmbeddedDescription",
                "thumbnailUrl": "$MediaVideoEmbeddedThumbnail",
                "uploadDate": "$MediaVideoEmbeddedCreated"
            }
        </script>
        <% end_if %>
    </div>

    <div class="$ContentColumnClasses">
        <div class="$ContentClasses"<% if $CustomContentStyles %> style="{$CustomContentStyles}"<% end_if %>>
            <% if $TopTitle %>
            <div class="d-none d-lg-block">
                <span class="top-title d-inline-block">{$TopTitle}</span>
            </div>
            <% end_if %>

            <% if $ShowTitle %>
                <$TitleTag class="main-title <% if $TitleClass %>{$TitleSizeClass}<% else %>default-class<% end_if %> font-secondary">{$Title}</$TitleTag>
            <% end_if %>

            <div class="main-text no-spacing-4-last-child">
                {$HTML}
            </div>

            <% if $ElementLinkID && $ElementLink.URL %>
            <div class="ele-link mt-4">
                <a href="{$ElementLink.URL}" class="btn btn-lg btn-light<% if $ElementLink.LoanSpeedBump %> loan-speed-bump<% end_if %>"<% if $ElementLink.OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$ElementLink.Title</a>
            </div>
            <% end_if %>
        </div>
    </div>
</div>
