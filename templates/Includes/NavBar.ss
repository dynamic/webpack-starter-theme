<div class="bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <% include NavBarBranding %>
            </div>
            <div class="col-md-10">
                <% if $SiteConfig.UtilityLinks %>
                    <% cached 'utilnavigation', $ID, $List('SilverStripe\CMS\Model\SiteTree').max('LastEdited'), $List('SilverStripe\CMS\Model\SiteTree').count() unless $CurrentUser %>
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark utility-nav">
                        <div class="container">
                            <div class="collapse navbar-collapse" id="utilityNav">
                                <ul class="navbar-nav ms-auto">
                                    <% loop $SiteConfig.UtilityLinks %>
                                        <li class="nav-item">
                                            <a href="$Link" class="nav-link fs-6<% if $isSection || $isCurrent %> active<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %> title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a>
                                        </li>
                                    <% end_loop %>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <% end_cached %>
                <% end_if %>

                <nav class="navbar navbar-expand-lg navbar-dark bg-dark<% if $SiteConfig.UtilityLinks %> has-util<% end_if %>">

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <% cached 'navigation', $ID, $List('SilverStripe\CMS\Model\SiteTree').max('LastEdited'), $List('SilverStripe\CMS\Model\SiteTree').count(), $CacheBusterTimer %>
                        <ul class="navbar-nav ms-auto">
                            <% loop Menu(1) %>
                            <li class="nav-item<% if $Children.exists %> dropdown<% end_if %>">
                                <a class="nav-link fs-5<% if $Children.exists %> dropdown-toggle<% end_if %><% if $isSection || $isCurrent %> active<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %><% if $Children.exists %>role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" <% end_if %>href="$Link">
                                    $MenuTitle.XML
                                </a>
                                    <% if Children %>
                                        <ul class="dropdown-menu dropdown-menu-dark">
                                            <% loop Children %>
                                                <li>
                                                    <a href="$Link" class="dropdown-item<% if $isCurrent %> active<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %> title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a>
                                                </li>
                                            <% end_loop %>
                                        </ul>
                                    <% end_if %>
                                </li>
                            <% end_loop %>
                        </ul>
                        <% end_cached %>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
