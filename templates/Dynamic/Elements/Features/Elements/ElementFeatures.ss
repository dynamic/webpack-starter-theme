<% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% if $FeaturesList %>
    <div class="row g-0 element__features__list">
        <% include FeaturesList Top=$Top %>
    </div>
<% end_if %>
