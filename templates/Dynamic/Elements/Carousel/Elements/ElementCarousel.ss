<% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% include Dynamic/Carousel/Carousel %>
