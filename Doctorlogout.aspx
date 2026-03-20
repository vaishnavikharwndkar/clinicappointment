<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctorlogout.aspx.cs" Inherits="Clinicappointment.Doctorlogout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        Session["sp"] = null;

        Response.Redirect("Doctorlogin.aspx");


   %>
</body>
</html
