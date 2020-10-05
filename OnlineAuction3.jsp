<html>
<head>
<title>
Online Auction</title>
<style>
#td1{
background-color:black;
color:white;
}
div{
background-color:yellow;
width:800px;
height:350px;
text-align:center;
}
td{
border: 1px solid black;
border-collapse: collapse;
}
<html>
<head>
<title>
Online Auction</title>
<style>
#td1{
background-color:black;
color:white;
}
div{
background-color:yellow;
width:800px;
height:350px;
text-align:center;
}
td{
border: 1px solid black;
border-collapse: collapse;
}
#table1 {
border-collapse: separate;
text-align:center;
}
</style>
</head>
<body style="text-align:center">
<div>
<h2>Bid Submitted</h2>
<h4>Your bid is now active.If your bid is successfully, you will be notified within 24 hours of the close of bidding.</h4>
<%
       String itemid=(String)request.getAttribute("itemid");
       String itemname=(String)request.getAttribute("itemname");
       String name=(String)request.getAttribute("name");
       String emailid=(String)request.getAttribute("emailid");
       String amount=(String)request.getAttribute("amount");
%>
<center>
<table style="width:50%" id=table1>
<tr>
<td id=td1><b><%= itemname %></b></td>
</tr>
<tr>
<td><b>Item ID:<%= itemid %></b></td>
</tr>
<tr>
<td><b>Name:<%= name %></b></td>
</tr>
<tr>
<td><b>Email address:<%= emailid %></b></td>
</tr>
<tr>
<td><b>Bid price:Rs<%= amount %>.0</b></td>
</tr>
<tr>
<td><b>Auto-increment price:<% out.println("true"); %></b></td>
</tr>

</table>
</center>
</div>
</body>
</html>
