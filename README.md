# Flyaway Ticket Booking App in JAVA - Servlet&JSP

## Table of contents
* [General info](#general-info)
* [Using the application](#using-the-application)
* [Technologies](#technologies)
* [Demo](#demo)
* [Setup](#setup)

## General info
A small flight booking demo project in JAVA

## Using the application
Home displays the application name (FlyAway) and two options - Book Flights and Admin Panel Access

<img width="720" alt="flyaway-screenshot-homepage" src="https://raw.githubusercontent.com/abhinov-gogoi/FlyAway2/main/screenshots/Homepage.png">
<br><br>
Book Flights - <br>
The user enters flight details (date, source, destination, travellers). 
A query is sent to the remote database to fetch related flights and displayed to user.
The User enters other details and proceeds to book the flight.
<br><br>
Admin - <br>
Admin dashboard is accessed with a preset username and password.
Admin can see all entries in database table.
Admin can change his password after Login 

## Technologies
Frontend - JSP, HTML, CSS, Bootstrap
Backend - JAVA Servlets
Database - MySQL (Hosted on a remote server at www.remotemysql.com)
Application Server Platform - Tomcat 8.5 with Corretto 11 running on 64bit Amazon Linux 2/4.1.6 on AWS Elasticbeanstalk

## Demo
Application is hosted here - http://flyaway-env.eba-mwfq779m.ap-south-1.elasticbeanstalk.com/

## Setup
To run in your localhost - Clone into local and run project on tomcat server. If any issue check artifact is build properly.
<br><br>
To deploy on a server use .war file which can be found in out\artifacts\JavaEEWebApp_war\JavaEEWebApp_war.war  