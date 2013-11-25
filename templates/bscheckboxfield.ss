<% required $name, $value, $checked, $title %>
<div class="checkbox">
	<label>
		<input type="checkbox" name="$name" value="$value" <% if $checked = '1' %>checked<% end_if %>/> $title
	</label>
</div>