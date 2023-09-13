<div class="row">
    <div class="col-md-12">
        <article role="article" class="mb-5">
            <h1>$Title</h1>
            <% include SilverStripe\\Blog\\EntryMeta %>

            <% if $FeaturedImage %>
                <p class="post-image">$FeaturedImage.ScaleWidth(795)</p>
            <% end_if %>

            <div class="element-area main-element-area">
                $ElementalArea
            </div>

            <% include ShareThis %>

        </article>

        $Form
        $CommentsForm
    </div>
</div>
