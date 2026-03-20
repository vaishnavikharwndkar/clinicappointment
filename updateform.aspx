<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateform.aspx.cs" Inherits="Clinicappointment.updateform" %>
<%@ Import Namespace = "System.Data.SqlClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%
        string a, b, c, d, e, f, g, h;
        a = Request.Params["id"];
        b = Request.Params["name"];
        c = Request.Params["email"];
        d = Request.Params["phone"];
        e = Request.Params["date"];
        f = Request.Params["massage"];
        g = Request.Params["doctor_name"];
        string p= Request.Params["y"];
        Response.Write(p);
        string path;
        path = "data source=DESKTOP-1NIJAIT\\SQLEXPRESS01; initial catalog=clinic; Trusted_connection=true";
        SqlConnection con = new SqlConnection(path);
        con.Open();
        SqlCommand cmd = new SqlCommand("update patient  set  name='" + b + "',email='"+ c +"',phone='"+ d +"',date='"+ e +"',massage='" +  f  + "' , doctor_name='"+ c +"' Where id='"+ a +"'", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("viewpatient.aspx");
      %>
</body>
</html>
