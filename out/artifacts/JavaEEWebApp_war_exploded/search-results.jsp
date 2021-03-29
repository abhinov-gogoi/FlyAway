<%@page import="java.sql.*"%>
<%@ page import="model.Search" %>
<%
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://remotemysql.com/";
    String dbName = "XxYrWXRjWf";
    String userId = "XxYrWXRjWf";
    String password = "CcEE3g9IWg";
//    String driverName = "com.mysql.jdbc.Driver";
//    String connectionUrl = "jdbc:mysql://localhost:3306/";
//    String dbName = "flyaway";
//    String userId = "root";
//    String password = "admin";
    String query = Search.getQuery();
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Search Results - FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong>
        Showing available flights from <%=Search.source%> to  <%=Search.destination%> <br>
        Date of travel : <%=Search.date%> (<%=Search.day%>)  <br>
        No of travellers :  <%=Search.persons%>  <br>
    </p>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <th scope="col">Flight</th>
            <th scope="col">Source</th>
            <th scope="col">Destination</th>
            <th scope="col">Date</th>
            <th scope="col">Ticket Price</th>
            <th scope="col">Select</th>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
        <%
            try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement=connection.createStatement();
                resultSet = statement.executeQuery(query);
                while(resultSet.next()){
        %>
        <tr bgcolor="#F5F5F5">
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=Search.date%></td>
            <td><%=resultSet.getString("ticket_price") %></td>
            <td>
                <form action="${pageContext.request.contextPath}/booking-details.jsp" method="post">
                    <input type="hidden" id="name" name="name" value="<%=resultSet.getString("name")%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" id="flight_id" name="flight_id" value="<%=resultSet.getString("flight_id")%>">
                    <input type="submit" class="btn btn-success" value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>