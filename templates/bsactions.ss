<% required $actions %>
<% loop $actions %>
	<% if $IsA($Me.class, 'ResetFormAction') %>
		<:bsbutton type="reset" style="danger" size="<% if $getAttribute('size') %>$getAttribute('size')<% end_if %>">$Title</:bsbutton>
	<% else_if $IsA($Me.class, 'FormAction')  %>
		<:bsbutton type="submit" style="<% if $getAttribute('action-style') %>$getAttribute('action-style')<% else %>primary<% end_if %>" size="<% if $getAttribute('size') %>$getAttribute('size')<% end_if %>" name="$Me.action" classes="$extraClass">$Title</:bsbutton>
	<% else %>
		$Me
	<% end_if %>
<% end_loop %>
