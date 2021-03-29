<%@page import="java.sql.*"%>
<%@page import="servlets.Login"%>

<%
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://remotemysql.com/";
    String dbName = "XxYrWXRjWf";
    String userId = "XxYrWXRjWf";
    String password = "CcEE3g9IWg";
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
    <title>FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
        <%
            if (Login.isLoggedIn) {
        %>
        <section class="container-fluid" style="background-color:#2cb4f6;">
            <section class="row justify-content-center">
                <div class="row">
                    <div class="col">
                        <h2 align="center" style="color:whitesmoke;"><b>Admin Dashboard</b></h2>
                        <p align="center" style="color:whitesmoke;"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
                        <br>
                    </div>
                </div>
                <section>
                    <table class="table table-hover table-striped">
                        <thead>
                        <tr>
                            <th scope="col">Flight ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Source</th>
                            <th scope="col">Destination</th>
                            <th scope="col">Day</th>
                            <th scope="col">Ticket Price</th>
                        </tr>
                        </thead>
                        <tbody>
                            <form method="post" action="${pageContext.request.contextPath}/change-password.jsp">
                                <button type="submit" class="btn btn-success mb-2">Change Password</button>
                            </form>&ensp;
                            <form method="post" action="${pageContext.request.contextPath}/add-flight.jsp">
                                <button type="submit" class="btn btn-success mb-2">Add new Flight</button>
                            </form>&ensp;
                            <form method="post" action="${pageContext.request.contextPath}/show-bookings.jsp">
                                <button type="submit" class="btn btn-success mb-2">Previous bookings</button>
                            </form>&ensp;
                            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                                <button type="submit" class="btn btn-info mb-2 btn-danger">Logout</button>
                            </form>
                        <br><br>
                        <p align="center" style="color:whitesmoke;"><span><strong>Flight Table (Database hosted at remotemysql.com)</strong></span></p>
        <%
                try{
                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM flight";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
        %>
        <tr bgcolor="#4a8ee3">
            <td><%=resultSet.getString("flight_id") %></td>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("source") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=resultSet.getString("days") %></td>
            <td><%=resultSet.getString("ticket_price") %></td>
        </tr>
        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            else {
                out.print("You must Login first");
            }
        %>
                        </tbody>
                    </table>
                </section>
            </section>
        </section>
</body>
</html>

