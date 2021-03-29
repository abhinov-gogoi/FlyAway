<%@page import="servlets.Login"%>
<% Login.isLoggedIn = false; %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin - Login FlyAway Airlines</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 align="center">Admin Login</h1>
        <form action="login" method="post">
            <div class="form-group mb-2">
                <label for="inputEmail" class="sr-only">Email address</label>
                <input type="email" name="emailEntered" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">
                <br><small id="emailHelp" class="form-text text-muted">&nbsp;&nbsp;Email : admin@flyaway.com</small>
            </div>
            <div class="form-group mx-sm-3 mb-2">
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Password">
                <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= Login.password %></small>
            </div>
            <button type="submit" class="btn btn-info mb-2">Login</button>
        </form>
    </div>
</body>
</html>
