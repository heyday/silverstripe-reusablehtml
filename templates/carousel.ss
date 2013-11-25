<% required $width, $height %>
<div class="car<% if $classes %> $classes<% end_if %>">
	<div class="car-nav car-nav-left">&lt;</div>
	<div class="car-shift-outer" style="height: {$height}px">
		<div class="car-shift h-clearfix" style="width: {$width}px">
			<% composed %>
		</div>
	</div>
	<div class="car-nav car-nav-right">&gt;</div>
</div>