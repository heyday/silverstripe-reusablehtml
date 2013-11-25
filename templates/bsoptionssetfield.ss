<% required $field %>
<% loop $SourceToOptions($field.getSource, $field.Value) %>
	<:bsradiofield name=$field.getName checked=$checked value=$value title=$title />
<% end_loop %>