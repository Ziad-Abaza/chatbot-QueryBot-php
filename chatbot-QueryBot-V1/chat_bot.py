import tkinter as tk
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize

nltk.download('stopwords')
nltk.download('punkt')

def send_message():
    message = entry.get()
    response = get_response(message)
    display_response(response)

def get_response(message):
    # تحديد الكلمات المفتاحية
    keywords = ['مساعدة', 'مشكلة', 'معلومة']

    # تحويل الرسالة إلى قائمة من الكلمات
    words = word_tokenize(message)

    # حذف الكلمات الوقفية (Stop words)
    stop_words = set(stopwords.words('arabic'))
    words = [word for word in words if word.casefold() not in stop_words]

    # البحث عن الكلمات المفتاحية في الرسالة
    matching_keywords = [keyword for keyword in keywords if keyword in words]

    if matching_keywords:
        # إذا تم العثور على كلمات مفتاحية، قم بإرجاع الإجابة المناسبة
        return "شكرًا لرسالتك. يمكنني مساعدتك في هذا الموضوع."

    # إذا لم يتم العثور على كلمات مفتاحية، قم بإرجاع إجابة افتراضية
    return "شكرًا لرسالتك. ليس لدي إجابة محددة لهذا السؤال."

def display_response(response):
    response_label.config(text=response)

# إعداد واجهة المستخدم
window = tk.Tk()
window.title("Chatbot")
window.geometry("400x300")

# إضافة عنصر نص لعرض الرسائل والإجابات
response_label = tk.Label(window, text="مرحبًا! أنا Chatbot")
response_label.pack()

# إضافة عنصر إدخال للرسائل
entry = tk.Entry(window, width=40)
entry.pack()

# إضافة زر إرسال لإرسال الرسالة
send_button = tk.Button(window, text="إرسال", command=send_message)
send_button.pack()

# تشغيل برنامج سطح المكتب
window.mainloop()
