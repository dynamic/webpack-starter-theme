<div class="row">
    <div class="col-md-12">
        <article role="article" class="mb-5">
            <h1>$Title</h1>
            <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>
            <% include EntryMeta %>

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
