<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Operations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #89f7fe, #66a6ff);
            font-family: Arial, sans-serif;
        }
        header {
            background-color: #0056b3;
            color: white;
            padding: 20px;
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            background: #ffffffcc;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            margin-bottom: 20px;
        }
        .btn-custom {
            width: 100%;
            margin-bottom: 10px;
        }
        footer {
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
    <h1>Welcome to Our Bank</h1>
    <p>Choose an operation below</p>
</header>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <h3 class="text-center mb-4">Account Management</h3>
                <div class="row">
                    <div class="col-md-6">
                        <a href="/add" class="btn btn-success btn-custom">Add New Account</a>
                    </div>
                    <div class="col-md-6">
                        <a href="/close" class="btn btn-danger btn-custom">Close Account</a>
                    </div>
                    <div class="col-md-6">
                        <a href="/deposit" class="btn btn-info btn-custom">Deposit Amount</a>
                    </div>
                    <div class="col-md-6">
                        <a href="/withdraw" class="btn btn-warning btn-custom">Withdraw Amount</a>
                    </div>
                    <div class="col-md-6">
                        <a href="/transfer" class="btn btn-primary btn-custom">Transfer Funds</a>
                    </div>
                    <div class="col-md-6">
                        <a href="/search" class="btn btn-secondary btn-custom">Search Account</a>
                    </div>
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
