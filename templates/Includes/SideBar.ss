<h3><% if Level(2) %>$Parent.Title<% else %>$Title <% end_if %></h3>
<% if Menu(2) %>
    <nav class="secondary">
        <ul>
            <% loop Menu(2) %>
                <li class="$LinkingMode">
                    <a href="$Link" title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a>
                    <% if MenuChildren %>
                        <ul>
                            <% loop MenuChildren %>
                                <li class="$LinkingMode"><a href="$Link" title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a></li>
                            <% end_loop %>
                        </ul>
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
    </nav>
<% end_if %>