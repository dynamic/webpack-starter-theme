
<% if $Title && $ShowTitle %>
    <div class="container">
        <% if $Title && $ShowTitle || $BrushScript %>
            <div class="row title-holder">
                <div class="col-md-12 text-center">
                    <% if $BrushScript %>
                        <div class="element__title-script">$BrushScript</div>
                    <% end_if %>
                    <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                </div>
            </div>
        <% end_if %>
    </div>
<% end_if %>

<% if $Image %>
    <img src="$Image.URL" class="img-fluid lazy" alt="$Image.Title.ATT">
<% end_if %>
