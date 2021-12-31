

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search_engine`
--



-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `description`) VALUES
(1, 'How to write query using spring-data-solr which return list of all values of specific field', 'I want to write a query that gets list of all values of one field in the documents (no conditions at all). I try the following code:\r\n\r\n@Query(fields = { \"car_company_s\" })\r\nList<Car> findAllCarCompeny();\r\n\r\nBut it didn\'t work, I got the following error:\r\n\r\nCaused by: org.springframework.data.mapping.PropertyReferenceException: No property findAllCarCompeny found for type Car!\r\n\r\n\r\nIs there any way to do this?\r\n\r\n'),
(2, 'hide security warning is not working jenkins', 'I had some security warning in my jenkins. Most about \'old\' plugins. We\'ve updated the plugins + adapted some necessary configuration. One warning is still showed:\r\n\r\nJenkins 2.46.3 core and libraries:\r\n\r\n    Multiple security vulnerabilities\r\nWe understand and have read the security vulnerabilities but at the moment it\'s not a priority to fix this. We\'ve scheduled a date for a fix.\r\n\r\nBut for now we want to ignore the warning: We unchecked the warning in https://url/jenkins/configureSecurity/. Applied and saved but it\'s still shown.\r\n\r\nDo we miss something?'),
(3, 'Spring boot Scheduling appoinment\r\n\r\n', 'Hi I need an support and some ideas to schedule an appoinment for the particular user Scenario: If the user has schedule an appoinment with the doctor in the available hours another should should not access that time it should be shown hidden and ask him to choose another time slot or some doctor who is free at that time.'),
(4, 'Easy admin : collection of forms\r\n\r\n', 'I am trying to build a simple backend application based on EasyAdmin. The ORM is Doctrine.\r\n\r\nI have set up 3 entities : * Entity A has a unidirectional many-to-many relation to entity B * Entity B has a one-to-one relation to entity C * Entity C has some basic properties\r\n\r\nIn EasyAdmin I have set up the Entity A and Entity C. The purpose is to add/edit Entity B while adding/editing entity A. II found the following which is exactly what I want. symfony easyadmin one to many form.\r\n\r\nBut when I want to add an Entity B while adding Entity A, it creates a form with the appropriate fields but the form has its own save button. Which seems to conflict with the main save button. Results\r\n\r\nIs there a working example of what I want to achieve or some documentation on how to do it ?\r\n\r\nRegards\r\n\r\nChristophe Absil'),
(5, 'Iocns bootstrap menu\r\n\r\n', 'Is it possible create a bootstrap menu like below image. It should not collapse, should be same for all screens, and menu icon should open a dropdown'),
(6, 'In cadvisor, how to calculate the “load_average” of a docker container?\r\n\r\n', 'I use the command: \"curl http://10.149.32.63:4194/api/v1.3/docker\" to get the CPU information of a docker container provided by cadvisor and the result is as follow:\r\n\r\n'),
(7, 'Linkedin rest Api - Getting Email address\r\n\r\n', 'we are developing an Application to do single signon with LinkedIn. In our app we have requested r_basicProfile and r_emailaddress permissions in scope. But once the user is authenticated while retreiving the email address, we are able to get the primary email address alone.\r\n\r\nis there a way we could get all the email address the user has added to his profile?'),
(8, 'How to make regex with this format “image(numeric, string)”?\r\n\r\n', 'i want to make regex to detect this format image(numeric, string). ex: image(100, \'test\').\r\n\r\ni have tried this one, but just detect the image(numeric)\r\n\r\n/image\\((\\d+)\\)/\r\nAny help with second parameter and the ,?'),
(9, 'GCP ML Engine predict not work… :(\r\n\r\n', 'I work all day with GCP ML engine! because we want to move the model to GCP... it is not easy to me... or you..?\r\n\r\nAfter deploy the model, try the \'online predict\' (https://cloud.google.com/ml-engine/docs/online-predict). but occur socket.timeout error and logging like this also try the \'batch predict\' (https://cloud.google.com/ml-engine/docs/batch-predict). but job is running, running, running and running... batch inputs size is 1 :)\r\n\r\ncan you help me..?\r\n\r\nthis is my first question. If you do not understand the contents, please give me a comment! thank you! :)'),
(10, 'Phantom js unable to locate web elements but webpage is getting loaded\r\n\r\n', 'I am trying to locate web elements in a web page using selenium java with phantomjs driver,i am able to load the web page but ending up with unable to locate the element error,i am using windows 7 selenium 3 and phantom 2.1.1. I have also added the phantomjs driver path to environment variable.\r\n\r\n'),
(11, 'QScrollbar setMinimum to negative value\r\n\r\n', 'I have a QTableView that I need to \"lock\" a selected row. The requirements are that the selected row must be moved to the middle of the table and then the scrolling of the table must be disabled.\r\n\r\nThis is easy enough with a big model and selecting a row somewhere in the middle of the model:\r\n\r\nui->tableView->scrollTo(ui->tableView->currentIndex(), QAbstractItemView::PositionAtCenter );\r\nHowever, if the selected row is near the top or the bottom of the model then it will not be displayed in the middle of the table. Due to not being able to scroll past the last item.\r\n\r\nI have looked at the QScrollbar of the table:\r\n\r\nQScrollBar *scrollbar = ui->tableView->verticalScrollBar();\r\nscrollbar->setMaximum( scrollbar->maximum() + scrollbar->singleStep()*10 );\r\nThis adds ten white spaces to the bottom of the table and if I now \"lock\" a row near the bottom, it will be displayed in the middle of the TableView. This works great.\r\n\r\nHowever, trying to add the white spaces to the top of the table, doesn\'t seem to work correctly:\r\n\r\nscrollbar->setMinimum( scrollbar->minimum() - scrollbar->singleStep()*10 );\r\nThe code above does add the white space, but it breaks the tableview with some weird behavior. The data rows are invisible and only by clicking on them (selecting them) do they appear visible again, only to disappear when the table loses focus.\r\n\r\nIs there a limitation to the QScrollbar::Minimum value? Can I not make it negative? Or is there something I\'m missing here?'),
(12, 'Best IoC container for ASP.net Core\r\n\r\n', 'I need help in deciding which IoC container is best for ASP.net Core. \r\nWhat i need is: \r\nBest performance, \r\nEasy configuration, \r\nCustom lifetimes, \r\nInterception, \r\nAuto diagnostics.'),
(13, 'gridview in popup is reload whole page not refresh the popup in webforms\r\n\r\n', 'I want to refresh my popup without reload my page. I have a paging in gridview when i change the page 2 the whole page is refresh and popup again show with page 2 but i want the popup refresh only like as facebook like button. Here is the code .\r\n\r\n'),
(14, 'How to send data inside an object and JSON data from postman\r\n\r\n', 'My Json structure in postman is as below\r\n\r\n{\r\n    \"user\":{\r\n    \"email\":\"bangole@gmail.com\",\r\n    \"password\":\"bangole@gmail.com\",\r\n    \"active\":true,\r\n    \"role_id\":\"2\"\r\n    }\r\n    ,\r\n    \"userDetails\":{\r\n    \"user_name\":\"bangole\"\r\n    }\r\n\r\n}\r\nso from my code am fetching data like data.user or data.userDetails\r\n\r\nvar data = req.body;\r\nif(!data.user.email || !data.userDetails.user_name){\r\nreturn res.status(401).send({\r\n            status: 401,\r\n            data: \"Email, Password,  Active and role_id are required fields\"\r\n        })\r\nthis works fine if i post the data in JSON structure like i mentioned above but if i try to post empty json or any invalid input through postman then i will get Error: Cannot find module \'html&#39    at Function.Module._resolveFilename (module.js:469:15) so how can i solve this issue?'),
(15, 'Calling a stored procedure which returns a sorted data from Entity Framework\r\n\r\n', 'I am using EF6 with a stored procedure which returns a sorted resultset (the select query with an order by). Can I be sure that the returned ObjectResult will be sorted the same way in terms of passing through the foreach loop?\r\n\r\n'),
(16, 'How to work with PHP PDO Transactions\r\n\r\n', 'I\'m working on an application using PHP and MySql on the backend. Recently I was reading more on the PDO queries to make CRUD operations and got into something called Transaction. I understood the concept (at least I\'m very sure I did), however it\'s not very clear to me how to use this concecpt. I tried somethings, but I don\'t know if they are correct.\r\n\r\nToday I have an Sql Class where I control all the queries made on the application, something like this:'),
(17, 'How can I make a string shorter PHP?\r\n\r\n', 'I have to add a long string to an affiliate link.\r\n\r\nMy string is: Jhsdsfsdfsjujdf34fdsfdsSDsdfsjujdf\r\n\r\nHowever this string is too long.\r\n\r\nIs there a way to make it shorter (lets say 15-20 characters max)? It can be compressed, encoded whatever. Just make it shorter and tell me how to decode it later.'),
(18, 'How to insert json object into mysql table using PHP\r\n\r\n', 'There are many examples around which parse the JSON and then insert the respective fields into MySQL table.\r\n\r\nMy case is different in a way that I am creating a json at runtime.\r\n\r\nmy table looks like this:\r\n\r\nmysql> describe turkers_data;\r\n+-----------+----------+------+-----+---------+-------+\r\n| Field     | Type     | Null | Key | Default | Extra |\r\n+-----------+----------+------+-----+---------+-------+\r\n| id        | char(36) | NO   | PRI | NULL    |       |\r\n| sentences | json     | NO   |     | NULL    |       |\r\n+-----------+----------+------+-----+---------+-------+\r\n2 rows in set (0.00 sec)\r\nbased on the input received, I build a json using json_encode method in php, which I alredy validated on jsonlint and it is of course valid.\r\n\r\nexample json:\r\n\r\n{\r\n    \"opening\": \"[\\\"John arrived at Sally\'s house to pick her up.\\\",\\\"John and Sally were going to a fancy restaurant that evening for a dinner.\\\",\\\"John was little nervous because he was going to ask Sally to marry him.\\\"]\",\r\n    \"first_part\": \"[\\\"aa\\\",\\\"bb\\\"]\",\r\n    \"first_mid\": \"[\\\"Waiter shows John and Sally to their table.\\\"]\",\r\n    \"mid_part\": \"[\\\"cc\\\",\\\"dd\\\"]\",\r\n    \"mid_late\": \"[\\\"John asks Sally, \\\\\\\"Will you marry me?\\\\\\\"\\\"]\",\r\n    \"last_part\": \"[\\\"ee\\\",\\\"ff\\\",\\\"gg\\\"]\"\r\n}\r\nI use following code to insert into mysql table using mysqli\r\n\r\n$opening = array(\"John arrived at Sally\'s house to pick her up.\", \"John and Sally were going to a fancy restaurant that evening for a dinner.\", \"John was little nervous because he was going to ask Sally to marry him.\");\r\n$mid_early = array(\"Waiter shows John and Sally to their table.\");\r\n$mid_late = array(\'John asks Sally, \"Will you marry me?\"\');\r\n$json_data->opening = json_encode($opening);\r\n$json_data->first_part = json_encode($jSentence_1);\r\n$json_data->first_mid = json_encode($mid_early);\r\n$json_data->mid_part = json_encode($jSentence_2);\r\n$json_data->mid_late = json_encode($mid_late);\r\n$json_data->last_part = json_encode($jSentence_3);\r\n\r\n$data = json_encode($json_data);\r\necho($data);\r\n\r\n\r\n$sql = \"INSERT INTO turkers_data (id, sentences)\r\nVALUES ($id, $data)\";\r\n\r\nif ($conn->query($sql) === TRUE) {\r\n    echo \"New record created successfully\";\r\n} else {\r\n    echo \"Error: \" . $sql . \"<br>\" . $conn->error;\r\n}\r\n\r\n$conn->close();\r\nbut it does not work, i get the error:\r\n\r\nYou have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\"opening\":\"[\\\"John arrived at Sally\'s house to pick her up.\\\",\\\"John and Sally w\' at line 2\r\nI do not know what is wrong. I could not find much information on how to do this, I read that it is not recommended to have json data dumped as it is into mysql table, but in my case i am unsure of how many sentences are going to there. Also, I believe this serves the purpose for the time being, I plan to just get that JSON from mysql back and process the data in python.\r\n\r\nAlso pardon me for using json, JSON, MySQL, mysql, I do not know the standard yet.'),
(19, 'How to return correct model after complex joins on a relationship in Laravel\r\n\r\n', 'Given the database & model structure:\r\n\r\nA suburb belongs to many custom areas\r\n\r\nA custom belongs to many suburbs\r\n\r\nA public holiday belongs to a custom area\r\n\r\nsuburbs: - id - name\r\n\r\ncustom_areas - id - name\r\n\r\ncustom_area_suburbs - custom_area_id - suburb_id\r\n\r\npublic_holidays - id - date - custom_area_id\r\n\r\nGiven that I have a $suburb, I\'m trying to get a collection of all of it\'s public holidays.\r\n\r\nThe follow returns the correct data however it returns a collection of custom areas with public holiday data, I\'m trying to return just a collection of public holidays.\r\n\r\nHere\'s the code that almost works:\r\n\r\n$suburb->customAreas()\r\n            ->join(\'public_holidays\', \'custom_areas.id\',\'=\',\'public_holidays.custom_area_id\')\r\n            ->select(\'custom_areas.*\',\'public_holidays.*\')\r\n            ->get();\r\n// Returns a collection of \"CustomArea\"\'s, but with the public holiday data, it should just be a collection of PublicHolidays');



-- --------------------------------------------------------

--
-- Table structure for table `question_likes`
--

CREATE TABLE `question_likes` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likes` int(10) UNSIGNED DEFAULT '0',
  `dislikes` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_likes`
--

INSERT INTO `question_likes` (`id`, `question_id`, `user_id`, `likes`, `dislikes`) VALUES
(1, 1, 2156, 1, 1),
(2, 1, 2157, 1, 1),
(3, 5, 2160, NULL, 1),
(4, 5, 2161, NULL, 1),
(41, 1, 2159, 0, 1),
(43, 2, 2159, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verification_code` varchar(40) NOT NULL DEFAULT '0ad3145a8bb259bce36fe1f3b830d250'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `verification_code`) VALUES
(2156, 'John Doe', 'johndoe@example.com', '$2y$10$GtmjNUJp9tzQEgrmDfGGEu11R2XXg3pxwD.BKw8B740iBSKDyhlsa', '0ad3145a8bb259bce36fe1f3b830d250'),
(2157, 'Eddo Brandez', 'eddobrandez@example.com', '$2y$10$GtmjNUJp9tzQEgrmDfGGEu11R2XXg3pxwD.BKw8B740iBSKDyhlsa', '0ad3145a8bb259bce36fe1f3b830d250'),
(2158, 'Ali Khan', 'alikhan@example.com', '$2y$10$GtmjNUJp9tzQEgrmDfGGEu11R2XXg3pxwD.BKw8B740iBSKDyhlsa', '0ad3145a8bb259bce36fe1f3b830d250'),
(2159, 'Sayed Rashid Ali', 'sayedrashidhussain786@gmail.com', '$2y$10$d29R5re0YK8VjGqXJv1J0OKEYUV2eeBJny4z..JAWJOXiyjdAQRPG', '16e2ef8930cad13e991848303ed797fd'),
(2160, 'Amir Sheikh', 'amirsheikh@example.com', '$2y$10$GtmjNUJp9tzQEgrmDfGGEu11R2XXg3pxwD.BKw8B740iBSKDyhlsa', '0ad3145a8bb259bce36fe1f3b830d250'),
(2161, 'Assad Ullah Ch', 'assadd@example.com', '$2y$10$GtmjNUJp9tzQEgrmDfGGEu11R2XXg3pxwD.BKw8B740iBSKDyhlsa', '0ad3145a8bb259bce36fe1f3b830d250'),
(2164, 'Mohammad Ali', 'mali@example.com', '123', 'cae9c0d53936b3f6fd4ba82e970ab5e2'),
(2169, 'Justin Bieber', 'justin@gmail.com', '$2y$10$l1iuukkZfTjBzKWy19Ee1eDLTiLJKH5lFD/q7UepOGmyj2Q1IyW.G', 'afa13dc4aaf2a6a78744a719d94239c4');

--
-- Indexes for dumped tables
--


--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `question_likes`
--
ALTER TABLE `question_likes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--



--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;


--
-- AUTO_INCREMENT for table `question_likes`
--
ALTER TABLE `question_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
