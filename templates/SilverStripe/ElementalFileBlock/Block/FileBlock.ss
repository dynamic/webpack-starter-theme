<div class="container">
    <% if $Title && $ShowTitle || $Content %>
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
            </div>
        </div>
    <% end_if %>
    <% if $File %>
        <div class="row mt-5">
            <div class="col-md-12 text-center">
                $File
            </div>
        </div>
    <% end_if %>
</div>