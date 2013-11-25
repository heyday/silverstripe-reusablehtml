<% required $style %>
<% if $href %>
	<a class="btn<% if $style %> btn-$style<% end_if %><% if $size %> btn-$size<% end_if %> $classes" href="$href"><% composed %></a>
<% else %>
	<button <% if $type %>type="$type"<% end_if %> class="btn btn-$style<% if $size %> btn-$size<% end_if %> $classes"><% composed %></button>
<% end_if %>