<cfoutput>
<h3>Saved Shipments</h3>
<table class="feature">
	<caption><form action="#linkEdit#" method="post"><input type="submit" name="New List" value="New Shipment"></form></caption>
	<thead>
		<tr>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th>Shipment Name</th>
			<th>Date Posted</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="ShipmentList">
		<tr>
			<td><a href="#linkEdit#&ShipmentID=#ShipmentID#">Edit</a></td>
			<td><a href="#linkPrint#&ShipmentID=#ShipmentID#">Print</a></td>
			<td><a href="#linkDisplay#&ShipmentID=#ShipmentID#">Display</a></td>
			<td>#name#</td>
			<td>#dateFormat( CreateDate, "short")#</td>
		</tr>
		</cfloop>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="6">&nbsp;</th>
		</tr>
	</tfoot>	
</table>
</cfoutput>