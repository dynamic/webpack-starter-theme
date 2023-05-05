<% if $File %>
    <span class="banner-element__image">
        $File
    </span>
<% end_if %>

<% if $Title && $ShowTitle || $Content || $BrushScript %>
    <div class="banner-element__content  <% if not $File %>no-image<% end_if %>">
        <% if $BrushScript %>
            <div class="element__title-script">$BrushScript</div>
        <% end_if %>
        <% if $Title && $ShowTitle %>
            <h2 class="banner-element__title element__title">$Title</h2>
        <% end_if %>
        <% if $Content %><div class="element__content">$Content</div><% end_if %>

        <% if $CallToActionLink.Page.Link %>
            <div class="banner-element__call-to-action-container">
            <% with $CallToActionLink %>
                <a href="{$Page.Link}" class="btn btn-primary"<% if $TargetBlank %> target="_blank"<% end_if %><% if $Description %> title="{$Description.ATT}"<% end_if %>>
                    {$Text.XML}
                </a>
            <% end_with %>
            </div>
        <% end_if %>
    </div>
<% end_if %>
