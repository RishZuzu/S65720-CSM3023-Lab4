<%-- 
    Document   : processCurrency
    Created on : 27 Apr 2024, 11:06:37 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            //Added by: 27 April 2024 - Mohamad Haris Zakuwan
            //Define constants...
            final double USD = 3.92;
            final double STG = 5.96;
            final double EURO = 4.47;
            
            //Define method to perform currency exchange...
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.00;
                
                if (currency.equals("1"))
                    currencyChange = amount / USD;
                else if (currency.equals("2"))
                    currencyChange = amount / STG;
                else if (currency.equals("3"))
                    currencyChange = amount / EURO;
                
                return currencyChange;
            }
        %>
        
        <%-- Retrieve the value for Amount and Convert to --%>
        <% 
            int amount = Integer.parseInt(request.getParameter("amount"));
            String convertTo = request.getParameter("convert");
            
            // Call the calculateRate method to perform currency conversion
            double result = calculateRate(convertTo, amount);
        %>
        
        <h1>Currency Conversion Result</h1>
        <p>Amount in Ringgit Malaysia: RM<%= amount %></p>
        <p>Amount in Euro: <%= String.format("%.2f", result) %></p>

    </body>
    <footer>
        &copy;2024 Haris Zakuwan
    </footer>
</html>
