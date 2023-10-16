<footer class="bg-light p-3">
    <div class="container">
        <div class="row">
            <% with $SiteConfig %>
                <div class="col-md-9">
                    <div class="row">
                        <% if $NavigationColumns %>
                            <% loop $NavigationColumns.Limit(3) %>
                                <div class="col-md-4">
                                    <nav class="footerNav">
                                        <% loop $NavigationGroups %>
                                            <% if $NavigationLinks.Count %>
                                                <ul class="nav flex-column">
                                                    <% loop $NavigationLinks.Sort('SortOrder') %>
                                                        <li class="nav-item">
                                                            <a class="nav-link $LinkingMode" href="$Link" title="Go to the $MenuTitle.XML page">$Title</a>
                                                        </li>
                                                    <% end_loop %>
                                                </ul>
                                            <% end_if %>
                                        <% end_loop %>
                                    </nav>
                                </div>
                            <% end_loop %>
                        <% end_if %>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="px-3 px-md-0">
                    <% if $SocialMetaSiteName || $MicroDataStreetAddress %>
                        <% if $SocialMetaSiteName %><h5>$SocialMetaSiteName</h5><% end_if %>
                        <% if $MicroDataStreetAddress %><p class="mb-0">$MicroDataStreetAddress</p><% end_if %>
                        <% if $MicroDataCity || $MicroDataRegion || $MicroDataPostCode %><p class="mb-0"><% if $MicroDataCity %>$MicroDataCity<% end_if %><% if $MicroDataCity && $MicroDataRegion %>, <% end_if %><% if $MicroDataRegion %>$MicroDataRegion<% end_if %><% if $PostalCode %> $MicroDataPostCode<% end_if %></p><% end_if %>
                        <% if $MicroDataPhone %><p class="mb-0"><a href="tel:$MicroDataPhone" title="Call $MicroDataPhone">$MicroDataPhone</a></p><% end_if %>
                        <% if $MicroDataEmail %><p class="mb-0"><a href="mailto:$MicroDataEmail" title="Email $MicroDataEmail">Email Us</a></p><% end_if %>
                    <% end_if %>
                    <% if $SocialLinks %>
                        <div class="social-links mt-3">
                            <ul class="list-group list-group-horizontal">
                                <% loop $SocialLinks %>
                                    <li class="list-group-item">
                                        <a href="$Link" title="Go to {$SiteConfig.CompanyName}&apos;s $Site page" class="$Site">
                                            <% if $Site == 'facebook' %>
                                                <i class="fab fa-facebook-f"></i>
                                            <% else_if $Site == 'twitter' %>
                                                <i class="fab fa-twitter"></i>
                                            <% else_if $Site == 'youtube' %>
                                                <i class="fab fa-youtube"></i>
                                            <% else_if $Site == 'linkedin' %>
                                                <i class="fab fa-linkedin-in"></i>
                                            <% else_if $Site == 'pinterest' %>
                                                <i class="fab fa-pinterest-p"></i>
                                            <% else_if $Site == 'instagram' %>
                                                <i class="fab fa-instagram"></i>
                                            <% else %>
                                                $Title
                                            <% end_if %>
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                    </div>
                </div>
            <% end_with %>
        </div>
    </div>
    <div id="copyright">
        <div class="container">
            <div class="col-sm-12 text-center copyright-text">
                <p><% if $SiteConfig.SocialMetaSiteName %>&copy; $Now.Year $SiteConfig.SocialMetaSiteName<% end_if %></p>
            </div>
        </div>
    </div>
</footer>
