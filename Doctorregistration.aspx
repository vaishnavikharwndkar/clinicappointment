<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #4e73df, #1cc88a);
            min-height: 100vh;
            display: flex;
            align-items: center;
        }

        .card {
            border-radius: 15px;
        }

        .btn-custom {
            background-color: #4e73df;
            color: white;
            font-weight: 600;
        }

        .btn-custom:hover {
            background-color: #2e59d9;
        }

        .form-control, .form-select {
            border-radius: 8px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-6">

            <div class="card shadow-lg p-4">
                <h3 class="text-center mb-4">Doctor Registration</h3>

                <form action="doctordatasave.aspx" method="post">

                    <div class="mb-3">
                        <input type="text" class="form-control"
                               name="doctor_name"
                               placeholder="Doctor Name"
                               required>
                    </div>

                    <div class="mb-3">
                        <input type="text" class="form-control"
                               name="specialization"
                               placeholder="Specialization"
                               required>
                    </div>

                    

                    <div class="mb-3">
                        <input type="tel" class="form-control"
                               name="phone"
                               placeholder="Phone"
                               required>
                    </div>
                    <div class="mb-3">
    <input type="email" class="form-control"
           name="email"
           placeholder="Email"
           required>
</div>                         <div class="mb-3">
    <input type="password" class="form-control"
           name="password"
           placeholder="password"
           required>
</div>



                    <div class="mb-3">
                        <input type="number" class="form-control"
                               name="experience"
                               placeholder="Years of Experience"
                               min="0"
                               required>
                    </div>

                    <div class="mb-4">
                        <select class="form-select" name="available_day" required>
                            <option value="">Select Available Day</option>
                            <option>Monday</option>
                            <option>Tuesday</option>
                            <option>Wednesday</option>
                            <option>Thursday</option>
                            <option>Friday</option>
                            <option>Saturday</option>
                            <option>Sunday</option>
                        </select>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-custom px-5">
                            Register Doctor
                        </button>
                    </div>

                </form>

            </div>

        </div>
    </div>
</div>

</body>
</html>