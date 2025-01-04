# QueryBot - Chatbot

QueryBot is a chatbot system designed to provide answers based on user input by querying a database. It is available in two versions:

1. **PHP Version** (`chatbot-QueryBot`)
2. **PHP + Python Version** (`chatbot-QueryBot-with-python`)

This README explains both versions, their setup instructions, and how they work.

## Features

- Responds to user queries based on stored questions and answers in a database.
- If no exact match is found, it uses keyword-based searching.
- Unknown queries are stored in the database for future reference.
- Can be extended for various use cases such as customer support or FAQ bots.

## Versions

### 1. PHP Version (`chatbot-QueryBot`)

This version of the chatbot is built using PHP for server-side logic. It connects to a MySQL database to store and retrieve answers for user queries.

#### Requirements

- PHP 7.0 or higher
- MySQL database
- Web server (Apache, Nginx, etc.)

#### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/Ziad-Abaza/chatbot-QueryBot-php.git
   ```

2. Set up the database:

   - Create a database named `chat_bot`.
   - Create two tables: `questions_answers` and `unknown_questions`.

   ```sql
   CREATE TABLE questions_answers (
       id INT AUTO_INCREMENT PRIMARY KEY,
       question VARCHAR(255) NOT NULL,
       answer TEXT NOT NULL,
       keywords TEXT
   );

   CREATE TABLE unknown_questions (
       id INT AUTO_INCREMENT PRIMARY KEY,
       question TEXT NOT NULL,
       keywords TEXT
   );
   ```

3. Update the `bot.php` file to include your database connection details.

4. Access the chatbot by navigating to the HTML file in your browser.

#### Usage

- The user types a question, and the chatbot searches for the corresponding answer in the database.
- If no exact match is found, the chatbot looks for keywords in the question.
- If the chatbot can't find an answer, the question is stored in the `unknown_questions` table.

---

### 2. PHP + Python Version (`chatbot-QueryBot-with-python`)

This version adds Python into the mix, leveraging natural language processing (NLP) to process user input before querying the database. It uses the `nltk` library for tokenizing and filtering out stop words in Arabic.

#### Requirements

- PHP 7.0 or higher
- MySQL database
- Python 3.x
- NLTK Python library
  - Install via `pip install nltk`

#### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/Ziad-Abaza/chatbot-QueryBot-php.git
   ```

2. Set up the database (same as the PHP version).

3. Install Python dependencies:

   ```bash
   pip install nltk
   ```

4. Update the `bot.php` file for database configuration.

5. Run the Python script (`chatbot.py`) for message processing using the `nltk` library.

6. Access the chatbot via the HTML file.

#### Usage

- The user inputs a message, which is first processed by the Python script to remove stopwords and extract keywords.
- The processed message is then sent to the PHP backend for querying the database.
- If the question is unknown, it gets stored in the `unknown_questions` table.

---

## Files Overview

### 1. `index.html` (Frontend)

The HTML interface for the chatbot, where users input their questions. It features:

- A message input field.
- A button to send the message.
- A chatbox displaying the conversation.

### 2. `bot.php` (PHP Backend)

The main PHP script handling database queries and responding to user input:

- It retrieves the user's input via `GET` request.
- It queries the database for an exact match or uses keyword matching if no exact match is found.
- If no response is found, it stores the question for future use.

### 3. `chatbot.py` (Python Processing - PHP + Python version)

The Python script that processes user input using the `nltk` library. It tokenizes the input, removes stopwords, and checks for keywords to help enhance the chatbot’s response.

### 4. `script.js`

Handles sending user input and receiving responses without page refresh, using AJAX to interact with the PHP backend.

---

## How to Contribute

1. Fork the repository.
2. Create a new branch (`feature/your-feature`).
3. Make changes and commit them.
4. Push to your branch.
5. Open a pull request to the `main` branch.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

