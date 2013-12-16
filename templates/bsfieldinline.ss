<% required $field %>


<% if $IsA($class, 'FieldGroup') %>
	<br />
	<% loop $field.FieldList %>
		<:bsfieldinline field=$me />
	<% end_loop %>
<% else_if $IsA($class, 'HiddenField') %>
	<:bsinputfield field=$field />
<% else %>
<:bsformgroup classes="<% if $required %>form-constaint-required<% end_if %>">
	<% if $IsA($class, 'HiddenField') %>
		$field.addExtraClass("form-control")
	<% else_if $IsA($class, 'CheckboxField') %>
		<:bscheckboxfield name=$field.getName checked=$field.value value="1" title=$field.Title />
	<% else_if $IsA($class, 'CheckboxSetField') %>
		<label for="$field.ID" class="h-visuallyhidden">$field.Title</label>
		<:bscheckboxsetfield field=$field />
	<% else_if $IsA($class, 'OptionsetField') %>
		<label for="$field.ID" class="h-visuallyhidden">$field.Title</label>
		<:bsoptionssetfield field=$field />
	<% else_if $IsA($class, 'FileField') %>
		<label for="$field.ID" class="h-visuallyhidden">$field.Title</label>
		<:bsfilefield field=$field />
	<% else_if $IsA($class, 'LiteralField') %>
		$field.content
	<% else %>
		<label for="$field.ID" class="h-visuallyhidden">$field.Title</label>
		<:bsinputfield field=$field />
	<% end_if %>
</:bsformgroup>
<% end_if %>