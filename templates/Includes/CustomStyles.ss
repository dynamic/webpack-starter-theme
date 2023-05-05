<% with $ThemeConfig %>
    <% if $HeaderBgColor || $HeaderColor || $FooterBgColor || $FooterColor || $NavBgColor || $NavColor %>
    <style>
        <% if $HeaderBgColor || $HeaderColor %>
        nav.navbar { <% if $HeaderBgColor %>background-color: #$HeaderBgColor;<% end_if %><% if $HeaderColor %> color: #$HeaderColor;<% end_if %> }
        <% if $HeaderColor %>nav.navbar a, nav.navbar button, nav.navbar p { color: #$HeaderColor; }<% end_if %>
        <% end_if %>
        <% if $NavBgColor || $NavColor %>
        nav.navbar #navbarNav > ul.navbar-nav { <% if $NavBgColor %>background-color: #$NavBgColor;<% end_if %> <% if $NavColor %>color: #$NavColor;<% end_if %> }
        <% if $NavBgColor %>nav.navbar #navbarNav > ul.navbar-nav a.nav-link, nav.navbar #navbarNav > ul.navbar-nav button, nav.navbar #navbarNav > ul.navbar-nav p { color: #$NavColor; }<% end_if %>
        <% end_if %>
        <% if $FooterBgColor || $FooterColor %>
        #footer { <% if $FooterBgColor %>background-color: #$FooterBgColor;<% end_if %> <% if $FooterColor %>color: #$FooterColor;<% end_if %> }
        <% if $FooterColor %>#footer a, #footer button, #footer p { color: #$FooterColor; }<% end_if %>
        <% end_if %>
    </style>
    <% end_if %>
<% end_with %>
