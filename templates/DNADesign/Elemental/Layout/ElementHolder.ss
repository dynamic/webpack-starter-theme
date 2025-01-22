<div class="element element-{$ClassName.ShortName.LowerCase} {$Element.ColumnClasses} bg-variant-<% if $IsLightBgColor %>light<% else %>dark<% end_if %><% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %>" <% if $CustomStyles %>style="{$CustomStyles}" <% end_if %>id="$Anchor">
    <div class="element-inner">
        $Element
    </div>
</div>
