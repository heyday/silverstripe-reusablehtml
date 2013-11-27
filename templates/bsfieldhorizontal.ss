<% required $field, $leftsize, $rightsize %>

<:bsformgroup classes="<% if $required %>form-constaint-required<% end_if %>">
	<% if $IsA($class, 'HiddenField') %>
		$field.addExtraClass("form-control")
	<% else_if $IsA($class, 'CheckboxField') %>
		<:column size=$rightsize push=$leftsize>
			<:bscheckboxfield name=$field.getName checked=$field.value value="1" title=$field.Title />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'CheckboxSetField') %>
		<label for="$field.ID" class="l-col-$leftsize l-padding control-label">$field.Title</label>
		<:column size=$rightsize>
			<:bscheckboxsetfield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'OptionsetField') %>
		<label for="$field.ID" class="l-col-$leftsize l-padding control-label">$field.Title</label>
		<:column size=$rightsize>
			<:bsoptionssetfield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'FileField') %>
		<label for="$field.ID" class="l-col-$leftsize l-padding control-label">$field.Title</label>
		<:column size=$rightsize>
			<:bsfilefield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% else_if $IsA($class, 'LiteralField') %>
		<:column size=$rightsize push=$leftsize nopadding=true>
			$field.content
		</:column>
	<% else_if $IsA($class, 'FieldGroup') %>
			<br />
		<% loop $field.FieldList %>
			<:bsfieldhorizontal field=$me leftsize=$leftsize rightsize=$rightsize />
		<% end_loop %>
	<% else %>
		<label for="$field.ID" class="l-col-$leftsize l-padding control-label">$field.Title</label>
		<:column size=$rightsize>
			<:bsinputfield field=$field />
			<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
		</:column>
	<% end_if %>
</:bsformgroup>