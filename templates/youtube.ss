<% required $id, $width, $height %>
<iframe 
	type="text/html"
	width="$width"
	height="$height"
	src="//www.youtube.com/embed/$id?autoplay=<% if $autoplay %>1<% else %>0<% end_if %>&showinfo=<% if $showinfo %>1<% else %>0<% end_if %>&modestbranding=<% if $modestbranding %>1<% else %>0<% end_if %>&rel=<% if $rel %>1<% else %>0<% end_if %>&origin=$absoluteBaseURL"
	frameborder="0">
</iframe>