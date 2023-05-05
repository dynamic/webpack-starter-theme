 <div class="container">
    <div class="row">       
        <div class="col-md-12 mb-5">
            <article role="article">
                <h1 clas="form-title">$Title</h1>
                <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

                <% if $Content %>
                <div class="typography">
                    $Content
                </div>
                <% end_if %>

                <div class="element-area main-element-area">
                    $ElementalArea
                </div>

            </article>

            $Form
            $CommentsForm
        </div>
    </div>
</div>

