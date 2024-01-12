<% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %>

<% if $Image %>
        <div class="col-md-12 card">
            <img src="$Image.FocusFill(1400,787).URL" class="card-img-top" alt="<% if $Image.Title %>$Image.Title.ATT<% else %>$Title.ATT<% end_if %>">
        </div>
<% end_if %>
