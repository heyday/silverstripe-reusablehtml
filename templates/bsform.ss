<% required $form %>

<% if $form.Message %>
	<% if $form.MessageType == 'bad' %>
		<:bsalert type="danger">$form.Message</:bsalert>
	<% else_if $form.MessageType == 'good' %>
		<:bsalert type="success">$form.Message</:bsalert>
	<% else %>
		<:bsalert type="warning">$form.Message</:bsalert>
	<% end_if %>
	$form.clearMessage
<% end_if %>

<form class="<% if $type %>form-$type<%end_if %><% if $classes %> $classes<% end_if %>" $form.AttributesHTML <% dataattrs %><% if novalidate %> novalidate<% end_if %>>
	<% if $Composed %>
		<% composed %>
	<% else %>
		<% if $type = 'horizontal' %>
			<% required $leftsize %>

			<% loop $form.fields %>
				<% if $IsA($class, 'FieldGroup') %>
					<:bsfieldset legend=$Me.Legend>
						<% loop $Me.FieldList %>
							<:bsfieldhorizontal field=$Me nopadding=$nopadding leftsize=$leftsize />
						<% end_loop %>
					</:bsfieldset>
				<% else %>
					<:bsfieldhorizontal field=$Me nopadding=$nopadding leftsize=$leftsize />
				<% end_if %>
			<% end_loop %>

			<:bsformgroup>
				<:column push=$leftsize nopadding=$nopadding>
					<:bsactions actions=$form.Actions />
				</:column>
			</:bsformgroup>

		<% else_if $type = 'inline' %>
			<% loop $form.fields %>
				<% if $IsA($class, 'FieldGroup') %>
					<:bsfieldset legend=$Me.Legend>
						<% loop $Me.FieldList %>
							<:bsfieldinline field=$Me />
						<% end_loop %>
					</:bsfieldset>
				<% else %>
					<:bsfieldinline field=$Me />
				<% end_if %>
			<% end_loop %>

			<:bsformgroup>
				<:bsactions actions=$form.Actions />
			</:bsformgroup>
		<% else %>
			<% loop $form.fields %>
				<% if $IsA($class, 'FieldGroup') %>
					<:bsfieldset legend=$Me.Legend>
						<% loop $Me.FieldList %>
							<:bsfieldnormal field=$Me />
						<% end_loop %>
					</:bsfieldset>
				<% else %>
					<:bsfieldnormal field=$Me />
				<% end_if %>
			<% end_loop %>

			<:bsformgroup classes="l-padding">
				<:bsactions actions=$form.Actions />
			</:bsformgroup>
		<% end_if %>
	<% end_if %>
</form>