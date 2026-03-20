<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientbook.aspx.cs" Inherits="Clinicappointment.patientbook" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Booking</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #9face6);
            font-family: 'Segoe UI', sans-serif;
        }

        .booking-card {
            background: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .form-control {
            border-radius: 8px;
        }

        .btn-custom {
            background-color: #4e73df;
            color: white;
            border-radius: 8px;
        }

        .btn-custom:hover {
            background-color: #2e59d9;
        }

        h2 {
            font-weight: 600;
            margin-bottom: 25px;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">

                <div class="booking-card">
                    <h2 class="text-center">Book Appointment</h2>

                    <form role="form" action="savepatient.aspx" method="post">
                        <div class="row g-3">

                            <div class="col-md-6">
                                <input type="text" name="name" class="form-control" placeholder="Full name" required />
                            </div>

                            <div class="col-md-6">
                                <input type="email" name="email" class="form-control" placeholder="Email address" required />
                            </div>

                            <div class="col-md-6">
                                <input type="text" name="phone" class="form-control"
                                    placeholder="Phone: 123-456-7890" />
                            </div>

                            <div class="col-md-6">
                                <input type="date" name="date" class="form-control" />
                            </div>

                            <!-- Doctor Dropdown -->
                            <div class="col-12">
                                <select name="doctor_name" class="form-control" required>
                                    <option value="">-- Select Doctor --</option>

                                 

    <%
        string path = "Data Source=DESKTOP-1NIJAIT\\SQLEXPRESS01;Initial Catalog=clinic;Trusted_Connection=true";
        using (SqlConnection con = new SqlConnection(path))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT doctor_name FROM doctordata WHERE is_verified = 1", con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
    %>
                <option value="<%= dr["doctor_name"] %>">
                    <%= dr["doctor_name"] %>
                </option>
    <%
            }
        }
    %>
</select>

                              
                              
                            </div>

                            <div class="col-12">
                                <textarea class="form-control" rows="4"
                                    name="message" placeholder="Additional Message"></textarea>
                            </div>

                            <div class="col-12 text-center">
                                <button type="submit" class="btn btn-custom px-5">
                                    Book Now
                                </button>
                            </div>

                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>

</body>
</html>