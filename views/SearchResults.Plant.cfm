<cfoutput>
<h3>Plant Search Results</h3>
<a href="#linkSearchForm#">Clear Results</a>
<table class="feature">
	<thead>
		<tr>
			<th>Symbol</th>
			<th>Scientific Name (w/Author)</th>
			<th>Common Name</th>
			<th>Family</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="PlantList">
		<tr <cfif PlantList.RecordCount MOD 2 IS 0>class="even"</cfif>>
			<td>#Symbol#</td>
			<td>#ScientificNameWithAuthor#</td>
			<td>#CommonName#</td>
			<td>#Family#</td>
		</tr>
		</cfloop>
	</tbody>
</table>	
</cfoutput>