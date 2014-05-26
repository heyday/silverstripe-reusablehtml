<% required $field, $leftsize %>


<% if $IsA($class, 'FieldGroup') %>
	<br />
	<% loop $field.FieldList %>
		<:bsfieldhorizontal field=$me leftsize=$leftsize nopadding=$nopadding />
	<% end_loop %>
<% else_if $IsA($class, 'HiddenField') %>
	<:bsinputfield field=$field />
<% else %>
<:bsformgroup classes="<% if $required %>form-constaint-required<% end_if %><% if $field.Message %> has-error<% end_if %>">
	<% if $IsA($class, 'HiddenField') %>
		$field.addExtraClass("form-control")
	<% else_if $IsA($class, 'CheckboxField') %>
		<:column nopadding=$nopadding push=$leftsize>
			<:bscheckboxfield name=$field.getName checked=$field.value value="1" title=$field.Title />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
		</:column>
	<% else_if $IsA($class, 'CheckboxSetField') %>
		<% if $field.Title %>
			<label for="$field.ID" class="l-col-$leftsize<% if not $nopadding %> l-padding<% end_if %> control-label">
				$field.Title
			</label>
		<% end_if %>

		<:column nopadding=$nopadding push=$leftsize>
			<:bscheckboxsetfield field=$field />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
		</:column>
	<% else_if $IsA($class, 'OptionsetField') %>
		<% if $field.Title %>
			<label for="$field.ID" class="l-col-$leftsize<% if not $nopadding %> l-padding<% end_if %> control-label">
				$field.Title
			</label>
		<% end_if %>

		<:column nopadding=$nopadding push=$leftsize>
			<:bsoptionssetfield field=$field />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
		</:column>
	<% else_if $IsA($class, 'FileField') %>
		<% if $field.Title %>
			<label for="$field.ID" class="l-col-$leftsize<% if not $nopadding %> l-padding<% end_if %> control-label">
				$field.Title
			</label>
		<% end_if %>

		<:column nopadding=$nopadding push=$leftsize>
			<:bsfilefield field=$field />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
			<% if $field.message %>
				<:bsinputinfo>$field.Message</:bsinputinfo>
			<% end_if %>
		</:column>
	<% else_if $IsA($class, 'LiteralField') %>
		<:column nopadding=$nopadding push=$leftsize>
			$field.content
		</:column>
	<% else %>
		<% if $field.Title %>
			<label for="$field.ID" class="l-col-$leftsize<% if not $nopadding %> l-padding<% end_if %> control-label">
				$field.Title
			</label>
		<% end_if %>

		<:column nopadding=$nopadding push=$leftsize>
			<:bsinputfield field=$field />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
		</:column>
	<% end_if %>
</:bsformgroup>
<% end_if %>
