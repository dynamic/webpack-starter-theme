<% if $LinkedElement %>
<div class="element element--virtual $Element.ColumnClasses $LinkedElement.SimpleClassName.LowerCase<% if $LinkedElement.StyleVariant %> $LinkedElement.StyleVariant<% end_if %><% if $LinkedElement.ExtraClass %> $LinkedElement.ExtraClass<% end_if %> mb-4" id="{$LinkedElement.Anchor}">
    $Element
</div>
<% end_if %>
