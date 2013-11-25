<% required $form %>
<form class="<% if $type %>form-$type<%end_if %><% if $classes %> $classes<% end_if %>" $form.AttributesHTML <% dataattrs %><% if novalidate %>novalidate<% end_if %>>
	<% if $Composed %>
		<% composed %>
	<% else %>
		<% if $type = 'horizontal' %>
			<% required $leftsize, $rightsize %>

			<:bsfieldsethorizontal fields=$form.Fields leftsize=$leftsize rightsize=$rightsize />

			<:bsformgroup>
				<:column size=$rightsize push=$leftsize>
					<:bsactions actions=$form.Actions />
				</:column>
			</:bsformgroup>
		<% else %>
			<:bsfieldsetinline fields=$form.Fields />

			<:bsformgroup>
				<:bsactions actions=$form.Actions />
			</:bsformgroup>
		<% end_if %>
	<% end_if %>
</form>