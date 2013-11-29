<% required $form %>
<form class="<% if $type %>form-$type<%end_if %><% if $classes %> $classes<% end_if %>" $form.AttributesHTML <% dataattrs %><% if novalidate %> novalidate<% end_if %>>
	<% if $Composed %>
		<% composed %>
	<% else %>
		<% if $type = 'horizontal' %>
			<% required $leftsize, $rightsize %>

			<% loop $form.fields %>
				<% if $IsA($class, 'FieldGroup') %>
					<:bsfieldset legend=$Me.Legend>
						<% loop $Me.FieldList %>
							<:bsfieldhorizontal field=$Me leftsize=$leftsize rightsize=$rightsize />
						<% end_loop %>
					</:bsfieldset>
				<% else %>
					<:bsfieldhorizontal field=$Me leftsize=$leftsize rightsize=$rightsize />
				<% end_if %>
			<% end_loop %>

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