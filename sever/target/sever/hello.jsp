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
            background-image: url('https://source.unsplash.com/random/1920x1080');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        input[type="text"],
        input[type="password"],
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"],
        a {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover,
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form action="Register" method="post">
        <h2>Register Movie</h2>
        <label for="name">Movie_Name:</label><br>
        <input type="text" name="name"><br>
        <label for="theatre">Theatre_Name</label><br>
        <input type="text" name="theatre"><br>
        <label for="adress">Adress</label><br>
        <input type="text" name="adress"><br>
        <label for="showtimes">show_time</label><br>
        <select name="showtimes">
            <option>11:00AM</option>
            <option>2:30PM</option>
            <option>6:30PM</option>
            <option>9:30PM</option>
        </select><br><br>
        <input type="submit" value="Register">
        <a href="List">List</a>
    </form>
</body>
</html>
