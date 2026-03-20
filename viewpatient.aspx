<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewpatient.aspx.cs" Inherits="Clinicappointment.viewpatient" %>
<%@Import NameSpace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>     
</head>
<body>
    <table border="1" width="100%" cellpadding="10">
    <tr>
        <th> ID</th>
        <th>Patient Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>date</th>
        <th>massage</th>
        <th>Doctor_name</th>
        <th>Action</th>
    </tr>


<%


    string path = "data source=DESKTOP-1NIJAIT\\SQLEXPRESS01; initial catalog=clinic; Trusted_connection=true";

    Response.Write("Session Value : " + Session["sp"] + "<br>");

    SqlConnection con = new SqlConnection(path);
    con.Open();

    SqlCommand cmd = new SqlCommand("Select * from patient where doctor_name='" + Session["sp"] + "'", con);


    SqlDataReader br = cmd.ExecuteReader();

    if (br.Read())
    {
      %>
    <tr>
    <td><%=br["id"] %></td>
    <td> <% =br["name"]  %></td>
    <td> <% =br["email"]  %></td>
    <td><% =br["phone"]  %></td>
    <td><% =br["date"]  %></td>
    <td><% =br["massage"] %></td>
    <td><% =br["doctor_name"] %></td>
        <td>
            <a href="edit.aspx?y=<%=br["id"] %>" class="btn-btn-outline-primary">edit</a>
            <a href="deletedata.aspx?x=<%=br["id"] %>" class="btn-btn-outline-danger">delete</a>

        </td>
    </tr>
    <%
    }
   %>

    </table>

        
</body>
</html>