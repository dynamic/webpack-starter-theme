<div class="row">
    <div class="col-md-12">
        $Breadcrumbs
        <article role="article">
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

            <% if $Content %>
                <div class="typography">$Content</div>
            <% end_if %>
        </article>
        <div class="row">
            <div class="col-md-<% if $SideBarView %>9<% else %>12<% end_if %>">
                <% if $PaginatedList.Exists %>
                    <div class="row element__blog__list">
                        <% loop $PaginatedList %>
                            <% include SilverStripe\\Blog\\PostSummary %>
                        <% end_loop %>
                    </div>
                <% else %>
                    <div class="col-md-12">
                        <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
                    </div>
                <% end_if %>
                <div class="row">
                    <div class="col-md-12">
                        <% with $PaginatedList %>
                            <% include Pagination %>
                        <% end_with %>
                    </div>
                </div>
                <% if $Form || $CommentsForm %>
                    <div class="row">
                        <div class="col-md-12">
                            $Form
                            $CommentsForm
                        </div>
                    </div>
                <% end_if %>
            </div>
            <% include SilverStripe\\Blog\\BlogSideBar %>
        </div>
    </div>
</div>
