<% required $style %>
<% if $href %>
	<a class="btn<% if $style %> btn-$style<% end_if %><% if $size %> btn-$size<% end_if %><% if $disabled %> disabled<% end_if %> $classes" <% dataattrs %> href="$href"><% composed %></a>
<% else %>
	<button <% if $type %>type="$type"<% end_if %> class="btn btn-$style<% if $size %> btn-$size<% end_if %> $classes"<% if $name %> name="$name"<% end_if %><% if $disabled %> disabled="disabled"<% end_if %> <% dataattrs %>><% composed %></button>
<% end_if %>