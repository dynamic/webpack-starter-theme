<div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="form-element__form $ExtraClass">
          <% if $Title && $ShowTitle %><h2 class="form-element__title element__title">$Title</h2><% end_if %>

          <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>*</strong> Denotes required field.
            <button type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          $Form
      </div>
    </div>
  </div>
</div>

<%--<% require javascript($resourceURL('themes/silverstripe-starter-theme/src/javascript/thirdparty/jquery.validate.min.js')) %>--%>
<% require javascript('silverstripe/admin: client/dist/js/i18n.js') %>
<% require javascript('silverstripe/userforms: client/lang/en.js') %>
<% require javascript('silverstripe/userforms: client/lang/en_US.js') %>
<% require javascript('silverstripe/userforms: client/dist/js/userforms.js') %>
