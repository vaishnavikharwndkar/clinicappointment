<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminapproval.aspx.cs" Inherits="Clinicappointment.Adminapproval" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin - Doctor Approval</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">

<div class="container mt-5">
    <h2 class="text-center mb-4">Pending Doctor Approvals</h2>

    

        <Columns>
            <asp:BoundField DataField="doctor_id" HeaderText="ID" />
            <asp:BoundField DataField="doctor_name" HeaderText="Name" />
            <asp:BoundField DataField="specialization" HeaderText="Specialization" />
            <asp:BoundField DataField="email" HeaderText="Email" />

            <asp:ButtonField
                ButtonType="Button"
                Text="Approve"
                CommandName="Approve"
                ControlStyle-CssClass="btn btn-success" />
        </Columns>

    </asp:GridView>
</div>

</form>
</body>
</html>
