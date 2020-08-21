
<cfoutput>
<h3>#ShipmentDetail.name#</h3>
<h4>Status: #ShipmentDetail.status#</h4>
<a href="#linkShipment#">Back to List</a>
<table class="feature">
		<caption><form action="#linkItemForm#" method="post"><input type="submit" name="New Item" value="New Item"></form></caption>
	<thead>
		<tr>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th>Count Available</th>
			<th>Size</th>
			<th>Date Available</th>
			<th>&nbsp;</th>			
		</tr>
	</thead>
	<tbody>
		<cfloop query="ShipmentDetail">
		<tr <cfif ShipmentDetail.RecordCount MOD 2 IS 0>class="even"</cfif>>
			<td><a href="#linkItemForm#&ItemID=#ItemID#">Change</a></td>
			<td>#commonname#</td>
			<td class="numeric">#Quantity#</td>
			<td>#Size#</td>
			<td>#DateAvailable#</td>
			<td><a href="#linkItemRemove#&ItemID=#ItemID#">Remove</a></td>
		</tr>
		</cfloop>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="6">
				<a href="#linkPrint#" onclick="return popPrintWindow( this.href);"> [ Print Friendly View ]	</a> 
			</th>
		</tr>
	</tfoot>		
</table>	

</cfoutput>
	<script type="text/javascript">
		function popPrintWindow(url)
		{
			var printwindow= window.open(url, "PrintWindow", "location=1,status=1,scrollbars=1,width=585,height=750");
			printwindow.moveTo(0,0);
			return false;
		}	
	</script>