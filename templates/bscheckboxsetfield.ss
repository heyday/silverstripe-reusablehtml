<% required $field %>
<% loop $SourceToOptions($field.getSource, $field.Value) %>
	<:bscheckboxfield name="{$field.getName}[{$value}]" checked=$checked value=$value title=$title />
<% end_loop %>