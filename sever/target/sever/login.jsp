<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Booking App</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?cs=srgb&dl=pexels-pixabay-417173.jpg&fm=jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
        }
        h1 {
            font-family: 'Arial Black', sans-serif;
            color: #333;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }
        a {
            text-decoration: none;
            color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #fff;
            margin-top: 20px;
            display: inline-block;
            transition: background-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Booking App</h1>
        <p>Start managing your bookings now!</p>
        <p>Choose your role:</p>
        <a href="Admin">Admin</a>
        <a href="User">User</a>
    </div>
</body>
</html>
