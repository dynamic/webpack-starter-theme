<div class="row">
    <div class="col-md-12 mt-3">
        $Breadcrumbs
        <article role="article">
            <h1>$Title</h1>
            <% include PageShareLinks %>
    </div>
    <div class="col-md-<% if $SideBarView %>9<% else %>12<% end_if %>">
        <div class="row">
            <% if $FeaturedImage %>
                <div class="mb-3">
                    <img src="$FeaturedImage.FocusFill(1300,600).URL" class="img-fluid" alt="$FeaturedImage.Title" />
                </div>
            <% end_if %>
            <% if $Content %>
                <div class="typography">$Content</div>
            <% end_if %>
            <div class="element-area main-element-area">
                $ElementalArea
            </div>
            <% include SilverStripe\\Blog\\EntryMeta %>
            <% include PageShareLinks %>
        </article>
        $Form
        $CommentsForm
        </div>
    </div>
    <% if $SideBarView %>
        <% include SilverStripe\\Blog\\BlogSideBar %>
    <% end_if %>
</div>
