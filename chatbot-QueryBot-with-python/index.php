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
        #chat_box {
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
    margin-bottom: 10%; 
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
</head>
<body>
    <h1>Chat Bot</h1>
    <div id="chat_box"></div>
    <form id="message-form" onsubmit="sendMessage(); return false;">
        <input type="text" id="userInput" placeholder="Type your message..." autocomplete="off">
        <button type="submit">Send</button>
    </form>
</body>
</html>
    <script src="script.js"></script>
