<% if $EmbeddedObject || $Title && $ShowTitle || $BrushScript || $EmbeddedObject.Description %>
<div id="oembed">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 oembed__content">
                <% if $BrushScript %>
                    <div class="element__title-script">$BrushScript</div>
                <% end_if %>
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% else_if $EmbeddedObject.Title %><h2 class="element__title">$EmbeddedObject.Title</h2><% end_if %>
                <% if $EmbeddedObject.Description %><p>$EmbeddedObject.Description</p><% end_if %>
            </div>
            <div class="col-md-6 oembed__video">
                <% if $EmbeddedObject %>
                    <div class="embed-responsive embed-responsive-16by9">
                        $EmbeddedObject
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
<% end_if %>

<%-- Below is used for a popup version instead --%>
<%--
<% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>

<% if $EmbeddedObject %>
    <% if $EmbeddedObject.ThumbURL %>
        <img src="$EmbeddedObject.ThumbURL" class="img-fluid mb-2" alt="$EmbeddedObject.Title">
    <% end_if %>
    <div class="promo-text">
        <% if $EmbeddedObject.Title %><h3>$EmbeddedObject.Title</h3><% end_if %>
        <% if $EmbeddedObject.Description %><p>$EmbeddedObject.Description</p><% end_if %>
        <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Watch Video</a>
    </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">$EmbeddedObject.Title</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="embed-responsive embed-responsive-16by9">
                        $EmbeddedObject
                    </div>
                </div>
            </div>
        </div>
    </div>
<% end_if %>

--%>
