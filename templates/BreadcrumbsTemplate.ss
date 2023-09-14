<% if $Pages && $Pages.Count > 1  %>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <% loop $Pages %>
                <% if $IsLast %>
                    <li class="breadcrumb-item active" aria-current="page">$MenuTitle.XML</li>
                <% else %>
                    <li class="breadcrumb-item"><a href="$Link">$MenuTitle.XML</a></li>
                <% end_if %>
            <% end_loop %>
        </ol>
    </nav>
<% end_if %>
