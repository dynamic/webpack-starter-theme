<div class="form-element__form $ExtraClass">
  <% if $Title && $ShowTitle %>
    <$TitleTag class="main-title <% if $TitleClass %>{$TitleSizeClass}<% else %>default-class<% end_if %>">{$Title}</$TitleTag>
  <% end_if %>

  <%--
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>*</strong> Denotes required field.
    <button type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  --%>

  <div class="form-default form-rounded-inputs form-label-as-placeholder">
    $Form
  </div>
</div>

<%--<% require javascript($resourceURL('themes/silverstripe-starter-theme/src/javascript/thirdparty/jquery.validate.min.js')) %>--%>
<% require javascript('silverstripe/admin: client/dist/js/i18n.js') %>
<% require javascript('silverstripe/userforms: client/lang/en.js') %>
<%--<% require javascript('silverstripe/userforms: client/lang/en_US.js') %>--%>
<% require javascript('silverstripe/userforms: client/dist/js/userforms.js') %>
