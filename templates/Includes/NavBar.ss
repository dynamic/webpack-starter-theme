<div class="bg-dark">
  <div class="container">
    <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
      <div class="container-fluid">
        <% include NavBarBranding %>

        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <% if $SiteConfig.UtilityLinks %>
          <% cached 'utilnavigation', $ID, $List('SilverStripe\CMS\Model\SiteTree').max('LastEdited'), $List('SilverStripe\CMS\Model\SiteTree').count() unless $CurrentUser %>
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark utility-nav d-none d-lg-block position-absolute top-0 end-0 pe-3">
              <div class="container">
                  <div class="collapse navbar-collapse" id="utilityNav">
                      <ul class="navbar-nav ms-auto">
                          <% loop $SiteConfig.UtilityLinks %>
                              <li class="nav-item">
                                  <a href="$Link" class="nav-link<% if $isSection || $isCurrent %> active<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %> title="Go to the $MenuTitle.XML page">$MenuTitle.XML</a>
                              </li>
                          <% end_loop %>
                      </ul>
                  </div>
              </div>
          </nav>
          <% end_cached %>
        <% end_if %>

        <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
          <div class="offcanvas-header align-items-start">
            <% include NavBarBranding %>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <% loop Menu(1) %>
                <li class="nav-item<% if $Children.exists %> dropdown<% end_if %>">
                  <a class="nav-link <% if $Children.exists %> dropdown-toggle<% end_if %><% if $isSection || $isCurrent %> active<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %><% if $Children.exists %>role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" <% end_if %>href="$Link">
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
              <hr class="border-light d-lg-none">
              <% if $SiteConfig.UtilityLinks %>
                <% cached 'utilnavigation', $ID, $List('SilverStripe\CMS\Model\SiteTree').max('LastEdited'), $List('SilverStripe\CMS\Model\SiteTree').count() unless $CurrentUser %>
                  <% loop $SiteConfig.UtilityLinks %>
                  <li class="nav-item d-lg-none">
                    <a href="$Link" class="nav-link<% if $isSection || $isCurrent %> active<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %>>
                      $MenuTitle.XML
                    </a>
                  </li>
                  <% end_loop %>
                <% end_cached %>
              <% end_if %>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </div>
</div>