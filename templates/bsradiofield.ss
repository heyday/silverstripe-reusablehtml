<% required $name, $value, $checked, $title %>
<div class="radio">
	<label>
		<input type="radio" name="$name" value="$value" <% if $checked = '1' %>checked<% end_if %>/> $title
	</label>
</div>