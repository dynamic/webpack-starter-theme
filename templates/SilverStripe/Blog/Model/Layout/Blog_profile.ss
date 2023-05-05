<div class="container">
    <div class="row">
        <div class="col-md-12">

            <% include SilverStripe\\Blog\\MemberDetails %>

            <% if $PaginatedList.Exists %>
                <h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
                <% loop $PaginatedList %>
                    <% include SilverStripe\\Blog\\PostSummary %>
                <% end_loop %>
            <% end_if %>

            $Form
            $CommentsForm

            <% with $PaginatedList %>
                <% include Pagination %>
            <% end_with %>

        </div>
    </div>
</div>
