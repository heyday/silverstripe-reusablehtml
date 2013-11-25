<% required $id, $width, $height %>
<iframe
	src="//player.vimeo.com/video/$id?badge=<% if $badge %>1<% else %>0<% end_if %>&amp;autoplay=<% if $autoplay %>1<% else %>0<% end_if %>&amp;color=<% if $color %>$color<% else %>00adef<% end_if %>&amp;title=<% if $title %>1<% else %>0<% end_if %>&amp;byline=<% if $byline %>1<% else %>0<% end_if %>&amp;portrait=<% if $portrait %>1<% else %>0<% end_if %>"
	width="$width"
	height="$height"
	frameborder="0"
	webkitallowfullscreen
	mozallowfullscreen
	allowfullscreen>
</iframe>