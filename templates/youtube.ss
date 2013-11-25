<% required $id, $width, $height %>
<iframe 
	type="text/html"
	width="$width"
	height="$height"
	src="//www.youtube.com/embed/$id?autoplay=<% if $autoplay %>1<% else %>0<% end_if %>&origin=$absoluteBaseURL"
	frameborder="0">
</iframe>