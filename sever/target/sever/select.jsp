<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://wallpapers.com/images/high/great-monster-black-shark-9dv9czxseg3oet85.webp');
            background-size: cover;
            background-position: center;
        }
        form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #333;
            border-radius: 20px;
            box-sizing: border-box;
            color: #333;
            outline: none;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 12px 20px;
            margin-top: 20px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form action="Select" method="post">
        <h2 style="color: #007bff;">User Registration</h2>
        <label for="name">Movie_Name</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="show">show_time</label><br>
        <input type="text" id="show" name="show"><br>
        <label for="theatre">theatre</label><br>
        <input type="text" id="theatre" name="theatre"><br>
        <label for="tickets">Number of Tickets</label><br>
        <input type="text" id="tickets" name="tickets"><br>
        <label for="payment">payment_type</label><br>
        <select name="payment">
            <option>phonepe</option>
            <optio>GPay</option>
            <option>Paytm</option>
            <option>BHIM_UPI</option>
            <option>Credit/Debit</option>
        </select><br><br>
        <input type="submit" value="Confirm">
    </form>
</body>
</html>
