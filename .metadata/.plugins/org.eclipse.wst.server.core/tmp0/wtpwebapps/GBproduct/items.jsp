<%@ page import="com.Item"%>
<%@ page language="java" contentType="text/html;
 charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body>
	<div class="container"><div class="row"><div class="col-6">
 
 		<center><h1 class="m-3">Product Details</h1></center><br>

		
		<form id="formItem" name="formItem" method="post" action="items.jsp">
 			Product Name: 
			<input id="productName" name="productName" type="text" 
			 				class="form-control form-control-sm">
			
			<br> Bar Code: 
			<input id="barCode" name="barCode" type="text" 
			 				class="form-control form-control-sm">
			
			<br> Unit Price: 
			<input id="unitPrice" name="unitPrice" type="text" 
			 				class="form-control form-control-sm">

			<br>

			<input id="btnSave" name="btnSave" type="button" value="SAVE" class="btn btn-primary">
			<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
			
		</form>
		
		
    <div id="alertSuccess" class="alert alert-success"></div>
     <div id="alertError" class="alert alert-danger"></div>
    
    <br>
	<div id="divItemsGrid">
	<%
	Item itemObj = new Item();
	out.print(itemObj.readItems());
	%>
	</div>

<br>
	
</div> </div> </div> 
</body>
</html>