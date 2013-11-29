<% required $actions %>
<% loop $actions %>
	<% if $IsA($Me.class, 'ResetFormAction') %>
		<:bsbutton type="reset" style="danger">$Title</:bsbutton>
	<% else_if $IsA($Me.class, 'FormAction')  %>
		<:bsbutton type="submit" style="primary">$Title</:bsbutton>
	<% else %>
		$Me
	<% end_if %>
<% end_loop %>