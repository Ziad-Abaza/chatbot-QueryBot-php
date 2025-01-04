import tkinter as tk
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize

# Downloading necessary resources from NLTK
nltk.download('stopwords')
nltk.download('punkt')

# Function to handle sending messages
def send_message():
    message = entry.get()  # Get the message from the user input
    response = get_response(message)  # Get the chatbot's response based on the message
    display_response(response)  # Display the response in the GUI

# Function to process the message and generate a response
def get_response(message):
    # Define the keywords for keyword-based response
    keywords = ['مساعدة', 'مشكلة', 'معلومة']

    # Tokenize the message into words
    words = word_tokenize(message)

    # Remove stop words from the message
    stop_words = set(stopwords.words('arabic'))
    words = [word for word in words if word.casefold() not in stop_words]

    # Check if any of the defined keywords are in the message
    matching_keywords = [keyword for keyword in keywords if keyword in words]

    if matching_keywords:
        # If a keyword is found, return an appropriate response
        return "شكرًا لرسالتك. يمكنني مساعدتك في هذا الموضوع."

    # If no keywords are found, return a default response
    return "شكرًا لرسالتك. ليس لدي إجابة محددة لهذا السؤال."

# Function to display the chatbot's response in the GUI
def display_response(response):
    response_label.config(text=response)

# Setting up the user interface using tkinter
window = tk.Tk()  # Create the main window
window.title("Chatbot")  # Set the window title
window.geometry("400x300")  # Set the window size

# Label to display the chatbot's responses
response_label = tk.Label(window, text="مرحبًا! أنا Chatbot")
response_label.pack()

# Entry widget for user input (messages)
entry = tk.Entry(window, width=40)
entry.pack()

# Button to send the user's message to the chatbot
send_button = tk.Button(window, text="إرسال", command=send_message)
send_button.pack()

# Start the GUI application
window.mainloop()
