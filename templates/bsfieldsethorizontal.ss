<% required $fields, $leftsize, $rightsize %>

<fieldset <% if $classes %>class="$classes"<% end_if %> <% dataattrs %>>
<% if $legend %>
	<legend>$legend</legend>
<% end_if %>
<% loop $fields %>
	<:bsformgroup classes="<% if $required %>form-constaint-required<% end_if %>">
		<% if $IsA($class, 'HiddenField') %>
			$Me.addExtraClass("form-control")
		<% else_if $IsA($class, 'CheckboxField') %>
			<:column size=$rightsize push=$leftsize>
				<:bscheckboxfield name=$Me.getName checked=$Me.value value="1" title=$Me.title />
				<% if $rightTitle %><:bsinputinfo>$rightTitle</:bsinputinfo><% end_if %>
			</:column>
		<% else_if $IsA($class, 'CheckboxSetField') %>
			<label for="$ID" class="l-col-$leftsize l-padding control-label">$Title</label>
			<:column size=$rightsize>
				<:bscheckboxsetfield field=$Me />
				<% if $rightTitle %><:bsinputinfo>$rightTitle</:bsinputinfo><% end_if %>
			</:column>
		<% else_if $IsA($class, 'OptionsetField') %>
			<label for="$ID" class="l-col-$leftsize l-padding control-label">$Title</label>
			<:column size=$rightsize>
				<:bsoptionssetfield field=$Me />
				<% if $rightTitle %><:bsinputinfo>$rightTitle</:bsinputinfo><% end_if %>
			</:column>
		<% else_if $IsA($class, 'FileField') %>
			<label for="$ID" class="l-col-$leftsize l-padding control-label">$Title</label>
			<:column size=$rightsize>
				<:bsfilefield field=$Me />
				<% if $rightTitle %><:bsinputinfo>$rightTitle</:bsinputinfo><% end_if %>
			</:column>
		<% else %>
			<label for="$ID" class="l-col-$leftsize l-padding control-label">$Title</label>
			<:column size=$rightsize>
				<:bsinputfield field=$Me />
				<% if $rightTitle %><:bsinputinfo>$rightTitle</:bsinputinfo><% end_if %>
			</:column>
		<% end_if %>
	</:bsformgroup>
<% end_loop %>
</fieldset>