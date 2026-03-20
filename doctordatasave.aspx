<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctordatasave.aspx.cs" Inherits="Clinicappointment.doctordatasave" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        string path;
        string a, b, c, d, e,f,g;
        a = Request.Params["doctor_name"];
        b=Request.Params["specialization"];
        c = Request.Params["phone"];
        d = Request.Params["email"];
        e = Request.Params["password"];

        f = Request.Params["experience"];
        g = Request.Params["available_day"];

        path = "data source=DESKTOP-1NIJAIT\\SQLEXPRESS01; initial catalog=clinic; Trusted_connection=true";
        SqlConnection con = new SqlConnection(path);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into doctordata values('" + a + "','" + b + "','" + c + "','" + d + "','"+ e +"','"+ f +"','"+ e +"')", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("index.aspx");

        %>
</body>
</html>
