<% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% if $SectionNavigation %>
    <div class="list-group">
    <% loop $SectionNavigation %>
        <a href="$Link.ATT" class="$FirstLast list-group-item list-group-item-action" title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a>
    <% end_loop %>
    </div>
<% end_if %>