<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://wallpapers.com/images/high/wide-scary-black-shark-f5k8odot9anxm4vr.webp');
            background-size: cover;
            background-position: center;
        }
        form {
            background-color: rgba(255, 255, 255, 0.8); /* Lighter background color */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin: 15px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            padding: 12px 24px;
            margin-top: 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <form action="Edit" method="post">
        <h2>Edit Form</h2>
        <label for="old_name">Enter old name:</label><br>
        <input type="text" id="old_name" name="old_name"><br>
        <label for="new_name">Enter new name:</label><br>
        <input type="text" id="new_name" name="new_name"><br>
        <label for="new_theatre">Enter new theatre:</label><br>
        <input type="text" id="new_theatre" name="new_theatre"><br>
        <input type="submit" value="Edit">
        <input type="reset" value="Cancel"> 
    </form>
</body>
</html>
