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
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'CheckboxSetField') %>
		<label for="$field.ID" class="l-col-$leftsize<% if $nopadding = '1' %><% else %> l-padding<% end_if %> control-label">$field.Title</label>
		<:column size=$rightsize nopadding=$nopadding>
			<:bscheckboxsetfield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'OptionsetField') %>
		<label for="$field.ID" class="l-col-$leftsize<% if $nopadding = '1' %><% else %> l-padding<% end_if %> control-label">$field.Title</label>
		<:column size=$rightsize nopadding=$nopadding>
			<:bsoptionssetfield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'FileField') %>
		<label for="$field.ID" class="l-col-$leftsize<% if $nopadding = '1' %><% else %> l-padding<% end_if %> control-label">$field.Title</label>
		<:column size=$rightsize nopadding=$nopadding>
			<:bsfilefield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'LiteralField') %>
		<:column size=$rightsize push=$leftsize nopadding=$nopadding>
			$field.content
		</:column>
	<% else %>
		<label for="$field.ID" class="l-col-$leftsize<% if $nopadding = '1' %><% else %> l-padding<% end_if %> control-label">$field.Title</label>
		<:column size=$rightsize nopadding=$nopadding>
			<:bsinputfield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% end_if %>
</:bsformgroup>
<% end_if %>