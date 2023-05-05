<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>$Title</h1>
            <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

            <% if SitemapRootPages %>
                <div class="typography">
                    <div class="list-group SitemapChildren Root">
                        <% loop SitemapRootPages %>
                            $RenderSitemap
                        <% end_loop %>
                    </div>
                </div>
            <% end_if %>

            <div class="element-area main-element-area">
                $ElementalArea
            </div>

            $Form
            $PageComments
        </div>
    </div>
</div>
