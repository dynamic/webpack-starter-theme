<% if $LinkedElement %>
<div class="element element--virtual element-{$LinkedElement.ClassName.ShortName.LowerCase} {$Element.ColumnClasses} bg-variant-<% if $IsLightBgColor %>light<% else %>dark<% end_if %><% if $LinkedElement.StyleVariant %> $LinkedElement.StyleVariant<% end_if %><% if $LinkedElement.ExtraClass %> $LinkedElement.ExtraClass<% end_if %>" <% if $LinkedElement.CustomStyles %>style="{$LinkedElement.CustomStyles}" <% end_if %>id="{$LinkedElement.Anchor}">
    <div class="element-inner">
        $Element
    </div>
</div>
<% end_if %>
