<div class="list-group-item SitemapEntry">
    <a href="$Link" title="$Title.ATT" class="d-flex w-100">$MenuTitle.XML</a>
    <% if SitemapChildren %>
        <div class="list-group list-group-flush mt-3 SitemapChildren ">
            <% loop SitemapChildren %>
                $RenderSitemap
            <% end_loop %>
        </div>
    <% end_if %>
</div>
