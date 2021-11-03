<%-- 
    Document   : admin
<<<<<<< HEAD
    Created on : 30 Oct 2021, 15:22:20
    Author     : Tom
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.solent.ood.assessmentgroupa7.dao.WebObjectFactory"%>
<%@page import="org.solent.ood.assessmentgroupa7.dao.PropertiesDao"%>
<%@page import="org.solent.ood.assessmentgroupa7.service.AdminService"%>

<%
    PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
    
    // To be deleted once ReST implemented - see service/AdminService.java
    String name = propertiesDao.getProperty("org.solent.ood.assessmentgroupa7.name");
    String endDate = propertiesDao.getProperty("org.solent.ood.assessmentgroupa7.enddate");
    String cardNumber = propertiesDao.getProperty("org.solent.ood.assessmentgroupa7.cardno");
    String cvv = propertiesDao.getProperty("org.solent.ood.assessmentgroupa7.cvv");
    String issueNumber = propertiesDao.getProperty("org.solent.ood.assessmentgroupa7.issueno");
    String message = "";
    
    String action = (String) request.getParameter("action");
    if ("updateProperties".equals(action)) {
        // To be changed once ReST implemented - see service/AdminService.java
        message = "updating properties";
        name = (String) request.getParameter("name");
        endDate = (String) request.getParameter("enddate");
        cardNumber = (String) request.getParameter("cardno");
        cvv = (String) request.getParameter("cvv");
        issueNumber = (String) request.getParameter("issueno");
        
        // To be deleted once ReST implemented - see service/AdminService.java
        propertiesDao.setProperty("org.solent.ood.assessmentgroupa7.name", name);
        propertiesDao.setProperty("org.solent.ood.assessmentgroupa7.enddate", endDate);
        propertiesDao.setProperty("org.solent.ood.assessmentgroupa7.cardno", cardNumber);
        propertiesDao.setProperty("org.solent.ood.assessmentgroupa7.cvv", cvv);
        propertiesDao.setProperty("org.solent.ood.assessmentgroupa7.issueno", issueNumber);
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Admin</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <title>PoS Configuration</title>
    </head>
    <body>
        <h1>PoS Configuration</h1>
        <p><%=message %></p>
        <form action="./admin.jsp" method="POST">
            <p>Name on Credit Card <input type="text" name="name" value="<%=name%>"></p>
            <p>Credit Card End Date <input type="text" name="enddate" value="<%=endDate%>"></p>
            <p>Credit Card Number <input type="text" name="cardno" value="<%=cardNumber%>"></p>
            <p>CVV Number <input type="text" name="cvv" value="<%=cvv%>"></p>
            <p>Issue Number <input type="text" name="issueno" value="<%=issueNumber%>"></p>
            <input type="hidden" name="action" value="updateProperties">

            <button class="btn" type="submit" >Update Properties</button>
        </form> 
    </body>
</html>
