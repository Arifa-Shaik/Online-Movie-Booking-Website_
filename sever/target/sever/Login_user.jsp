<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
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
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 40px);
            padding: 15px;
            margin: 15px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 15px 40px;
            margin-top: 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3;
        }
        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form action="L_user" method="post">
        <h2>Login Form</h2>
        <label for="name">Enter name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="password">Enter Password:</label><br>
        <input type="password" id="password" name="password"><br>
        <input type="submit" value="Login">
        <input type="reset" value="Cancel"> 
        <a href="forgot">Forgot password?</a>
    </form>
</body>
</html>
