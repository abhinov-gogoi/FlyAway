<%@ page import="model.Booking" %>
<%
    Booking.flight_booking_id = request.getParameter("flight_id");
    Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
    Booking.flight_name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Details - FlyAway Airlines</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <section class="container-fluid bg">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h1 align="center" style="color:whitesmoke;"><b>Booking Details</b></h1>
                    <p align="center" style="color:whitesmoke;"><span><strong>Enter Passenger Details</strong></span></p><br>
                </div>
            </div>
            <section class="col-sm-6 col-md-3">
                <form action="${pageContext.request.contextPath}/payment.jsp" method="post" class="form-container">
                    <div class="form-group">
                        <label for="pname">Passenger Name</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="number" class="form-control" id="phone" name="phone" placeholder="Enter phone number">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Submit</button>
                </form>
            </section>
        </section>
    </section>
</body>
</html>
