<%@ page import="model.Booking" %>
<%@ page import="model.Search" %>
<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Payment Details - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <h2 align="center"><span><strong>Checkout</strong></span></h2>
    <br>
    <p align="center"><span><strong>Enter Payment Details</strong></span></p><br>
</div>

<div class="container">
    <form action="${pageContext.request.contextPath}/thank-you.jsp" method="post">
        <div class="form-group">
            <label for="card_details">Name on Card</label>
            <input type="text" class="form-control" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
        </div>
        <div class="form-group">
            <label for="card_details">Card Number</label>
            <input type="number" class="form-control" id="card_details" name="card_details" placeholder="Enter Card Number">
        </div>
        <br>
        <h3 align="right"><span><strong>Total fare = <%=Booking.ticket_price%> X <%=Search.persons%> persons = Rs.<%=Booking.ticket_price*Search.persons%></strong></span></h3>
        <button type="submit" class="btn btn-success" value="Submit">Confirm Payment</button>
    </form>
</div>
</body>
</html>
