<?php
// Establish database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chat_bot";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_GET["userInput"])) {
    // Get user input from the query string
    $userInput = $_GET["userInput"];

    // Process user input
    $userInput = trim($userInput); // Remove leading/trailing whitespace
    $userInput = strtolower($userInput); // Convert to uppercase

    // Search for the answer using the question
    $query = "SELECT answer FROM questions_answers WHERE LOWER(question) = '$userInput'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $response = $row["answer"];
    } else {
        // Search for the answer using keywords
        $keywords = explode(" ", $userInput);
        $conditions = [];
        foreach ($keywords as $keyword) {
            $conditions[] = "keywords LIKE '%$keyword%'";
        }
        $query = "SELECT answer FROM questions_answers WHERE " . implode(" AND ", $conditions);
        $result = mysqli_query($conn, $query);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $response = $row["answer"];
        } else {
            // Save the unknown question in the database
            $keywords = str_replace(" ", "", $userInput);
            $keywords = mysqli_real_escape_string($conn, $keywords);
            $insertQuery = "INSERT INTO unknown_questions (question, keywords) VALUES ('$userInput', '$keywords')";
            mysqli_query($conn, $insertQuery);

            $response = "I'm sorry, I don't have an answer to that question. It has been saved for future reference.";
        }
    }

    // Return the response
    echo $response;
}

// Close the database connection
mysqli_close($conn);
?>