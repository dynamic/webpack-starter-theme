<div class="container">
    <% if $Title && $ShowTitle %>
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
            </div>
        </div>
    <% end_if %>
    <% if $Code %>
    <div class="row">
        <div class="col-md-12 text-center">
            <% if $Code %>$Code<% end_if %>
        </div>
    </div>
    <% end_if %>
</div>
