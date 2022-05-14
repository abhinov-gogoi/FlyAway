package servlets;


import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;

public class ChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        String pass = req.getParameter("passwordEntered");
        if (!Login.isLoggedIn){
            out.println("You must login first");
        }
        else if (pass.equals("")){
            out.println("Password can't be empty");
        }
        else if (Login.isLoggedIn && !pass.equals("")){
            Login.password = pass;
            out.println("Password changed. New Password is "+Login.password);
        }
        else {
            out.println("Sorry, Something went wrong");
        }
        out.close();
    }
}
