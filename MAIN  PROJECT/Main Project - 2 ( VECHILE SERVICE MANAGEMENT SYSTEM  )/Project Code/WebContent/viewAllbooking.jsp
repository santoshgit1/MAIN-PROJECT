<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,
																			 java.util.*,
																			 net.vehicle.*" errorPage="" %>
<%
ArrayList all = VehicleCommon.viewAllBooking();
int size = all.size();
%>																			 
<style type="text/css">
<!--
.style10 {color: #EED9A8; font-weight: bold; font-size: 14px; }
-->
</style>
<script>
function bookAction(act){
	with (window.document.bookingForm) {
		if(confirm('Do You want to '+act+' this Request ?')){
			submit();
		}
	}
}
</script>
<div class="header">View Your Customer's Booking Request</div>
<br/>
<table width="95%" align="center"  style="border:#D22929 solid 2px;padding:10px;" border="0">
  <tr>
    <th bgcolor="#D22929" scope="col"><span class="style10">Vehicle Name </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Driver Name </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Start Date</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">End Date </span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Kilometer</span></th>
    <th bgcolor="#D22929" scope="col"><span class="style10">Status&nbsp;</span></th>
	<th bgcolor="#D22929" scope="col"><span class="style10">Action</span></th>
  </tr>
  <%
for(int i=0;i<size;i++){
ArrayList one=(ArrayList)all.get(i);
%>
<form name="bookingForm" id="bookingForm" action="do?MOD=MTN&ACT=bookAction" method="post">
  <tr style="height:30px; padding:4px;">
    <td>
	<input type="hidden" name="bid" value="<%=(String)one.get(0)%>" />
	<div align="center"><%=(String)one.get(1)%></div></td>
    <td><div align="center"><%=(String)one.get(2)%></div></td>
    <td><div align="center"><%=(String)one.get(3)%></div></td>
    <td><div align="center"><%=(String)one.get(4)%></div></td>
    <td><div align="center"><%=(String)one.get(5)%>&nbsp;Km.</div></td>
    <td><div align="center"><select name="action" >
	<option value="Pending">Pending</option>
	<option value="Approved">Approved</option>
	<option value="Rejected">Rejected</option>
	</select></div></td>
	<td><div align="center"><input type="submit" value=" Go " /></div></td>
  </tr>
</form>
  <% } %>
</table>
