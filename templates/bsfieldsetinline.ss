<% required $fields %>

<fieldset <% if $classes %>class="$classes"<% end_if %> <% dataattrs %>>
<% if $legend %>
	<legend>$legend</legend>
<% end_if %>
<% loop $fields %>
	<:bsformgroup>
		<% if not $IsA($class, 'HiddenField') %>
			<label class="h-visuallyhidden" for="$ID">$Title</label>
		<% end_if %>
		<:bsinputfield field=$Me />
	</:bsformgroup>
<% end_loop %>
</fieldset>