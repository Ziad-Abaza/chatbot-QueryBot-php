<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Bot</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            position: absolute;
            top: 2%;
            left: 50%;
            transform: translateX(-50%);
        }
        #chatbox {
            width: 60%;
            height: 40%;
            margin: 5% auto;
            padding: 10%;
            padding-top: 15%;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 10px;
            overflow-y: scroll;
        }

        #userInput {
            padding: 10%;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        #message-form {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: auto;
    margin-bottom: 10%; /* تحديث هنا للمسافة السفلية */
}

        button[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
    <script src="script.js"></script>
</head>
<body>
    <h1>Chat Bot</h1>
    <div id="chatbox"></div>
    <form id="message-form" onsubmit="sendMessage(); return false;">
        <input type="text" id="userInput" placeholder="Type your message..." autocomplete="off">
        <button type="submit">Send</button>
    </form>
</body>
</html>

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
    $userInput = strtoupper($userInput); // Convert to uppercase

    // Search for the answer using the question
    $query = "SELECT answer FROM questions_answers WHERE UPPER(question) = '$userInput'";
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

<script>
function sendMessage() {
    var userInput = document.getElementById("userInput").value;
    if (userInput !== "") {
        displayMessage(userInput, true);
        document.getElementById("userInput").value = "";
        getResponse(userInput);
    }
}

function displayMessage(message, isUser) {
    var chatbox = document.getElementById("chatbox");
    var messageElement = document.createElement("div");
    messageElement.classList.add(isUser ? "user-message" : "bot-message");
    messageElement.textContent = message;
    chatbox.appendChild(messageElement);
}

function getResponse(userInput) {
    // AJAX request to the PHP server-side script to get the response
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "bot.php?userInput=" + userInput, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = xhr.responseText;
            displayMessage(response, false);
        }
    };
    xhr.send();
}
</script>