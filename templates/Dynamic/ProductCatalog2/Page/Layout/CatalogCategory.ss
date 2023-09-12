<div class="col-md-12">
    <article>
        <h1>$Title</h1>
        <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

        <div class="element-area main-element-area">
            $ElementalArea
        </div>
    </article>

    <hr />

    $CollectionSearchForm

    <% if $ProductList %>
        <div class="product-list row">
            <% loop $ProductList %>
                <% include ProductSummary %>
                <% if $MultipleOf(5,1) %><div class="w-100"></div><% end_if %>
            <% end_loop %>
        </div>
        <% with $ProductList %>
            <% include Pagination %>
        <% end_with %>
    <% else %>
        <p>Sorry, there are currently no products. Please refine your search or check back soon.</p>
    <% end_if %>

    $Form
</div>
