<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.predator.Spring.JPA.entities.Account" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #d4fc79, #96e6a1);
            font-family: Arial, sans-serif;
        }
        header {
            background-color: #28a745;
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
        .detail-row {
            margin-bottom: 10px;
        }
        .detail-label {
            font-weight: bold;
        }
    </style>
</head>
<body>

<header>
    <h1>Account Details</h1>
</header>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <h3 class="text-center text-success">Account Information</h3>
                <% 
                    Account account = (Account) request.getAttribute("account");
                    if (account != null) {
                %>
                <div class="detail-row">
                    <span class="detail-label">Account Number:</span> <%= account.getAccno() %>
                </div>
                <div class="detail-row">
                    <span class="detail-label">Account Name:</span> <%= account.getAccnm() %>
                </div>
                <div class="detail-row">
                    <span class="detail-label">Account Type:</span> <%= account.getAcctype() %>
                </div>
                <div class="detail-row">
                    <span class="detail-label">Balance:</span> $<%= String.format("%.2f", account.getBalance()) %>
                </div>
                <% 
                    } else {
                %>
                <p class="text-center text-danger">Account not found.</p>
                <%
                    }
                %>
                <div class="text-center mt-3">
                    <a href="/" class="btn btn-secondary">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>