<section class="section">
    <div class="container">
        $Breadcrumbs(20, false, false, true)
        <h1>
            <% if $ArchiveYear %>
                <%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
                <% if $ArchiveDay %>
                    $ArchiveDate.Nice
                <% else_if $ArchiveMonth %>
                    $ArchiveDate.format('F, Y')
                <% else %>
                    $ArchiveDate.format('Y')
                <% end_if %>
            <% else_if $CurrentTag %>
                <%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
            <% else_if $CurrentCategory %>
                <%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
            <% else %>
                $Title
            <% end_if %>
        </h1>

        <div class="row">
            <div class="element-area main-element-area col-md-<% if $SideBar.Widgets.Count > 0 %>9<% else %>12<% end_if %>">
                <div class="element element-elementblogposts">
                <% if $PaginatedList.Exists %>

                        <div class="row row-blog-posts">
                            <% loop $PaginatedList %>
                                <% include ElementBlogSummary %>
                            <% end_loop %>
                        </div>

                <% else %>
                    <div class="col-md-12">
                        <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
                    </div>
                <% end_if %>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <% with $PaginatedList %>
                            <% include Pagination %>
                        <% end_with %>
                    </div>
                </div>
            </div>

            <% if $SideBar.Widgets.Count > 0 %>
                <% include SilverStripe\\Blog\\BlogSideBar %>
            <% end_if %>
        </div>
    </div>
</section>