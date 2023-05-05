<div class="container">
    <div class="row">
        <div class="col-md-12">

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

                <div class="element-area main-element-area mb-3">
                    $ElementalArea
                </div>


                <% if $PaginatedList.Exists %>
                    <% loop $PaginatedList %>
                        <% include PostSummary %>
                    <% end_loop %>
                <% else %>
                    <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
                <% end_if %>
            </article>

            <% with $PaginatedList %>
                <% include Pagination %>
            <% end_with %>

            $Form
            $CommentsForm

        </div>
    </div>
</div>

<!--
<div class="col-md-3 sidebar">
    <% if $SideBarView %>
        $SideBarView
    <% end_if %>
</div>
-->
