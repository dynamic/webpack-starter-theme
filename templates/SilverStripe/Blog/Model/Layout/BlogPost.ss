<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-12 mt-3">
                $Breadcrumbs(20, false, false, true)
            </div>
        </div>
        <div class="col-md-<% if $SideBarView %>9<% else %>12<% end_if %> mb-3">
            <article role="article">
                <h1>$Title</h1>
                <% include SilverStripe\\Blog\\EntryMeta %>
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
                </div>
            </article>
            $Form
            $CommentsForm
        </div>
        <% if $SideBarView %>
            <% include SilverStripe\\Blog\\BlogSideBar %>
        <% end_if %>
    </div>
</div>