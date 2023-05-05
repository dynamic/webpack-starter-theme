<div class="post-summary">
    <h2>
        <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
        <% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %>
        </a>
    </h2>

    <% include EntryMeta %>

    <% if $PreviewImage || $FeaturedImage %>
        <div class="mb-1">
            <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                <% if $PreviewImage %>
                    <img src="$PreviewImage.Fill(767,300).URL" alt="$PreviewImage.Title.ATT" class="img-fluid">
                <% else %>
                    <img src="$FeaturedImage.Fill(767,300).URL" alt="$FeaturedImage.Title.ATT" class="img-fluid">
                <% end_if %>
            </a>
        </div>
    <% end_if %>

    <% if $Abstract %>
        $Abstract
    <% else_if $FirstContent %>
        <p>$FirstContent.FirstParagraph()</p>
    <% else %>
        <p>$Content.FirstParagraph()</p>
    <% end_if %>

    <p>
        <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>" class="GA-read-more">
            <%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
        </a>
    </p>

</div>
