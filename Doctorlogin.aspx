<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctorlogin.aspx.cs" Inherits="Clinicappointment.Doctorlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <title>Doctor Login</title>

    <style>
        body{
            font-family: Arial;
            background:#f2f2f2;
        }

        .login-box{
            width:350px;
            margin:100px auto;
            padding:30px;
            background:white;
            box-shadow:0 0 10px gray;
            border-radius:8px;
        }

        input{
            width:100%;
            padding:10px;
            margin:10px 0;
        }

        button{
            width:100%;
            padding:10px;
            background:#28a745;
            color:white;
            border:none;
        }
    </style>

<!DOCTYPE html>
<html>
<head>
<title>Doctor Login</title>

<style>

body{
    font-family: Arial;
    background:#f2f2f2;
}

.login-box{
    width:350px;
    margin:100px auto;
    padding:30px;
    background:white;
    box-shadow:0 0 10px gray;
    border-radius:8px;
}

h2{
    text-align:center;
}

input{
    width:100%;
    padding:10px;
    margin:10px 0;
}

button{
    width:100%;
    padding:10px;
    background:#28a745;
    color:white;
    border:none;
    cursor:pointer;
}

button:hover{
    background:#218838;
}

</style>

</head>

<body>

<div class="login-box">

<h2>Doctor Login</h2>

<form action="checklogin.aspx" method="post">

<input type="text" name="doctor_name" placeholder="Enter username" required>

<input type="password" name="password" placeholder="Enter Password" required>

<button type="submit">Login</button>

</form>

</div>

</body>
</html>