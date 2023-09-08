<div class="container">
    <% include PageHeaderImage %>
    <div class="row">
        <div class="col-md-12">
            <% if $Breadcrumbs  %>
                $Breadcrumbs(20, false, false, true)
            <% end_if %>
        </div>
    </div>
    <h1>$Title</h1>
    <% if $Content %><div class="col-md-12">$Content</dev><% end_if %>

    <div class="element-area main-element-area">
        $ElementalArea
    </div>

    $Form
    $CommentsForm
</div>
