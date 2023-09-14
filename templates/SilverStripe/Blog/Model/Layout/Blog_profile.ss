<div class="row">
    <div class="col-md-12">
        $Breadcrumbs
        <h1>$CurrentProfile.FirstName $CurrentProfile.Surname</h1>
        <div class="row">
            <div class="col-md-<% if $SideBarView %>9<% else %>12<% end_if %>">
                <% include SilverStripe\\Blog\\MemberDetails %>
                <h2>Posts</h2>
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
