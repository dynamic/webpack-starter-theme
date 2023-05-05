<nav class="container navbar navbar-expand-lg navbar-light <% if $SiteConfig.UtilityLinks %> has-util<% end_if %>">

    <% include HeaderConfig %>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
        <% cached 'navigation', $List('SilverStripe\CMS\Model\SiteTree').max('LastEdited'), $List('SilverStripe\CMS\Model\SiteTree').count(), $CacheBusterTimer %>
        <ul class="navbar-nav">
            <% loop Menu(1) %>
                <li class="nav-item<% if $Last %> last-parent<% end_if %><% if $Children %> dropdown <% end_if %><% if $isCurrent %> current<% else_if $isSection %> section<% end_if %>">
                    <a href="$Link" class="nav-link <% if $Last %>last<% end_if %>" title="Go to the $MenuTitle.XML page" <% if is_a(RedirectorPage) %><% if RedirectionType = External %>target="_blank" rel="noopener"<% end_if %><% end_if %>>$MenuTitle.XML</a>
                    <% if Children %>
                        <% if $Children %><a class="dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a><% end_if %>
                        <div class="dropdown-menu">
                            <% loop Children %>
                            <a role="dropdown-item" href="$Link" class="$LinkingMode dropdown-item" title="Go to the $MenuTitle.XML page" <% if is_a(RedirectorPage) %><% if RedirectionType = External %>target="_blank" rel="noopener"<% end_if %><% end_if %>>$MenuTitle.XML</a>
                            <% end_loop %>
                        </div>
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
        <% end_cached %>

        <% if $SiteConfig.UtilityLinks %>
                <ul class="navbar-nav nav-utility">
                    <% cached 'utilnavigation', $List('SilverStripe\CMS\Model\SiteTree').max('LastEdited'), $List('SilverStripe\CMS\Model\SiteTree').count() unless $CurrentUser %>
                    <% loop $SiteConfig.UtilityLinks %>
                        <li class="nav-item pos-{$Pos}<% if $isCurrent %> current<% else_if $isSection %> section<% end_if %> <% if $Last %> last-parent<% end_if %>">
                            <a href="$Link" class="nav-link <% if $Last %>last<% end_if %>" title="Go to the $MenuTitle.XML page" <% if is_a(RedirectorPage) %><% if RedirectionType = External %>target="_blank" rel="noopener"<% end_if %><% end_if %>>$MenuTitle.XML</a>
                        </li>
                    <% end_loop %>
                    <% end_cached %>
                </ul>
        <% end_if %>
    </div>
</nav>
