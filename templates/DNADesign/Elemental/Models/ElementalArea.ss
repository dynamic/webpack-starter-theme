<% if $ElementControllers %>
    <% uncached 'blocks', $PageCacheKey unless $CurrentUser %>
    <% loop $ElementControllers %>
        $Me
    <% end_loop %>
    <% end_cached %>
<% end_if %>