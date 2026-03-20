<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctDashboard.aspx.cs" Inherits="Clinicappointment.DoctDashboard" %>
<%
    if (Session["sp"] != null)
    {

    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
</body>
</html>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Dashboard</title>

<style>

body{
    margin:0;
    font-family: Arial;
}

/* Sidebar */

.sidebar{
    width:220px;
    height:100vh;
    background:#2c3e50;
    color:white;
    position:fixed;
}

.sidebar h2{
    text-align:center;
    padding:20px;
}

.sidebar a{
    display:block;
    padding:15px;
    color:white;
    text-decoration:none;
}

.sidebar a:hover{
    background:#34495e;
}

/* Main Content */

.main{
    margin-left:220px;
    padding:20px;
}

.card{
    width:200px;
    display:inline-block;
    padding:20px;
    margin:10px;
    background:#3498db;
    color:white;
    border-radius:8px;
}

</style>

</head>

<body>

<div class="sidebar">

<h2>Doctor Panel</h2>

<a href="#">Dashboard</a>
<a href="viewpatient.aspx">View patient</a>
<a href="#">Review</a>
<a href="#">Medical session</a>
<a href="DoctorLogin.aspx">Logout</a>

</div>

<div class="main">

<h1>Welcome Doctor <%Response.Write(Session["sp"]); %></h1>

<div class="card">
<h3>25</h3>
<p>Total Patients</p>
</div>

<div class="card">
<h3>10</h3>
<p>Today's Appointments</p>
</div>

<div class="card">
<h3>5</h3>
<p>Pending Reports</p>

</div>

</div>
    <p>hello <%Response.Write(Session["sp"]);%></p>

</body>
</html>



<%
    }
    else
    {
        Response.Redirect("Doctorlogin.aspx");
    }





    %>