<% required $field, $leftsize, $rightsize %>


<% if $IsA($class, 'FieldGroup') %>
	<br />
	<% loop $field.FieldList %>
		<:bsfieldhorizontal field=$me leftsize=$leftsize rightsize=$rightsize nopadding=$nopadding />
	<% end_loop %>
<% else_if $IsA($class, 'HiddenField') %>
	<:bsinputfield field=$field />
<% else %>
<:bsformgroup classes="<% if $required %>form-constaint-required<% end_if %>">
	<% if $IsA($class, 'HiddenField') %>
		$field.addExtraClass("form-control")
	<% else_if $IsA($class, 'CheckboxField') %>
		<:column size=$rightsize push=$leftsize nopadding=$nopadding>
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

		<:column size=$rightsize nopadding=$nopadding push="<% if not $field.Title %>$leftsize<% end_if %>">
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

		<:column size=$rightsize nopadding=$nopadding push="<% if not $field.Title %>$leftsize<% end_if %>">
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

		<:column size=$rightsize nopadding=$nopadding push="<% if not $field.Title %>$leftsize<% end_if %>">
			<:bsfilefield field=$field />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
		</:column>
	<% else_if $IsA($class, 'LiteralField') %>
		<:column size=$rightsize push=$leftsize nopadding=$nopadding>
			$field.content
		</:column>
	<% else %>
		<% if $field.Title %>
			<label for="$field.ID" class="l-col-$leftsize<% if not $nopadding %> l-padding<% end_if %> control-label">
				$field.Title
			</label>
		<% end_if %>

		<:column size=$rightsize nopadding=$nopadding push="<% if not $field.Title %>$leftsize<% end_if %>">
			<:bsinputfield field=$field />

			<% if $field.rightTitle %>
				<:bsinputinfo>$field.rightTitle</:bsinputinfo>
			<% end_if %>
		</:column>
	<% end_if %>
</:bsformgroup>
<% end_if %>