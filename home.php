<?php
// Database connection parameters
$host = 'localhost';
$db = 'grouptask';
$user = 'cst8285';
$password = 'password';

// Create a new mysqli instance
$mysqli = new mysqli($host, $user, $password, $db);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Get the current recipe ID from the URL or set default to 1
$currentId = isset($_GET['id']) ? (int)$_GET['id'] : 1;

// Fetch the current recipe
$recipeStmt = $mysqli->prepare("SELECT id, title, instructions, image_url, cuisine, dietary_preferences FROM recipes WHERE id = ?");
$recipeStmt->bind_param("i", $currentId);
$recipeStmt->execute();
$recipe = $recipeStmt->get_result()->fetch_assoc();

// Fetch ingredients for the current recipe
$ingredientsStmt = $mysqli->prepare("SELECT ingredient, amount FROM recipe_ingredients WHERE recipe_id = ?");
$ingredientsStmt->bind_param("i", $currentId);
$ingredientsStmt->execute();
$ingredients = $ingredientsStmt->get_result();

// Fetch the next and previous recipe IDs
$prevStmt = $mysqli->prepare("SELECT MAX(id) AS id FROM recipes WHERE id < ?");
$prevStmt->bind_param("i", $currentId);
$prevStmt->execute();
$prevId = $prevStmt->get_result()->fetch_assoc()['id'];

$nextStmt = $mysqli->prepare("SELECT MIN(id) AS id FROM recipes WHERE id > ?");
$nextStmt->bind_param("i", $currentId);
$nextStmt->execute();
$nextId = $nextStmt->get_result()->fetch_assoc()['id'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipe Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        h1 {
            color: #333;
        }
        .recipe-container {
            max-width: 800px;
            margin: auto;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .recipe-header img {
            max-width: 100%;
            height: auto;
        }
        .recipe-details p {
            margin: 10px 0;
        }
        .ingredients {
            margin: 20px 0;
        }
        .ingredients ul {
            list-style-type: none;
            padding: 0;
        }
        .ingredients li {
            background: #f9f9f9;
            padding: 5px;
            margin-bottom: 5px;
            border: 1px solid #ddd;
        }
        .pagination a {
            margin: 0 5px;
            text-decoration: none;
            padding: 5px 10px;
            background: #007bff;
            color: white;
            border-radius: 3px;
        }
        .pagination a:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="recipe-container">
        <?php if ($recipe): ?>
            <div class="recipe-header">
                <h1><?php echo htmlspecialchars($recipe['title']); ?></h1>
                <img src="<?php echo htmlspecialchars($recipe['image_url']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
            </div>
            <div class="recipe-details">
                <p><strong>Cuisine:</strong> <?php echo htmlspecialchars($recipe['cuisine']); ?></p>
                <p><strong>Dietary Preferences:</strong> <?php echo htmlspecialchars($recipe['dietary_preferences']); ?></p>
                <p><strong>Instructions:</strong> <?php echo nl2br(htmlspecialchars($recipe['instructions'])); ?></p>
            </div>
            <div class="ingredients">
                <h3>Ingredients:</h3>
                <ul>
                    <?php while ($ingredient = $ingredients->fetch_assoc()): ?>
                        <li><?php echo htmlspecialchars($ingredient['ingredient']); ?>: <?php echo htmlspecialchars($ingredient['amount']); ?></li>
                    <?php endwhile; ?>
                </ul>
            </div>
            <div class="pagination">
                <?php if ($prevId): ?>
                    <a href="?id=<?php echo $prevId; ?>">Previous</a>
                <?php endif; ?>
                <?php if ($nextId): ?>
                    <a href="?id=<?php echo $nextId; ?>">Next</a>
                <?php endif; ?>
            </div>
        <?php else: ?>
            <p>Recipe not found.</p>
        <?php endif; ?>

        <?php 
        // Close statements and connection
        $recipeStmt->close();
        $ingredientsStmt->close();
        $prevStmt->close();
        $nextStmt->close();
        $mysqli->close(); 
        ?>
    </div>
</body>
</html>
