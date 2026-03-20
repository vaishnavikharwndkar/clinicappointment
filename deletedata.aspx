<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletedata.aspx.cs" Inherits="Clinicappointment.deletedata" %>
<%@ Import Namespace = "System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        string k= Request.Params["x"];
        Response.Write(k);
        string path;
        path = "data source=DESKTOP-1NIJAIT\\SQLEXPRESS01; initial catalog=clinic; Trusted_connection=true";
        SqlConnection con = new SqlConnection(path);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from patient where id='" + k + "'", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("viewpatient.aspx");

        %>
</body>
</html>
