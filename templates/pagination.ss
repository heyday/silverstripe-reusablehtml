<% required $set, $displaySize %>
<% if $set.MoreThanOnePage %>
	<div class="pag">
		<ul class="pag-list h-clearfix">
			<% if $set.NotFirstPage %>
				<li class="pag-item pag-prev-holder"><a class="pag-prev" href="$set.PrevLink<% if $linkAnchor %>#$linkAnchor<% end_if %>">Prev</a></li>
			<% end_if %>

			<% loop $set.PaginationSummary($displaySize) %>
				<% if $CurrentBool %>
					<li class="pag-item pag-item-active">$PageNum</li>
				<% else %>
					<% if $Link %>
						<li class="pag-item"><a href="$Link<% if $linkAnchor %>#$linkAnchor<% end_if %>">$PageNum</a></li>
					<% else %>
						<li class="pag-item">...</li>
					<% end_if %>
				<% end_if %>
			<% end_loop %>

			<% if $set.NotLastPage %>
				<li class="pag-item pag-next-holder"><a class="pag-next" href="$set.NextLink<% if $linkAnchor %>#$linkAnchor<% end_if %>">Next</a></li>
			<% end_if %>
		</ul>
	</div>
<% end_if %>
