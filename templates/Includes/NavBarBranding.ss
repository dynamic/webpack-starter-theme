<% with $SiteConfig %>
    <% if $TitleLogo = Logo %>
        <a href="$BaseHref" title="Go to the Home Page" class="navbar-brand" rel="home">
            <% if $Logo || $LogoRetina %>
                <% if $Logo && $LogoRetina %>
                    <img src="$LogoRetina.URL" width="$Logo.Width" height="$Logo.Height" class="img-fluid" alt="$LogoRetina.Title" onerror="this.onerror=null; this.src='$Logo.URL'">
                <% else_if $LogoRetina %>
                    <img src="$LogoRetina.URL" class="img-fluid" alt="$LogoRetina.Title">
                <% else %>
                    <img src="$Logo.URL" class="img-fluid" alt="$Logo.Title">
                <% end_if %>
            <% else %>
                <!--<img src="$ThemeDir/images/DynamicLogo.svg" width="auto" height="125" class="img-fluid" alt="Dynamic Agency Logo"  onerror="this.onerror=null; this.src='$ThemeDir/images/DynamicLogo.png'">-->
            <% end_if %>
        </a>
    <% else %>
        <a href="$BaseHref" title="Go to the Home Page" class="navbar-brand" rel="home">
            <% if $Title %><h1 class="mb-0">$Title</h1><% end_if %>
            <% if $Tagline %><p>$Tagline</p><% end_if %>
        </a>
    <% end_if %>
<% end_with %>
