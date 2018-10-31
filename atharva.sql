-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2018 at 09:03 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atharva`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `c_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sub` varchar(1000) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `name`, `email`, `sub`, `msg`) VALUES
(1, 'sonu ', 'xyz@gmail.com', 'nbm ,.', 'jhknm'),
(2, 'Shubham', 'shubhambaranwal83@gmail.com', 'query', 'checking'),
(3, 'sonu ', 'xyz@gmail.com', 'query', 'mnjkn'),
(4, 'sonu ', 'xyz@gmail.com', 'nbm ,.', 'qhebjbd'),
(5, 'Shubham', 'shubhambaranwal83@gmail.com', 'checking', 'this mail is to check the query function');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` varchar(2000) DEFAULT NULL,
  `rar` varchar(1000) NOT NULL,
  `venue` varchar(50) DEFAULT NULL,
  `about` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `name`, `details`, `rar`, `venue`, `about`) VALUES
(1, 'Quantum Quarks', 'The event will have only three rounds -<br>In the First round, the participants will be given basic problems on the Cryptography and some puzzles based on algorithms.<br>\r\nIn the second round, the participants will be provided an router with a LAN cable and a Laptop. They simply have to set up a password protected WI-fi using that router as a repeater for our College Wi-Fi which should have internet access.<br>\r\nIn the third round, Participants will be connected over the same network as the target PC and they have to spoof the college website on the Target PC..\r\n', '<h4>Pen is mightier than the PC:</h4> The first round will be pen and paper and the participants will have to solve the competitive questions on cryptography and algorithms. Those participants who solves the maximum problems in the given time will be selected for the next round.			<h6>TIME:- 25-30 Mins</h6> <br><br> <h4>NetworKING:</h4><br> The participants have to extend the signal of our College Wi-fi and make it Password protected using a Router and a Laptop. The Wi-Fi network formed by the router should have proper internet access. Students have to configure the router in such a way that it takes the internet access from the Laptop(which will be connected to our College Wi-Fi) through LAN and further extend it as a password-protected Wi-Fi. 						<h6>TIME:- 45 Mins</h6> <br><br> <h4>DNS Spoofing:</h4> The Target and the Participants PC\'s will be connected over the same network. The participants have to spoof the DNS of target PC. They can also Access the Target PC if they want to a', 'Coming Soon', 'Quantum Quarks is a technical competition fully based on the field of IT. It is mainly focussed on the problem-solving and the basic Knowledge about Networking and IT which will test the Learning, Grasping and Implementation Skills of the participants rather than their Programming skills. '),
(2, 'Code Relay', '\r\nThe event will consist of two rounds:<br><br>\r\n<h4>Round 1:</h4> Quiztopia - This round consists of on the spot online quiz. The quiz will consist of basic coding related questions.<br><br>\r\n<h4>Round 2:</h4> Pass the code - This round will be a coding contest. The teams with maximum marks from round 1 will be selected for 2nd round. The selected teams will be given a problem statement and each team will have 3 minutes to discuss the problem. After that, one member from each team will start to code. After every 5 minutes, the team members will switch places. This will continue for 30 minutes so that each team member gets 3 chances. During this whole time, the team members won\'t be allowed to discuss the problem. After 30 mintes, the teams will be given 5 minutes to code together and submit the code. The team with best submission will be declared winner.\r\n<br><br>\r\n\r\n\r\n', '\r\n<h4>Rules:</h4>\r\n<br>\r\n1) Each team will constitute of two members.\r\n<br>\r\n2) Teams are allowed to bring their own laptop.\r\n<br>\r\n3) Use of any unfair means/violating rules would lead to direct disqualification.\r\n<br><br>\r\n<h4>Judging criteria:</h4>\r\nTeams with maximum score in first round will be selected in second round.\r\nTeam with correct code submission giving specified output and submitted in minimum time will be declared winner.', 'Coming Soon', 'Coding event where the team members will have to code alternatively for some time period, without having discussion. The key is going to be the coding chemistry of the team, how well one can read and continue the other person\'s code.'),
(3, 'Game Of Codes', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon'),
(4, 'Infotech Broach', '<h4>Logical Expert-</h4>This round will have  participants  they will be given the question to solve regarding the Quantitative aptitude and logical reasoning. <br><br>\r\n \r\n<h4>Blind Coding-</h4>In this round we will give participants coding problem  to solve using their programming  knowledge .During the whole process of the coding the coding window will not be shown to the participant .The Participant whose code will get compile will be selected and other wise the minimum error code will be given the preference.<br> \r\n <br>\r\n<h4>Virtual Equations-</h4>In this round we will give a mathematical equation to the participant to solve in a given period time and the participant have to present the solution of the equation with the help of the computer graphics knowledge by plotting the pixels.Before this round we will teach the students that how to plot the pixels on the Computer screen. \r\n', 'Coming Soon', 'Coming Soon', 'Do you have creativity? <br><br>\r\nDo you  like coding? <br><br>\r\nIf you have these capabilities then creative coders is the best event for you. This event provides you big platform to show your creativity and logical reasoning capability. \r\n'),
(5, 'Watch the tower', '<h4>Event procedure-</h4> In this event participants have to create a tower( Eifel tower) like structure with the help of straws.<br><br>\r\nIt will consist of two rounds. <br><br>\r\n<h4>Round 1</h4>  <h6> know-em-all</h6> round based on aptitude questions and general knowledge questions.<br><br>\r\n<h4>Round 2</h4> <h6>skyscraper</h6>   This will be final round. In this round participants have to make the tower with help of straws.<br>\r\n', '<h4>Rules</h4>The binding material is tape and glue. <br> It is a time based event team and teams completing first will surely get advantage. <br> The height/dimension of the tower will be decided by teachers. Certain other factors like stability of structure on application of some fixed load adds up to judgement criteria and design also plays an important role. <br><br> <h4>Judgement criteria:</h4> time , design , stability and the team which achieve maximum height', 'Coming Soon', 'Coming Soon'),
(6, 'Dream House', 'It will consist of two rounds:\r\n<h4>Round 1-</h4> <h6>Scrabble</h6> Participants have to build up words from bunch of words.<br><br>\r\n<h4>Round 2-</h4><h6> building stratigies</h6> Participants have to show their skills designing the house plan. \r\n', 'Dimensions will be provided on spot.<br> <h4>Judgment criteria:</h4> 1.  proper dimensions must be observed<br> 2.  design ( best designs will be adjudged)<br> 3.  proper utilisation of space <br> 4.  clarity of plan<br> 5.  economical design<br>', 'Coming Soon', 'Participants have to make a house plan or map showing various rooms,walls, doors etc. with clay. <br>\r\nParticipants have to create a 3D structure.<br>\r\n The design should be proper and time will be observed strictly. The task will be to design a 2bhk or 3bhk apartment etc. \r\n'),
(7, ' Heck of Deck', 'It will have two rounds viz.\r\n<h4>Round 1-</h4> <h6>tech wizard</h6> It will comprise of technical quiz based on engineering instruments, laws etc.\r\n<h4>Round 2-</h4><h6> Down to earth</h6> In this round participants have to make the above stated floor in the provided time interval.\r\n', 'The dimensions of the floor will be provided on the spot<br> <h4>Judgement criteria: </h4> Judges will check the permeability and stability of the floor made by the participants.<br> 1 the dimensions should be accurate<br> 2 the floor should be more permeable<br> 3 the floor should be more stable<br>', 'Coming Soon', 'The event is based on floor making. The floor is designed from the waste materials like polythene bags, rubber material, tyres, plastic cans etc. '),
(8, 'Tech-o-Parley', ' It will have various rounds. Participants will be divided in a group of 6 each. 3 will speak against and other 3 in favour of the topic.<br>\r\n The topics will be disclosed on the spot.<br>\r\nThere will be a JAM round first . A member from each team will have to speak for 1 minute on their respective topic.\r\n', '<h4>Judgment criteria includes :</h4><br> 1 initiative<br>  2 content<br>  3 team spirit <br> 4 body language <br> 5 verbal skills.<br> 6 closure/ending', 'Coming Soon', 'The debate will be on technology, new inventions, sustainable development,cyber security etc.'),
(9, 'CAD War', '<b>Single</b> entry is allowed which means you will compete with 30 students individually.<br>\r\n\r\nThis event is of 2 Time Based Rounds: - <br>\r\n<h4>1st Round: -</h4> In this round you will be provided with a \"SIMPLE\" model that you have to draw in the software. Qualifying students will be selected by how much time they took to make a drawing in the software and it`s resemblance to the actual model.<br>\r\n<h4>2nd Round: -</h4> In this round you will be provided with a limited time period to think and draw a model of anything that will outsmarted the idea of 14 other brilliant minds and of course loved by our judges too.\r\n', '<h4>KEY POINTS: -</h4> <br> 1.	Both the round will be time based and time will be announced at the event only.<br><br> 2.	Computers will be provided to you So, before starting of each round Please, ensure that your computers are working properly and tell us before hand to ensure smooth working of the event.<br><br> 3.	Final decision will be our final one and no arguments with the judges will be tolerated.', 'Coming Soon', 'Now is the time to show your command on the software via CADWARS. If you have the ability to draw anything on the 2D software then this event purely is for you. <br>\r\nYou can register yourself, if you know how to operate CAD software and have the ability to think way ahead of at least 30 brilliant individual minds.<br>\r\n'),
(10, 'Promechaniacs', 'We have two rounds in our event.<br>\r\nFirst will be the elimination round followed by second round.<br>\r\nFirst round consist of technical basic quiz and aptitude.<br><br>\r\nSecond round consist of three sub parts that are:-  <br>*marketing<br>\r\n* manufacturing <br>\r\n* designing <br>\r\n*( choose any one from the above mentioned parts )\r\n', '<h4>Rules </h4> 1.Two participants from each team .<br> 2.Task should be completed in specific time limit .<br> 3. You can choose any one part from above mentioned second round.<br><br>   <h4>Judging criteria</h4>  Judges will be some experts in there respective departments and have a experience of NATIONAL EVENTS.', 'Coming Soon', '<p>Promechaniacs  is an event which will focus on basic mechanical aptitude which includes various fields like marketing , manufacturing and designing.</p><br>\r\n<h4>BENEFITS:-</h4> Students will get  benefit from participating in the promechaniacs . Students from various branches will get opportunity to gain practical experience and knowledge. Applying their technical knowledge to make it practical as well as non practical. \r\n'),
(11, 'Timberley', 'Entries of the students must be in the group of 2 .i.e. Team Registration is preferred over single entry.  <br><br>\r\n Event is divided into two ROUNDS: - <br>\r\n<h4>1st Round: - </h4>Each team will be provided with the packet of clay and they have to make a model out of it, but keep in mind that the model should be catchy! Enough that it will get selected for the next round out of 30 teams i.e. 60 individual minds.<br>\r\n<h4>2nd Round: -</h4> The Qualified teams from round one have to manufacture its model i.e. (exact prototype of the clay model they have design in previous round) from WOOD by using the tools given in the Carpentry Workshop. The best prototype wins in regard of its finishing, attractiveness, and resemblance to the clay model from 1st round.\r\n', 'Key Points for the Participants: -<br>  1. Models made by clay should not be resemble with any other team models in the event. <br>  2. Prototype model made by WOOD should be within the limit of 30cm X 30cm of box i.e. the model    should be able to place within the boundary of 30 x 30cm.<br> 3. If you participated in this event, then we are believing that you know how to work with the tools providing in the Carpentry Workshop and everyone is mature enough to handle them, so that the tools can be used in the event without any causalities.<br>  4. Both the round has its time limit which will be announced at the event only.<br> 5. If there is any causalities, team will be disqualified for the safety of students and first aid will be provided to them. <br> 6. Final decision will be the final, no argument will be tolerated.<br> 7. All the rules and the warnings will again be announced at the event. ', 'Coming Soon', 'If you want to show off your skills and, if you believe that you got some creative mind with excellent practical knowledge, then THE TIMBERLY definitely is for you. '),
(12, 'Huntmania', ' Event is divided into two ROUNDS- <br>\r\n<h4> 1st Round: -</h4> In this round participants shall perform solo.  In this round participant\'s typing speed and accuracy shall be checked. <br>\r\nDuration :- 15-20 minutes.<br><br> \r\n*Shortlisted participants will be teamed as a team of 2 for second round. *<br><br>\r\n<h4>2nd Round: -</h4> In this round participants shall be given puzzle which may constitute various experiments,  which can be easily performed by mechanical engineer. <br>\r\nThe team performing the experiment in shortest time will be declared as winner. <br>\r\nDuration :- 45 min<br>\r\n', 'Key Points forqe Participants: -<br> 1. If you participated in this event, then we are believing that you know how to work with the apparatus  and everyone is mature enough to handle them, so that the apparatus can be used in the event without any causalities. <br> 2. Any participant caught using unfair means shall be straight away disqualified.<br>  Winner team will get individual certificate and trophies.', 'Coming Soon', 'If you want to show your skills and, if you believe that you got some intellectual mind with excellent practical knowledge, then the HUNTMANIA is definitely for you. '),
(13, 'Robo Ignitor', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon'),
(14, 'Chakravyuh', '<h4>Retrace the Stuff (Round 1) - </h4>Solve some jumble things, move to find some hidden stuff by solving some riddle in a limited time period.<br> <br>\r\n<h4>Power Play (Round 2) -</h4> Use practical knowledge, make use of your creativity to power up the circuit and glow the lights.<br>\r\nThis will be a type of chakravyuh created by us, Be Arjun and solve this Chakravyuh, and become winner of this event.<br><br>\r\n<h6>NOTE: - </h6>The required stuff for both rounds will be provided to you by us.\r\n', 'Key Features of this event: -<br> 1.	The whole event will be time base.<br> 2.	Only those who cleared the 1st round will move to final round.<br> 3.	There will be single entry for the event as well as in team also. But entry fees will be given by each participant.<br> 4.	As the event rounds will performed by participants in a team, so you can form your team by yourself. If someone who will not have partner to perform, will be arranged with some other person having same issue.<br> 5.	It is a power pack event and based to check your strength, creativity and time management skills.<br> 6.	The Brainstorming is the main factor to win this event. ', 'Coming Soon', 'If you are smart enough to solve the muddle with your engineering skills and fun then this event is only for you. Use your brain to do some smart work on words, find some hidden things somewhere. Use practical and engineering skills in building up some power boost. If u like challenges and want to overcome the huddles in between the path to complete the challenges, then this event is must, in which you have to participate.'),
(15, 'Code Anthe', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon'),
(16, 'Electroreo', 'Coming Soon', 'Coming Soon', 'Coming Soon', 'Coming Soon'),
(17, 'WordStrock', ' It consists of 2 rounds-<br>\r\n <h4>Round 1-</h4> <br>\r\n Words will be spoken and participants have to write their spelling in a particular time duration. \r\n<h4>Round 2- </h4><br>\r\nPictures will be shown on screen and you have to write a suitable title for the picture understanding the theme. \r\n', 'For the round 1, 40 different words will be spoken on the spot.   <br> Individual participant will have to write it individually.   <br> Only 25 participants will be selected for Round 2.   <br> For the round 2, the time provided will be 45 seconds to think and write the suitable title for each pictures. <br> 10 different pictures will be shown.   <br> Top 3 will be awarded. ', 'Coming Soon', '<h4>WORDSTROCK </h4>is just like a vocabulary tester. \r\nYou and your vocab power havd to show their efficiency with the support of your imaginations. Explore the spell wizard inside you and try to win the phase of lining your imaginations. \r\n'),
(18, 'Anchor Hunt', 'The event contains of two rounds- \r\n<h4>Round 1- </h4>\r\nEvery participant will be provided some exciting topics on the spot. \r\n <br>\r\nYou have to  come front and speak for a fixed duration \r\n<h4>Round 2-  </h4>\r\nParticipants qualified for the second round will be a NEWS ANCHOR for the session. Various predefined topics will be there. \r\n <br>\r\nThey have to choose a topic from our collection of unseen subject matters on the spot. \r\n <br>\r\nThey have to host the show as a news achor do. \r\n', 'For the round 1,every participant will be provided time limitation of 1.5 min for speaking.   <br> Only 25 participants will be selected for Round 2.   <br> For the round 2, the time provided will be 3 minutes.   <br> Top 3 will be awarded.   <br> No offensive statement or activity should be done.   <br> None of the religion, or personal values should be harmed during expressing. ', 'Coming Soon', '<h4>ANCHOR HUNT</h4> is a platform for the elegence towards the fearless speaker inside you. One who is always ready, flexible and dynamic. Explore yourself to find the hidden achor and we provide you the best surrounding. Express and feel like anchor. \r\n \r\n'),
(19, 'Extempore', '<h4>Rules:- </h4><br>\r\n1.	It is a single entry event.<br><br>\r\n2.	Participants will be given minimum time limit of 5 min and maximum time limit of 10 min. <br><br><br>', '\r\n<h4>Judgement Criteria:-</h4><br>\r\n1.	This event will judge the practical knowledge, business strategies, communication skills and confidence of the participant. <br><br>\r\n2.	It will also judge the relevance of the points presented by the participants according to the topic chosen by him.\r\n', 'Coming Soon', 'Extempore means done or said without any prior preparation of the topics. It means that the participants will be given the topics on-spot and will have to present their views about the topic chosen by them from the available topics. '),
(20, 'Business Inception', '<h6>It consists of the following rounds:-</h6><br><br>\r\n<h4>Round 1(Quizzanaire) -</h4>\r\nThis will be an audio-visual round that will give the participants the challenge to identify the logo, tagline and other basic general business related aspects of various companies.<br><br>\r\n\r\n<h4>Round 2(Ideo-preneurship) -</h4>\r\nThis round will give the participants a chance to share their various business setup plans for their future and the one with the most creative idea will be preferred.\r\n', '<h4>Judgement criteria:-</h4><br>\r\n1.	It is a single entry event.<br><br>\r\n2.	The participants will be judged on the basis of their knowledge of the real world i.e. important personalities, information of well-known firms in the first round.\r\n3.	The second round judges the participants according to the viability, feasibility, creativity and the presentation of their idea to the judges.\r\n', 'Coming Soon', 'Inception is referred to as the beginning date of something or the data that something has been started. Business inception is designed on the concept of starting of a new era of business. It tests the applicability of knowledge of the participants in the real world.');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `p_id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `reid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`p_id`, `eventid`, `reid`) VALUES
(8, 9, 'zPJE');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `re_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `institute` varchar(1000) NOT NULL,
  `ath_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`re_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `re_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
