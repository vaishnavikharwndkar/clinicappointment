<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="savepatient.aspx.cs" Inherits="Clinicappointment.savepatient" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <% string a, b, c, d, e,f;
        a = Request.Params["name"];
        b=Request.Params["email"];
        c = Request.Params["phone"];
        d = Request.Params["date"];
        e = Request.Params["message"];
        f = Request.Params["doctor_name"];
        string path;
        path = "data source=DESKTOP-1NIJAIT\\SQLEXPRESS01; initial catalog=clinic; Trusted_connection=true";
        SqlConnection con = new SqlConnection(path);


        con.Open();
        SqlCommand cmd = new SqlCommand("insert into patient values('" + a + "','" + b + "','" + c + "','" + d + "','"+ e +"','"+ f +"')", con);
        cmd.ExecuteNonQuery();
        Response.Write("Record save successfully");
      %>
</body>
</html>
