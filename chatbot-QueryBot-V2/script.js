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
