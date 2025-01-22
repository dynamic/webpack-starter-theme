<div class="carousel-image ele-height-as-var">
    <picture>
        <source media="(max-width: 768px)" srcset="<% if $ImageMobileID && $ImageMobile.exists %>{$ImageMobile.FocusFill(786,576).URL}<% else %>{$Image.FocusFill(786,576).URL}<% end_if %>" />

        <% if $Image.Width == 1920 && $Image.Height == 823 %>
        <img src="$Image.URL" class="d-block w-100 image-fluid" alt="$Image.Title.XML" loading="lazy">
        <% else %>
        <img src="$Image.FocusFill(1920,893).URL" class="d-block w-100 image-fluid" alt="$Image.Title.XML" loading="lazy">
        <% end_if %>
    </picture>
</div>

<% if $ShowCaption %>
<div class="carousel-caption-alt">
    <div class="container">
        <% if $TopTitle %><h3 class="top-title text-small mb-2 text-uppercase">$TopTitle</h3><% end_if %>

        <% if $Title && $ShowTitle %><h3 class="main-title text-big fw-bold mb-3">$Title</h3><% end_if %>

        <% if $Content %><div class="cc-content no-spacing-4-last-child">$Content</div><% end_if %>

        <% if $ElementLink %>
        <div class="cc-button pt-4">
            <% with $ElementLink %>
            <a href="$URL" class="btn btn-lg btn-light<% if $LoanSpeedBump %> loan-speed-bump<% end_if %>" <% if $OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>$Title</a>
            <% end_with %>
        </div>
        <% end_if %>
    </div>
</div>
<% end_if %>
