<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checklogin.aspx.cs" Inherits="Clinicappointment.checklogin" %>
<%@ Import Namespace = "System.Data.SqlClient" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        string x, y;
        x= Request.Params["doctor_name"];
        y = Request.Params["password"];
        string path;
        path = "data source=DESKTOP-1NIJAIT\\SQLEXPRESS01; initial catalog=clinic; Trusted_connection=true";
        SqlConnection con = new SqlConnection(path);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from doctordata  where doctor_name='" + x + "' and password='" + y + "'", con);
        SqlDataReader br = cmd.ExecuteReader();
        if(br.Read())
        {
            Session["sp"] = x;
            Response.Redirect("DoctDashboard.aspx");

        }
        else
        {
            Response.Redirect("Doctorlogin.aspx");
        }





        %>
</body>
</html>
