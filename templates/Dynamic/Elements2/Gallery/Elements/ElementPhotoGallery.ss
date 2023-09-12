<div class="row">
    <div class="col-sm-12">
        <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
        <% if $Content %><div class="element__content">$Content</div><% end_if %>
    </div>

    <% if $Images %>
        <% loop $Images %>
            <div class="col-md-3 col-sm-4 col-6 photogallery-holder">
                <a href="$Image.URL" data-lightbox="gallery-{$Up.ID}" data-title="<h4>$Title</h4> $Content">
                    <img src="$Image.Fill(767,767).URL" alt="$Image.Title.ATT" class="img-fluid">
                </a>
            </div>
        <% end_loop %>
    <% end_if %>
</div>

<% require css('dynamic/silverstripe-elemental-blocks: thirdparty/lightbox/lightbox.css') %>

<% require javascript('dynamic/silverstripe-elemental-blocks: thirdparty/lightbox/lightbox.min.js') %>
