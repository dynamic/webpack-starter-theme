<% if Pages && CurrentLevel > 1  %>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <%--<li class="breadcrumb-item"><a href="/" title="Go to the Home Page">Home</a></li>--%>
        <% loop Pages %>
            <% if Last %>
                <li class="breadcrumb-item active" aria-current="page">$MenuTitle.XML</li>
            <% else %>
                <li class="breadcrumb-item"><a href="$Link" title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a></li>
            <% end_if %>
        <% end_loop %>
    </ol>
</nav>
<% end_if %>