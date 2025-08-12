<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Status</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #fdfbfb, #ebedee);
            font-family: Arial, sans-serif;
        }
        header {
            background-color: #343a40;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .card {
            background: #ffffffcc;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
        }
        .status-success {
            color: #28a745;
        }
        .status-failed, .status-insufficient, .status-notfound {
            color: #dc3545;
        }footer {
            text-align: center;
            padding: 15px;
            margin-top: 40px;
            background-color: rgba(0, 0, 0, 0.1);
            font-weight: bold;
            color: #003366;
        }
    </style>
</head>
<body>

<header>
    <h1>Transaction Status</h1>
</header>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card text-center">
                <% 
                    String status = (String) request.getAttribute("status");
                    if ("success".equals(status)) {
                %>
                <h3 class="status-success">Operation Successful!</h3>
                <p>Your request has been processed successfully.</p>
                <% 
                    } else if ("insufficient_funds".equals(status)) {
                %>
                <h3 class="status-insufficient">Operation Failed: Insufficient Funds!</h3>
                <p>You do not have enough balance to complete this transaction.</p>
                <% 
                    } else if ("not_found".equals(status)) {
                %>
                <h3 class="status-notfound">Operation Failed: Account Not Found!</h3>
                <p>The account number you entered does not exist.</p>
                <% 
                    } else {
                %>
                <h3 class="status-failed">Operation Failed!</h3>
                <p>There was an error processing your request. Please try again.</p>
                <%
                    }
                %>
                <div class="mt-3">
                    <a href="/" class="btn btn-secondary">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    Developed by Atharva
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>