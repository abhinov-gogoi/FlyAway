<%@page import="servlets.Login"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Change Password</title>
    <link rel = "shortcut icon" type = "image/png" href = "img/favicon.png" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Password Change</h1>
            <%
            if (Login.isLoggedIn) {
            %>
                <form action="change-password" method="post">
                    <div>
                        <label class="sr-only">Email address : admin@flyaway.com</label>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">New Password</label>
                        <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Enter a new password">
                        <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= Login.password %></small>
                    </div>
                    <button type="submit" class="btn btn-info mb-2">Change Password</button>
                </form>
            <%
            }
            else {
                out.print("You must Login first");
            }
            %>
    </div>
</body>
</html>
