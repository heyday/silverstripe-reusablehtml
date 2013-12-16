<% required $field %>


<% if $IsA($class, 'FieldGroup') %>
	<br />
	<% loop $field.FieldList %>
		<:bsfieldnormal field=$me />
	<% end_loop %>
<% else_if $IsA($class, 'HiddenField') %>
	<:bsinputfield field=$field />
<% else %>
<:bsformgroup classes="l-padding <% if $required %>form-constaint-required<% end_if %>">
	<% if $IsA($class, 'HiddenField') %>
		$field.addExtraClass("form-control")
	<% else_if $IsA($class, 'CheckboxField') %>
		<:bscheckboxfield name=$field.getName checked=$field.value value="1" title=$field.Title />
		<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
	<% else_if $IsA($class, 'CheckboxSetField') %>
		<label for="$field.ID" class="control-label">$field.Title</label>
		<:bscheckboxsetfield field=$field />
		<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
	<% else_if $IsA($class, 'OptionsetField') %>
		<label for="$field.ID" class="control-label">$field.Title</label>
		<:bsoptionssetfield field=$field />
		<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
	<% else_if $IsA($class, 'FileField') %>
		<label for="$field.ID" class="control-label">$field.Title</label>
		<:bsfilefield field=$field />
		<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
	<% else_if $IsA($class, 'LiteralField') %>
		$field.content
	<% else %>
		<label for="$field.ID" class="control-label">$field.Title</label>
		<:bsinputfield field=$field />
		<% if $field.rightTitle %><:bsinputinfo>$field.rightTitle</:bsinputinfo><% end_if %>
	<% end_if %>
</:bsformgroup>
<% end_if %>