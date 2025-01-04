-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 09:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions_answers`
--

CREATE TABLE `questions_answers` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions_answers`
--

INSERT INTO `questions_answers` (`id`, `question`, `answer`, `keywords`) VALUES
(1, 'hello', 'Hi, how are you', 'hi,welcom,hey'),
(2, 'omar el gamal', 'is this an animal', 'omar el-gamal,omar el-jamal,omar el jamal, omar mohamed al jamal,omar mohamed el jamal,omar mohamed al gamal,omar mohamed el jamal,omar mohamed el gamal'),
(3, 'ziad hassan abaza', 'do you mean dangerous hacker 3-p0ox', '3-p0ox,3_p0ox,ziad hassan,ziad abaza,ziad,3p0ox'),
(4, 'ما هو الطقس اليوم', 'الطقس مشمس ودافئ', 'طقس,الطقس اليوم '),
(5, 'ما هي عاصمة فرنسا', 'عاصمة فرنسا هي باريس', 'فرنسا, باريس'),
(6, 'ما هو السينما', 'السينما هي فن تصوير وعرض الأفلام', ' سينما, أفلام'),
(7, 'ما هو عمرك', 'أنا برنامج حاسوبي، ليس لدي عمر', 'عمر, برنامج, حاسوب'),
(8, 'ما هو لونك المفضل', 'ليس لدي لون مفضل، أنا برنامج حاسوبي', 'لون, مفضل, برنامج, حاسوب'),
(9, 'كيف يمكنني التواصل معك', 'يمكنك التواصل معي عبر هذا الدردشة', 'تواصل, دردشة'),
(10, 'ما هي أهمية التعلم', 'التعلم يساعدنا على اكتساب المعرفة وتطوير المهارات', 'أهمية, تعلم, معرفة, مهارات'),
(11, 'ما هو اسمك', 'أنا برنامج حاسوبي، ليس لدي اسم', 'اسم, برنامج, حاسوب'),
(12, 'ما هي اللغات التي تجيدها', 'أنا برنامج مبني بلغة PHP وقادر على فهم العديد من لغات البرمجة الأخرى', 'لغات, برمجة, PHP'),
(13, 'ما هو الهدف من وجودك', 'هدفي هو مساعدتك وتقديم المعلومات التي تحتاجها', 'هدف, مساعدة, معلومات'),
(14, 'كيف يمكنني تغيير كلمة المرور', 'يمكنك تغيير كلمة المرور عن طريق صفحة الإعدادات الخاصة بحسابك', 'تغيير, كلمة مرور, إعدادات, حساب'),
(15, 'كم هو طول سنة كبيسة', 'طول سنة كبيسة هو 366 يومًا', 'سنة كبيسة, طول'),
(16, 'ما هو أول برنامج تعلمته', 'أول برنامج تعلمته كان برنامج \"Hello, World!\" بلغة برمجة C', 'برنامج, تعلم, Hello World, C'),
(17, 'ما هي أفضل طريقة لتعلم لغة برمجة جديدة', 'أفضل طريقة لتعلم لغة برمجة جديدة هي الممارسة المستمرة وبناء مشاريع عملية', 'تعلم, لغة برمجة, ممارسة, مشاريع'),
(18, 'ما هي الروابط المفيدة للمطورين', 'بعض الروابط المفيدة للمطورين هي: GitHub, Stack Overflow, W3Schools', 'روابط, مفيدة, مطورين, GitHub, Stack Overflow, W3Schools'),
(19, 'ما هي أهمية البرمجة', 'تعتبر البرمجة أحد الأدوات الأساسية في العصر الحديث، حيث تساهم في حل المشكلات وتطوير التطبيقات والبرامج', 'أهمية, برمجة, تطبيقات, برامج'),
(20, 'ما هو الفرق بين البرمجة الشيئية والبرمجة الإجرائية', 'البرمجة الشيئية تعتمد على تنظيم البرامج حول الكائنات والتفاعلات بينها، بينما البرمجة الإجرائية تعتمد على تنفيذ سلسلة من الإجراءات والتعليمات', 'فرق, برمجة شيئية, برمجة إجرائية'),
(21, 'ما هي أفضل لغة برمجة للتعلم الأولي', 'توجد العديد من لغات البرمجة المناسبة للتعلم الأولي مثل Python وJavaScript وJava', 'أفضل لغة, تعلم أولي, Python, JavaScript, Java'),
(22, 'ما هي مبادئ البرمجة الجيدة', 'من مبادئ البرمجة الجيدة: البساطة، والاستدامة، وإعادة الاستخدام، والتوثيق الجيد', 'مبادئ, برمجة جيدة, بساطة, استدامة, إعادة استخدام, توثيق'),
(23, 'ما هو التكنولوجيا السحابية', 'التكنولوجيا السحابية هي عبارة عن توفير خدمات الحوسبة والتخزين عبر الإنترنت بدلاً من الاعتماد على الأجهزة المحلية', 'تكنولوجيا سحابية, حوسبة سحابية, تخزين سحابي'),
(24, 'ما هو البرنامج المستخدم لتطوير مواقع الويب', 'يتم استخدام العديد من البرامج لتطوير مواقع الويب مثل HTML وCSS وJavaScript وPHP', 'برنامج تطوير, مواقع ويب, HTML, CSS, JavaScript, PHP'),
(25, 'ما هي أنواع قواعد البيانات المستخدمة في تطبيقات الويب', 'تتضمن أنواع قواعد البيانات في تطبيقات الويب MySQL وPostgreSQL وMongoDB وغيرها', 'أنواع قواعد بيانات, تطبيقات ويب, MySQL, PostgreSQL, MongoDB'),
(26, 'ما هو البرمجة الوظيفية', 'البرمجة الوظيفية هي نمط برمجي يركز على استخدام الدوال والتركيز على النتائج بدلاً من التحكم في التتابع الحالي للبرنامج', 'برمجة وظيفية, دوال, نتائج'),
(27, 'ما هو التصميم الجرافيكي', 'التصميم الجرافيكي هو عملية إنشاء وتوظيف العناصر البصرية لتوصيل رسالة أو فكرة بصريًا', 'تصميم جرافيكي, عناصر بصرية, رسالة, فكرة'),
(28, 'ما هو الذكاء الاصطناعي', 'الذكاء الاصطناعي هو مجال يهتم بإنشاء أنظمة تعتبر ذات ذكاء مشابه للبشر وقدرة على اتخاذ القرارات وتعلم الأنماط', 'ذكاء اصطناعي, أنظمة ذكاء, اتخاذ قرارات, تعلم أنماط'),
(29, 'ما هو التعلم الآلي', 'التعلم الآلي هو قدرة الأنظمة الحاسوبية على التعلم والتكيف مع البيانات وتحسين أدائها مع تزايد الخبرة', 'تعلم آلي, تكيف, بيانات, أداء'),
(30, 'ما هو الشبكات العصبية الاصطناعية', 'الشبكات العصبية الاصطناعية هي نماذج حاسوبية تحاكي الشبكات العصبية البشرية لتمكين الحوسبة الذكية ومعالجة البيانات', 'شبكات عصبية اصطناعية, حوسبة ذكية, معالجة بيانات'),
(31, 'ما هو تطوير البرمجيات', 'تطوير البرمجيات هو عملية إنشاء وتطوير البرامج والتطبيقات الحاسوبية بواسطة البرمجة والاختبار والصيانة', 'تطوير برمجيات, برامج حاسوبية, برمجة, اختبار, صيانة'),
(32, 'ما هي تقنية Blockchain', 'تقنية Blockchain هي تقنية تسجيل موزع تعتمد على الشبكة وتستخدم في تأمين المعاملات الرقمية وضمان الثقة والشفافية', 'تقنية Blockchain, تسجيل موزع, أمان معاملات رقمية, شفافية'),
(33, 'ما هو التصميم التجريبي (Prototype)', 'التصميم التجريبي هو نموذج أولي يستخدم لاختبار وتقييم فكرة أو تصميم قبل تطبيقه بشكل نهائي', 'تصميم تجريبي, نموذج أولي, اختبار وتقييم'),
(34, 'ما هو التسويق الرقمي', 'التسويق الرقمي هو استخدام الوسائط الرقمية والمنصات الإلكترونية للترويج للمنتجات والخدمات والوصول إلى الجمهور المستهدف', 'تسويق رقمي, وسائط رقمية, منصات إلكترونية, ترويج, جمهور مستهدف'),
(35, 'What is programming', 'Programming is the process of creating instructions for computers to perform specific tasks or solve problems.', 'programming, instructions, computers, tasks, problems'),
(36, 'What is web development', 'Web development is the process of creating websites and web applications using programming languages and technologies.', 'web development, websites, web applications, programming languages, technologies'),
(37, 'What is artificial intelligence', 'Artificial intelligence is a field that focuses on creating computer systems with intelligence similar to human beings, enabling them to make decisions and learn patterns.', 'artificial intelligence, computer systems, human-like intelligence, decisions, learning patterns'),
(38, 'What is machine learning', 'Machine learning is the ability of computer systems to learn and adapt from data and improve their performance with experience.', 'machine learning, adaptability, data, performance'),
(39, 'What is data science', 'Data science is a multidisciplinary field that involves extracting knowledge and insights from data using various techniques and tools.', 'data science, multidisciplinary, knowledge extraction, data insights, techniques, tools'),
(40, 'What is cloud computing', 'Cloud computing is the delivery of computing services over the internet, including storage, processing power, and software, on-demand and without direct user management.', 'cloud computing, computing services, internet, storage, processing power, software'),
(41, 'What is cybersecurity', 'Cybersecurity is the practice of protecting computer systems, networks, and data from unauthorized access, attacks, and damage.', 'cybersecurity, computer systems, networks, data protection, unauthorized access, attacks'),
(42, 'What is user experience (UX) design', 'User experience (UX) design is the process of enhancing user satisfaction by improving the usability, accessibility, and enjoyment of interacting with a product or system.', 'user experience design, UX design, user satisfaction, usability, accessibility, enjoyment'),
(43, 'What is agile software development', 'Agile software development is an iterative and flexible approach to software development that emphasizes collaboration, adaptability, and delivering working software in short timeframes.', 'agile software development, iterative approach, flexibility, collaboration, adaptability, working software, short timeframes'),
(44, 'What is the importance of programming', 'Programming is essential in the modern age as it contributes to problem-solving, application development, and software advancement.', 'importance, programming, problem-solving, application development, software'),
(45, 'What is the difference between object-oriented programming and procedural programming', 'Object-oriented programming organizes programs around objects and their interactions, while procedural programming relies on executing a series of procedures and instructions.', 'difference, object-oriented programming, procedural programming'),
(46, 'What is the best programming language for beginners', 'There are several programming languages suitable for beginners such as Python, JavaScript, and Java.', 'best language, beginners, Python, JavaScript, Java'),
(47, 'What are the principles of good programming', 'Some principles of good programming include simplicity, sustainability, reusability, and good documentation.', 'principles, good programming, simplicity, sustainability, reusability, documentation'),
(48, 'What is cloud technology', 'Cloud technology refers to the delivery of computing services and storage over the internet instead of relying on local hardware.', 'cloud technology, cloud computing, computing services, storage'),
(49, 'What software is used for web development', 'Various software is used for web development, such as HTML, CSS, JavaScript, and PHP.', 'web development software, HTML, CSS, JavaScript, PHP'),
(50, 'What types of databases are used in web applications', 'Types of databases used in web applications include MySQL, PostgreSQL, MongoDB, and others.', 'database types, web applications, MySQL, PostgreSQL, MongoDB'),
(51, 'What is the importance of programming', 'Programming is an essential tool in the modern age, as it contributes to problem-solving and the development of applications and software', 'importance, programming, applications, software'),
(52, 'What is the difference between object-oriented programming and procedural programming', 'Object-oriented programming revolves around organizing programs around objects and their interactions, whereas procedural programming relies on executing a series of procedures and instructions', 'difference, object-oriented programming, procedural programming'),
(53, 'What is the best programming language for beginners', 'There are several programming languages suitable for beginners, such as Python, JavaScript, and Java', 'best language, beginner, Python, JavaScript, Java'),
(54, 'What are the principles of good programming', 'The principles of good programming include simplicity, maintainability, reusability, and good documentation', 'principles, good programming, simplicity, maintainability, reusability, documentation'),
(55, 'What is cloud technology', 'Cloud technology refers to the provision of computing and storage services over the internet instead of relying on local hardware', 'cloud technology, cloud computing, cloud storage'),
(56, 'Which software is used for web development', 'There are several software used for web development, such as HTML, CSS, JavaScript, and PHP', 'development software, web development, HTML, CSS, JavaScript, PHP'),
(57, 'What are the types of databases used in web applications', 'The types of databases used in web applications include MySQL, PostgreSQL, MongoDB, and others', 'database types, web applications, MySQL, PostgreSQL, MongoDB'),
(58, 'What is your name', 'I am a computer program, I don\'t have a name', 'name, program, computer'),
(59, 'What programming languages do you know', 'I am built with PHP and capable of understanding various other programming languages', 'languages, programming, PHP'),
(60, 'What is your purpose', 'My purpose is to assist you and provide the information you need', 'purpose, assist, information'),
(61, 'How can I change my password', 'You can change your password through your account settings page', 'change, password, settings, account'),
(62, 'How long is a leap year', 'A leap year is 366 days long', 'leap year, length'),
(63, 'What was the first program you learned', 'The first program I learned was the \"Hello, World!\" program in the C programming language', 'program, learned, Hello World, C'),
(64, 'What is the best way to learn a new programming language', 'The best way to learn a new programming language is through continuous practice and building practical projects', 'learn, programming language, practice, projects'),
(65, 'What are some useful links for developers', 'Some useful links for developers include GitHub, Stack Overflow, and W3Schools', 'links, useful, developers, GitHub, Stack Overflow, W3Schools'),
(66, 'How old are you', 'I am a computer program, I don\'t have an age', 'you age, program, computer'),
(67, 'What is your favorite color', 'I don\'t have a favorite color, I am a computer program', 'color, favorite, program, computer'),
(68, 'How can I contact you', 'You can contact me through this chat', 'contact, chat'),
(69, 'What is the importance of learning', 'Learning helps us acquire knowledge and develop skills', 'importance, learning, knowledge, skills');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_questions`
--

CREATE TABLE `unknown_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unknown_questions`
--

INSERT INTO `unknown_questions` (`id`, `question`, `keywords`) VALUES
(1, 'WHAT IS PROGRAMMING', 'WHATISPROGRAMMING'),
(2, 'ما هو عمرك', 'ماهوعمرك'),
(3, 'ما هو عمرك', 'ماهوعمرك'),
(4, 'موسكو', 'موسكو'),
(5, 'مصر', 'مصر'),
(6, 'WHAT TYPES OF DATABASES ARE USED IN WEB APPLICATIO', 'WHATTYPESOFDATABASESAREUSEDINWEBAPPLICATIO'),
(7, 'WHAT TYPES OF DATABASES ARE USED IN WEB APPLICATIO', 'WHATTYPESOFDATABASESAREUSEDINWEBAPPLICATIO'),
(8, 'HDDFGH', 'HDDFGH'),
(9, 'IM FINE', 'IMFINE'),
(10, '&#1605;&#1585;&#1581;&#1576;&#1575;', '&#1605;&#1585;&#1581;&#1576;&#1575;'),
(11, 'HOW CAN', 'HOWCAN'),
(12, 'HAY', 'HAY'),
(13, 'HII', 'HII'),
(14, 'CANTRY', 'CANTRY'),
(15, '15931575158916051577 16011585160615871575', '1593157515891605157716011585160615871575'),
(16, '16011585160615871575', '16011585160615871575'),
(17, '15751604159116021587', '15751604159116021587'),
(18, '15751604159116021587 15751604161016081605', '1575160415911602158715751604161016081605'),
(19, '16051575 16071608 15751604159116021587 15751604161016081605', '16051575160716081575160415911602158715751604161016081605'),
(20, '16051575 16071608 157116081604 157615851606157516051580 157815931604160515781607', '1605157516071608157116081604157615851606157516051580157815931604160515781607'),
(21, '16051575 16071608 157116081604 157615851606157516051580 157815931604160515781607', '1605157516071608157116081604157615851606157516051580157815931604160515781607'),
(22, '15751578', '15751578'),
(23, '16041575', '16041575'),
(24, '16051575 16071610 16051576157515831574 1575160415761585160515801577 157516041580161015831577', '1605157516071610160515761575158315741575160415761585160515801577157516041580161015831577'),
(25, '16051575 16071610 16051576157515831574 1575160415761585160515801577 157516041580161015831577', '1605157516071610160515761575158315741575160415761585160515801577157516041580161015831577'),
(26, '    Prototype', 'Prototype'),
(27, '    Prototype', 'Prototype'),
(28, '    PROTOTYPE', 'PROTOTYPE'),
(29, '    Prototype', 'Prototype'),
(30, '    Prototype', 'Prototype'),
(31, '    Prototype', 'Prototype'),
(32, '    Prototype', 'Prototype'),
(33, 'اه', 'اه'),
(34, 'HOW ARE YOU', 'HOWAREYOU'),
(35, 'ما هو اسم الجامعة؟', 'ماهواسمالجامعة؟'),
(36, 'مرحبا', 'مرحبا'),
(37, 'مرحبا', 'مرحبا'),
(38, 'WHATS YOUR NAME', 'WHATSYOURNAME'),
(39, 'YOUR NAME', 'YOURNAME'),
(40, 'batu is a fictional character.', 'batuisafictionalcharacter.'),
(41, 'تعلم مهارات جديدة', 'تعلممهاراتجديدة');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions_answers`
--
ALTER TABLE `questions_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unknown_questions`
--
ALTER TABLE `unknown_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions_answers`
--
ALTER TABLE `questions_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `unknown_questions`
--
ALTER TABLE `unknown_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
