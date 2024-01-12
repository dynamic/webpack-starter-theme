<% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% if $Code %>
    <div class="row element__embedded__code">
        <div class="col-md-12 element__embedded__code__code">
            $Code
        </div>
    </div>
<% end_if %>
