<% if $Categories %>
    <div class="list-group widget blog-widget">
        <% loop $Categories %>
            <a href="$Link" class="$FirstLast list-group-item list-group-item-action<% if $isCurrent %> active<% end_if %>" title="$Title.XML">$Title.XML</a>
        <% end_loop %>
    </div>
<% end_if %>