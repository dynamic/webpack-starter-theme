<% if $Tags %>
    <div class="list-group widget blog-widget">
        <% loop $Tags %>
            <a href="$Link" class="$FirstLast list-group-item list-group-item-action<% if $isCurrent %> active<% end_if %>" title="$Title.XML">
                <div class="text tagCount{$NormalizedTag} d-flex justify-content-between align-items-center">$TagName<span class="badge badge-secondary badge-pill">$TagCount</span></div>
            </a>
        <% end_loop %>
    </div>
<% end_if %>