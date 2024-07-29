<?php
// Name: Guokai Shi
// File Name: registration.php
// Date Created: 2024-07-18
// Description: This PHP file handles user registration, including form validation and database insertion.

include 'db_connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $username = $_POST['login'];
    $password = $_POST['pass'];
    $password2 = $_POST['pass2'];

    // Validate inputs
    if (empty($email) || empty($username) || empty($password) || empty($password2)) {
        $error = "All fields are required.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $error = "Invalid email format.";
    } elseif ($password !== $password2) {
        $error = "Passwords do not match.";
    } else {
        // Check if user already exists
        $checkUser = $mysqli->prepare("SELECT * FROM users WHERE email = ?");
        $checkUser->bind_param("s", $email);
        $checkUser->execute();
        $result = $checkUser->get_result();

        if ($result->num_rows > 0) {
            $error = "User already exists.";
        } else {
            // Insert new user into the database
            $stmt = $mysqli->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
            $stmt->bind_param("sss", $username, $email, $password);
            if ($stmt->execute()) {
                $success = "Registration successful! Redirecting to homepage...";
                header("refresh:3;url=home.php"); // Redirect after 3 seconds
                exit();
            } else {
                $error = "Error: " . $stmt->error;
            }
            $stmt->close();
        }
        $checkUser->close();
    }
    $mysqli->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="./CSS/registration.css">
    <script src="./Scripts/registration.js"></script>
</head>
<body>
    <div class="formcontainer">
        <h1>Weekly Kitten Pictures Subscription</h1>
        <hr>
        <form action="registration.php" method="post" onsubmit="return validate();">
            <?php if (isset($error)): ?>
                <p class="error-message"><?php echo $error; ?></p>
            <?php elseif (isset($success)): ?>
                <p class="success-message"><?php echo $success; ?></p>
            <?php endif; ?>

            <div class="textfield">
                <label for="email">Email Address</label>
                <input type="text" name="email" id="email" placeholder="Email">
            </div>

            <div class="textfield">
                <label for="login">User Name</label>
                <input type="text" name="login" id="login" placeholder="User name">
            </div>

            <div class="textfield">
                <label for="pass">Password</label>
                <input type="password" name="pass" id="pass" placeholder="Password">
            </div>
        
            <div class="textfield">
                <label for="pass2">Re-type Password</label>
                <input type="password" name="pass2" id="pass2" placeholder="Re-type Password">
            </div>

            <div class="checkbox">
                <input type="checkbox" name="newsletter" id="newsletter">
                <label for="newsletter">I agree to receive Weekly Kitten Pictures newsletters</label>
            </div>

            <div class="checkbox">
                <input type="checkbox" name="terms" id="terms">
                <label for="terms">I agree to the terms and conditions</label>
            </div>

            <button type="submit">Sign-Up</button>
            <button type="reset">Reset</button>
        </form>
    </div>
</body>
</html>
