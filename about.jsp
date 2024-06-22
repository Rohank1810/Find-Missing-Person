<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.Dbconnection" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
    body {
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica,
          Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
      }
      
      .section {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        text-align: center;
        width: 100%;
        position: relative;
        margin-top: 50px;
      }
      
      .item {
        border: 5px solid black;
        padding: 50px 40px;
        background-color: #ffffff;
        margin: 5px;
        margin-bottom: 1.25rem; /* ändra detta */
        width: 270px;
        height: 10rem;
        padding: 30px;
        border-radius: 0.5rem;
        position: relative;
        box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.1), 0px 10px 10px 0 rgba(0, 0, 0, 0.1);
      }
      
      .item .title {
        font-size: 22px;
        font-weight: 600;
        margin: 0;
        font-family: cursive;
        color: #4a290e;
        margin-top: 1rem;
      }
      
      .item .text {
        font-family: -webkit-body;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5rem;
        padding: 5px;
        margin-top: 10px;
      }
      
      .item .icon {
        display: "flex";
        justify-content: "center";
        align-items: "center";
        height: 5rem;
        width: 5rem;
        border-radius: 50%;
        position: absolute;
        top: -50px;
        left: 50%;
        transform: translateX(-50%);
        overflow-x: visible;
      }
      
      .item .icon .vector {
        width: 2.5rem;
        position: relative;
        top: 1.25rem;
      }
</style>      
</head>
<body>
    <div class="section">
        <div class="item">
          <div class="icon" style="background-color: brown">
            <svg class="vector" viewBox="0 0 512 512" width="100" fill="#fff">
              <path d="M290.74 93.24l128.02 128.02-277.99 277.99-114.14 12.6C11.35 513.54-1.56 500.62.14 485.34l12.7-114.22 277.9-277.88zm207.2-19.06l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.76 18.75-49.16 0-67.91z" />
            </svg>
          </div>
          <h3 class="title">Home of Missings &#127968;</h3>
          <p class="text">Do you know someone who has lost their son while he was coming back home from school? Almost 100,000 children go missing every year in India, let alone the adults.</p>
        </div>
      
        <div class="item">
          <div class="icon" style="background-color: rebeccapurple">
            <svg class="vector" viewBox="0 0 512 512" width="100" fill="#fff">
              <path d="M290.74 93.24l128.02 128.02-277.99 277.99-114.14 12.6C11.35 513.54-1.56 500.62.14 485.34l12.7-114.22 277.9-277.88zm207.2-19.06l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.76 18.75-49.16 0-67.91z" />
            </svg>
          </div>
          <h3 class="title">Find Missing Person &#128270</h3>
          <p class="text">A missing person investigation requires high attention to detail and analytical skills</p>
        </div>
      
        <div class="item">
          <div class="icon" style="background-color: cyan">
            <svg class="vector" viewBox="0 0 512 512" width="100" fill="#fff">
              <path d="M290.74 93.24l128.02 128.02-277.99 277.99-114.14 12.6C11.35 513.54-1.56 500.62.14 485.34l12.7-114.22 277.9-277.88zm207.2-19.06l-60.11-60.11c-18.75-18.75-49.16-18.75-67.91 0l-56.55 56.55 128.02 128.02 56.55-56.55c18.75-18.76 18.75-49.16 0-67.91z" />
            </svg>
          </div>
          <h3 class="title">Need Of this Site (We Care)</h3>
          <p class="text">By taking detail information of missing person and find them become easier by their face , body mark etc.</p>
        </div>
        <p> Go Back To Admin Page <a href="index.jsp">Click</a></p>
      </div>
</body>
</html>