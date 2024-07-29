<?php
// Start the session to manage login state
session_start();

// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Include the database connection file
include('db_connection.php');

// Initialize an error message variable
$error = '';

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare and execute the query to check user credentials
    $stmt = $mysqli->prepare("SELECT id, password FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        // Bind the result to variables
        $stmt->bind_result($userId, $dbPassword);
        $stmt->fetch();

        // Verify the password (direct comparison as passwords are stored in plain text)
        if ($password === $dbPassword) {
            // Password is correct, start a session for the user
            $_SESSION['user_id'] = $userId;
            header("Location: home.php");
            exit; // Make sure to exit after header redirect
        } else {
            $error = "Invalid email or password.";
        }
    } else {
        $error = "Invalid email or password.";
    }

    $stmt->close();
    $mysqli->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log in</title>
    <link rel="stylesheet" href="./CSS/index.css">
</head>
<body>
    <div class="login-container">
        <h1>Log in</h1>
        <?php if ($error): ?>
            <p class="error"><?php echo $error; ?></p>
        <?php endif; ?>
        <form action="index.php" method="post">
            <div class="form-group">
                <label for="email">Email <span class="required">*</span></label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password <span class="required">*</span></label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-actions">
                <button type="submit" class="login-button">Log in</button>
                <a href="registration.php" class="create-account-button">Create Account</a>
            </div>
        </form>
    </div>
</body>
</html>
