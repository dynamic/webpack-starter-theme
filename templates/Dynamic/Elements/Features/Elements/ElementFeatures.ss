<div class="container">
    <% if $Title && $ShowTitle || $Content || $BrushScript %>
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $BrushScript %>
                    <div class="element__title-script">$BrushScript</div>
                <% end_if %>
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                <% if $Content %><div class="element__content">$Content</div><% end_if %>
            </div>
        </div>
    <% end_if %>
    
    <% if $FeaturesList %>
        <div class="features">
            <% if $Alternate %>
                <% loop $FeaturesList %>
                    <% include FeaturesListAlternating %>
                <% end_loop %>
            <% else %>
                <% loop $FeaturesList %>
                    <% include FeaturesList %>
                <% end_loop %>
            <% end_if %>
        </div>
    <% end_if %>
</div>
