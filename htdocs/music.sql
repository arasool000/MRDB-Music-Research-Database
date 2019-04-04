-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 09:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `Album_id` int(200) NOT NULL,
  `album_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`Album_id`, `album_name`) VALUES
(1, 'David Guetta Hits'),
(2, 'Shakira Hits'),
(3, 'Thrill'),
(4, 'a hundred songs'),
(5, 'Night Visions'),
(6, 'Ludwig van Beethoven Songs'),
(7, 'Taylor swift hits'),
(8, 'Talk That Talk'),
(9, 'uptown funk'),
(10, ' Motion (2014)'),
(11, 'Get Rich or Die Tryin\''),
(12, 'Enimen hits'),
(13, 'bob\'s album'),
(15, 'qasw'),
(21, 'stuffy'),
(22, 'he ded'),
(23, 'Best Hits'),
(24, 'worst songs ever'),
(25, 'c'),
(26, 'c'),
(27, 'c'),
(28, 'c'),
(29, 'r'),
(30, 'c'),
(31, 'c'),
(32, 'c'),
(33, 'f'),
(34, 'i'),
(35, 'c'),
(36, 'c'),
(37, 'c'),
(38, 'c'),
(39, 'c'),
(40, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(200) NOT NULL,
  `artist_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `artist_name`) VALUES
(1, 'David Guetta'),
(2, 'Shakira'),
(3, 'Taylor Swift'),
(4, 'Linkin Park'),
(5, 'Backstreet Boys'),
(6, ' B.B. King'),
(7, 'Bob Dylan'),
(8, ' Imagine Dragons'),
(9, 'Ludwig van Beethoven'),
(10, 'Calvin Harris'),
(11, 'Bruno Mars'),
(12, '50 Cent'),
(13, 'Eminem'),
(14, 'bob'),
(17, 'nas'),
(25, 'biggie'),
(26, 'biggie'),
(27, 'tupac'),
(28, 'Queen'),
(29, 'sinatra'),
(30, 'b'),
(31, 'b'),
(32, 'b'),
(33, 'x'),
(34, 'e'),
(35, 'b'),
(36, 'b'),
(37, 'x'),
(38, 's'),
(39, 'o'),
(40, 'b'),
(41, 'b'),
(42, 'b'),
(43, 'b'),
(44, 'b'),
(45, 'b');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comments`) VALUES
(37, 'green day', 'this is a great website!'),
(38, 'elvis', 'this is a great website!'),
(39, 'micahel jackson', 'this is a great website!'),
(40, 'frank sinatra', 'this is a great website!'),
(41, 'travis scott', 'this is a great website!'),
(42, 'lady gaga', 'this is a great website!'),
(43, 'queen', 'this is a great website!'),
(44, 'joh legend', 'this is a great website!'),
(45, '', 'john');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(200) NOT NULL,
  `genre_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Pop'),
(2, 'Electronic'),
(3, 'Classical'),
(4, 'Rock'),
(5, 'Hip'),
(6, 'Jazz'),
(7, 'Blues'),
(8, 'Hip Hop'),
(9, 'Rap'),
(10, 'R&B'),
(11, 'Alternative music'),
(12, 'Reggoe');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(200) NOT NULL,
  `track_no` int(200) NOT NULL,
  `track_name` varchar(1000) NOT NULL,
  `lyrics` text NOT NULL,
  `album_id` int(200) NOT NULL,
  `year` year(4) NOT NULL,
  `link` varchar(250) NOT NULL,
  `genre_id` int(250) NOT NULL,
  `count` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `track_no`, `track_name`, `lyrics`, `album_id`, `year`, `link`, `genre_id`, `count`) VALUES
(1, 1, 'Play Hard', 'Hey, said a hustler’s work is never through\r\nWe makin’ it ‘cause we make it move\r\nThe only thing we know how to do\r\nSaid it’s the only thing we know how to do\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nCome on baby and drop it\r\nScrub that floor and just mop it\r\nShow these gangsters how you pop lock it\r\nDon’t care what you got in your pocket\r\nI peep the way that you rockin’\r\nFlip that thang thang don’t stop it\r\nWanna I just bang bang and pop it\r\nWhile the club crowded just watch you (work it out)\r\n\r\nGot a gang of cash and it’s goin\' all on the bar (now work it out)\r\nAnd it’s going fast \'cause I feel like a superstar (now work it out)\r\nAnd you may not have it, I might just broke the law (now work it out)\r\nIt’s your turn to grab it, now make this whole thing yours (now work it out)\r\n\r\nHey, said a hustler’s work is never through\r\nWe makin’ it ‘cause we make it move\r\nThe only thing we know how to do\r\nSaid it’s the only thing we know how to do\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nSome pressure that we can push\r\nLadies can\'t get enough\r\nGot my fitness, I\'m looking buff\r\nAnd all my people with me, I trust\r\nHoldin\' down for my city\r\nIf they askin\' you, I\'m not guilty\r\nOnly thing that I\'m guilty of is making you rock with me (work it out)\r\n\r\nGot a gang of cash and it’s goin\' all on the bar (now work it out)\r\nAnd it’s going fast \'cause I feel like a superstar (now work it out)\r\nAnd you may not have it, I might just broke the law (now work it out)\r\nIt’s your turn to grab it, now make this whole thing yours (now work it out)\r\n\r\nHey, said us hustler’s work is never through\r\nWe makin’ it ‘cause we make it move\r\nThe only thing we know how to do\r\nSaid it’s the only thing we know how to do\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nHey, said us hustler’s work is never through\r\nWe makin’ it ‘cause we make it move\r\nThe only thing we know how to do\r\nSaid it’s the only thing we know how to do\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n\r\nWork hard, play hard\r\nWork hard, play hard\r\nWe work hard, play hard\r\nKeep partyin’ like it’s your job\r\n', 1, 2011, 'play hard.mp3', 2, 57),
(1, 2, 'Titanium', 'You shout it out\r\nBut I can\'t hear a word you say\r\nI\'m talking loud not saying much\r\nI\'m criticized but all your bullets ricochet\r\nYou shoot me down, but I get up\r\n\r\nI\'m bulletproof nothing to lose\r\nFire away, fire away\r\nRicochet, you take your aim\r\nFire away, fire away\r\nYou shoot me down but I won\'t fall, I am titanium\r\nYou shoot me down but I won\'t fall\r\nI am titanium\r\n\r\nCut me down\r\nBut it\'s you who has further to fall\r\nGhost town, haunted love\r\nRaise your voice, sticks and stones may break my bones\r\nI\'m talking loud not saying much\r\n\r\nI\'m bulletproof nothing to lose\r\nFire away, fire away\r\nRicochet, you take your aim\r\nFire away, fire away\r\nYou shoot me down but I won\'t fall\r\nI am titanium\r\nYou shoot me down but I won\'t fall\r\nI am titanium, I am titanium, I am titanium\r\n\r\nStone-hard, machine gun\r\nFiring at the ones who run\r\nStone-hard, those bulletproof guns\r\n\r\nYou shoot me down but I won\'t fall, I am titanium\r\nYou shoot me down but I won\'t fall, I am titanium\r\nYou shoot me down but I won\'t fall, I am titanium\r\nYou shoot me down but I won\'t fall, I am titanium\r\nI am titanium\r\n', 1, 2011, 'David Guetta-Titanium.mp3', 2, 68),
(2, 3, 'She Wolf', 'S-O-S she is in disguise\r\nS-O-S she is in disguise\r\nThere\'s a she wolf in disguise,\r\nComing out, coming out, coming out\r\n\r\nA domesticated girl that\'s all you ask of me,\r\nDarling it is no joke, this is lycanthropy\r\nMoon\'s awake now, with eyes wide open\r\nMy body is craving, so feed the hungry\r\n\r\nI\'ve been devoting myself to you\r\nMonday to Monday\r\nAnd Friday to Friday\r\nNot getting enough retribution\r\nOr decent incentives to keep me at it\r\nStarting to feel just a little abused\r\nLike a coffee machine in an office (ahoo)\r\nSo I\'m gonna go somewhere closer\r\nTo get me a lover and tell you about it\r\n\r\nThere\'s a she wolf in the closet,\r\nOpen up and set her free (ahoo)\r\nThere\'s a she wolf in the closet,\r\nLet it out so it can breath\r\n\r\nSitting across the bar, staring right at her prey,\r\nIt\'s going well so far, she\'s gonna get her way\r\nNocturnal creatures are not so prudent,\r\nThe moon\'s my teacher, and I\'m her student\r\n\r\nTo locate the single man\r\nI\'ve got on me a special radar,\r\nAnd the fire department\'s hot line\r\nin case I get in trouble later\r\nNot looking for cute little divas\r\nOr rich city guys that just want to enjoy\r\nI\'m having a very good time\r\nand behave very bad in the arms of a boy\r\n\r\nThere\'s a she wolf in the closet\r\nOpen up and set her free (ahoo)\r\nThere\'s a she wolf in the closet\r\nLet it out so it can breath\r\n\r\nS-O-S she is in disguise\r\nS-O-S she is in disguise\r\nThere\'s a she wolf in disguise\r\nComing out, coming out, coming out\r\n\r\nS-O-S she is in disguise\r\nS-O-S she is in disguise\r\nThere\'s a she wolf in disguise\r\nComing out, coming out, coming out\r\n\r\nThere\'s a she wolf in the closet\r\nLet it out so it can breath', 2, 2009, 'The Chainsmokers - Closer.mp3', 1, 49),
(2, 4, 'Hips Don\'t Lie', 'Ladies up in here tonight\r\nNo fighting\r\nWe got the refugees up in here (no fighting)\r\nNo fighting\r\n\r\nShakira, Shakira\r\n\r\nI never really knew that she could dance like this\r\nShe makes a man wants to speak Spanish\r\nComo se llama (si)\r\nBonita (si)\r\nMi casa (Shakira Shakira), su casa\r\n\r\nOh baby when you talk like that\r\nYou make a woman go mad\r\nSo be wise (si) and keep on (si)\r\nReading the signs of my body (uno, dos, tres, cuatro)\r\n\r\nAnd I\'m on tonight you know my hips don\'t lie\r\nAnd I\'m starting to feel it\'s right\r\nAll the attraction, the tension\r\nDon\'t you see baby, this is perfection\r\n\r\nHey Girl, I can see your body moving\r\nAnd it\'s driving me crazy\r\nAnd I didn\'t have the slightest idea\r\nUntil I saw you dancing\r\n\r\nAnd when you walk up on the dance floor\r\nNobody cannot ignore\r\nThe way you move your body, girl (just move)\r\nAnd everything so unexpected, the way you right and left it\r\nSo you can keep on shaking it\r\n\r\nI never really knew that she could dance like this\r\nShe makes a man wants to speak Spanish\r\nComo se llama (si)\r\nBonita (si)\r\nMi casa (Shakira Shakira), su casa\r\n\r\nOh baby when you talk like that\r\nYou make a woman go mad\r\nSo be wise (si) and keep on (si)\r\nReading the signs of my body (no fighting)\r\n\r\nAnd I\'m on tonight you know my hips don\'t lie (no fighting)\r\nAnd I am starting to feel you boy\r\nCome on lets go, real slow\r\nDon\'t you see baby asi es perfecto\r\n\r\nI know I am on tonight\r\nMy hips don\'t lie and I am starting to feel it\'s right\r\nAll the attraction, the tension\r\nDon\'t you see baby, this is perfection (Shakira, Shakira)\r\n\r\nOh boy, I can see your body moving\r\nHalf animal, half man\r\nI don\'t, don\'t really know what I\'m doing\r\nBut you seem to have a plan\r\nMy will and self restraint\r\nHave come to fail now, fail now\r\nSee, I am doing what I can, but I can\'t so you know\r\nThat\'s a bit too hard to explain\r\n\r\nBaila en la calle de noche\r\nBaila en la calle de día\r\n\r\nBaila en la calle de noche\r\nBaila en la calle de día\r\n\r\nI never really knew that she could dance like this\r\nShe makes a man wants to speak Spanish\r\nComo se llama (si)\r\nBonita (si)\r\nMi casa (Shakira Shakira), su casa\r\n\r\nOh baby when you talk like that\r\nYou know you got me hypnotized\r\nSo be wise and keep on\r\nReading the signs of my body\r\n\r\nSeñorita,\r\nFeel the conga, let me see you move like you come from Colombia\r\n\r\nMira en Barranquilla se baila así, say it!\r\nEn Barranquilla se baila así\r\n\r\nYeah, she\'s so sexy every man\'s fantasy a refugee\r\nLike me back with the Fugees from a 3rd world country\r\nI go back like when Pac carried crates\r\nFor Humpty Humpty we need a whole club dizzy\r\nWhy the CIA wanna watch us? Colombians and Haitians\r\nI ain\'t guilty, it\'s a musical transaction\r\nNo more do we snatch ropes\r\nRefugees run the seas \'cause we own our own boats (no fighting)\r\n\r\nI\'m on tonight\r\nMy hips don\'t lie and I am starting to feel you boy\r\nCome on lets go, real slow\r\nBaby like this is perfecto (no fighting)\r\n\r\nOh, you know I am on tonight\r\nMy hips don\'t lie and I am starting to feel it\'s right\r\nThe attraction\r\nThe tension\r\nBaby, like this is perfection\r\n\r\nNo fighting\r\nNo fighting', 2, 2005, 'The Chainsmokers - Closer.mp3', 1, 39),
(1, 5, 'Without you', 'I can\'t win, I can\'t reign\r\nI will never win this game without you, without you\r\nI am lost, I am vain,\r\nI will never be the same without you, without you\r\n\r\nI won\'t run, I won\'t fly\r\nI will never make it by without you, without you\r\nI can\'t rest, I can\'t fight\r\nAll I need is you and I, without you, without you\r\n\r\nOh oh oh\r\nYou! You! You!\r\nWithout\r\nYou! You! You!\r\nWithout you\r\n\r\nCan\'t erase, so I\'ll take blame\r\nBut I can\'t accept that we\'re estranged without you, without you\r\nI can\'t quit now, this can\'t be right\r\nI can\'t take one more sleepless night without you, without you\r\nI won\'t soar, I won\'t climb\r\nIf you\'re not here, I\'m paralyzed without you, without you\r\nI can\'t look, I\'m so blind\r\nI lost my heart, I lost my mind without you, without you\r\n\r\nOh oh oh\r\nYou! You! You!\r\nWithout\r\nYou! You! You!\r\nWithout you\r\n\r\nI am lost, I am vain,\r\nI will never be the same without you, without you\r\nWithout you', 1, 2011, 'David Guetta-Without You.mp3', 2, 58),
(1, 6, 'David Guetta-I Junt Wanna F\r\n', '\r\n[Timbaland & Dev:]\r\nTake you to my house (yeah)\r\nPut you on my couch (yeah)\r\nPut this in your mouth (yeah)\r\nThen I\'m going South\r\n\r\n(Say my name)\r\nWhat\'s your name again? What\'s your name again?\r\n(Say my name)\r\nWhat\'s your name again? What\'s your name again?\r\n\r\nTake you to my room (yeah)\r\nHave you sayin\' (Oh baby, like that?)\r\nYeah, you know what to do\r\n(Say my name)\r\nWhat\'s your name again? What\'s your name again?\r\n(Say my name)\r\nWhat\'s your name again? What\'s your name again?\r\n\r\n[Dev:]\r\nBaby, I don\'t know\r\nI don\'t usually do\r\nListen to me now,\r\nBut you can have my two\r\nLips on you\r\nYeah, I know what to do\r\n\r\n[Timbaland:]\r\nBaby it don\'t matter, I been drinking, do whatever\r\n\r\nA girl, you my B girl\r\nC girl? I got this D girl\r\nNo need to spell it out, I\'ll make it easy\r\nI\'ll have you yelling out your \"ABCD\"\r\n\r\n[Dev:]\r\nI just wanna F, F, F (G)\r\nI just wanna F, F, F (H)\r\nI just wanna F, F, F (U)\r\nI just wanna F, F, F\r\n\r\nA-b-c-d F me! [x4]\r\n\r\n[Timbaland:]\r\nI\'m a alpha dog,\r\nYou\'re my alpha bitch\r\nYou know your alphabets?\r\nCome get this alpha dick\r\nMusic is my wife girl\r\nI just need a mistress\r\nKeep you in my life girl\r\nYou don\'t wanna miss this\r\n\r\n[Dev:]\r\nI\'m the L-M-N-O in your P\'s, oh\r\nYou wanna get a little piece of these, yo\r\n26 letters of pleasure with me\r\n\r\n[Timbaland:]\r\nSo, you wanna bring your friend with ya?\r\n\r\n[Dev:]\r\nWait, what you say to me?\r\n\r\nA girl, you my B girl\r\nC girl? I got this D girl\r\nNo need to spell it out, I\'ll make it easy\r\nI\'ll have you yelling out your \"ABCD\"\r\n\r\n[Dev:]\r\nI just wanna F, F, F (G)\r\nI just wanna F, F, F (H)\r\nI just wanna F, F, F (U)\r\nI just wanna F, F, F\r\n\r\nGet-get-get-get down-down\r\nGet-get-get-get down-down-down-down-down\r\nGet-get-get-get- down-down-down\r\n\r\nYou can be my student\r\nGive you schooling\r\nShow you how to make it bounce like a bad check\r\nI can be your teacher, I can teach ya\r\nHow to get straight A\'s\r\nBut you really wanna F\r\nYou can bite? Go fetch\r\nI know what\'s right, but go left\r\nLiving in the night, but we hardly dream\r\nIn the club, going Charlie Sheen\r\n\r\n[Timbaland:]\r\nA girl, you my B girl\r\nC girl? I got this D girl\r\nNo need to spell it out, I\'ll make it easy\r\nI\'ll have you yelling out your \"ABCD\"\r\n\r\n[Timbaland:]\r\nI just wanna F, F, F (G)\r\nI just wanna F, F, F (H)\r\nI just wanna F, F, F (U)\r\nI just wanna F, F, F\r\n\r\n[Bridge: Timbaland]\r\nA girl, you my B girl\r\nC girl? I got this D girl\r\nNo need to spell it out, I\'ll make it easy\r\nI\'ll have you yelling out your \"ABCD\"\r\n\r\n[Dev:]\r\nI just wanna F, F, F (G)\r\nI just wanna F, F, F (H)\r\nI just wanna F, F, F (U)\r\nI just wanna F, F, F', 1, 2011, 'David Guetta-I Junt Wanna F.mp3\r\n', 1, 50),
(1, 7, 'David Guetta-Crank It Up\r\n', '\r\nShe\'s the keys to my starter in my automatic car\r\nYeah she make me wanna go harder and she always lift the bar\r\nWhen she keep that spotlight glowing \'cause she is a superstar\r\nEverybody knows this girl when she step up in the place whether near or far\r\n\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\n\r\nShe might not be the one you see in a magazine\r\nShe might not be the one you fantasize in your dream\r\nShe\'s the only girl left in the world that can guarantee\r\nWhat you need tonight\r\n\r\nWith my Gs and we riding in a magnificent car\r\nAnd we rolling with the baddest chicks and you won\'t see a flaw\r\nBooty riding up so perfect, badder than my Audemars\r\nGonna pound it up so perfect that can get until tomorrow\r\n\r\nWatch her crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\n\r\nShe might not be the one you see in a magazine\r\nShe might not be the one you fantasize in your dream\r\nShe\'s the only girl left in the world that can guarantee\r\nWhat you need tonight\r\n\r\nWith my Gs and we riding in a magnificent car\r\nAnd we rolling with the baddest chicks and you won\'t see a flaw\r\nBooty riding up so perfect, badder than my Audemars\r\nGonna pound it up so perfect that can get until tomorrow\r\n\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\n\r\nShe\'s trying to make me fall in love again, yeah\r\nThe way she moving I can tell you she\'s almost there, yeah\r\n\r\nShe might not be the one you see in a magazine\r\nShe might not be the one you fantasize in your dream\r\nShe\'s the only girl left in the world that can guarantee\r\nWhat you need tonight\r\n\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she crank it up\r\nThe way she cranks it up\r\n', 1, 2015, 'David Guetta-Crank It Up.mp3\r\n', 2, 41),
(1, 8, 'David Guetta-Little Bad Girl', '\r\nOh yeah they tell me I\'m a bad boy\r\nAll the ladies look at me and act coy\r\nI just like to put my hands up in the air\r\nI want that girl dancing over there\r\n\r\nLook at her go on the dance floor\r\nShe\'s amazing on the dance floor\r\nWhen she moves, girl, I want more\r\nKeep it going, girl, like I got an encore\r\nYou got me sayin\'\r\nGo little bad girl, little bad girl [x3]\r\nGo little bad girl\r\nGo little bad girl\r\n\r\nOh yeah they tell me I\'m a bad boy,\r\nAll the ladies look at me and act coy\r\nI just like to put my hands up in the air\r\nI want that girl dancing over there\r\n\r\nShaking her ass from the left to the right\r\nMoving it round just the way that I like\r\nI wanna see you move like a movie on flight\r\nShe got it how I want it and I want it all night\r\n\r\nLook at her go on the dance floor\r\nShe\'s amazing on the dance floor\r\nWhen she moves, girl, I want more\r\nKeep it going, girl, like I got an encore\r\nYou got me sayin\'\r\nGo little bad girl, little bad girl [x3]\r\nGo little bad girl (let\'s go)\r\nGo little bad girl\r\n\r\nShe got my heart jumping\r\nAnd my adrenaline pumpin\' and gunnin\'\r\nLike ain\'t nobody ever seen (seen...)\r\n\'Matter of fact I\'ve seen this woman all up in my dreams\r\nWhippin\' and flippin\' and stackin\' and slappin\'\r\nI\'m attacking after she back it up and make it drop\r\nAfter I meet her I tell her David Guetta\'s on the track, baby girl, don\'t stop\r\nKeep it goin\' you never know when somebody\'s gonna throw a couple dollars\r\nGot a pocket full of hundred dollar bill\'s Ludacris mr. make-a-woman-hollar\r\nAnd every night on the floor putting on a show (show...)\r\nEverybody in the club there\'s a little something you should know\r\n\r\nLook at her go on the dance floor\r\nShe\'s amazing on the dance floor\r\nWhen she moves, girl, I want more\r\nKeep it going, girl, like I got an encore\r\nYou got me sayin\'\r\nGo little bad girl, little bad girl [x3]\r\nGo little bad girl\r\nGo little bad girl\r\nGo little bad girl, little bad girl [x3]\r\nGo little bad girl\r\nGo little bad girl', 1, 2011, 'David Guetta-Little Bad Girl.mp3\r\n', 13, 34),
(1, 9, 'No Problem - Shakira', 'Ladies And Gentlmen, Boys And Girls\r\nPlease Report To The Dance Floor\r\nAnd Yes All Girls Bagging To Rombo\r\nDance Dance Get It Down\r\nShake It, Get Some Moves My Around\r\nDj, Play My Favorite Sound\r\nYou’re Gonna Run, It’s Robio, You All Down\r\nDance Dance Get It Down\r\nShake It, Get Some Moves My Around\r\nDj, Play My Favorite Sound\r\nYou’re Gonna Run, It’s Robio, You All Down\r\n\r\nJis Ne Dekha Dance Tera Woh Tere Peeche Holiya\r\nDance Floor Par Teri ‘Da Tak’ Dhol Bajaey Dholiya\r\nJis Ne Dekha Dance Tera Woh Tere Peeche Holiya (Yeah Yeah Yeah)\r\nDance Floor Par Teri ‘Da Tak’ Dhol Bajaey Dholiya\r\nMashu, Boor Tere Thumke Ka Ni Da Tak Ni, Ni Da Tak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\n\r\nHey We Don’t Care About On Dance Ramp\r\nMachu Hips Shake It On Dance Ramp\r\nAnd I Think I’ll Soon Be One, Do Once More\r\nBecause I’m Most One As Take It To The Dance Floor\r\nDholiya Chak De Chak Chak Chak Dholiya\r\n\r\nAaj Khushi Mein Hoja Crazy, Pee Le Dasi Ya Angrezi\r\nNainon Waali Bottle Se Tu Pag Bhar Le\r\nDo Dilon Ki Hogai Yaari, Rasmain Poori Hogai Saari\r\nDil Jese Chaahe Bas Tu Nach Le\r\n(I Get Love My Pent\r\nYou Could Too Your Prank)\r\nAaj Khushi Mein Hoja Crazy, Pee Le Dasi Ya Angrezi\r\nNainon Waali Bottle Se Tu Pag Bhar Le\r\nDo Dilon Ki Hogai Yaari, Rasmain Poori Hogai Saari\r\nDil Jese Chaahe Bas Tu Nach Le\r\nDharti Hilaa De Gori Peyr Tak Ni, Peyr Tak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nMain Bhi Nach Laaan, Aey Tu Vi Nach Le\r\nSaanu Vekh Ke Nache Saari Duniya\r\n[Repeat]\r\nI Get It To My Prank\r\nYou Could Do Your Prank\r\nI Could Do My Prank\r\nAnd Let Those Hips Swing\r\n\r\nKaan Mein Tere Chamke Baali, Gaal Pe Tere Damke Laali\r\nChaand Bhi Tareef Kary Roz Rang Ki\r\nChain Churaa Le Meri Beauty, Is Ne To Hai Neend Bhi Looti\r\nKoi Bhi Na Hogi Kurri Mere Sang Ki\r\nI Could Do My Pank\r\nAnd Let My Hips Swing\r\nKaan Mein Tere Chamke Baali, Gaal Pe Tere Damke Laali\r\nChaand Bhi Tareef Kary Roz Rang Ki\r\nChain Churaa Le Meri Beauty, Is Ne To Hai Neend Bhi Looti\r\nKoi Bhi Na Hogi Kurri Mere Sang Ki\r\nHoey Daan Gai Tha Tha Yeh Teri Yakhni, Yeh Teri Yakhni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni - See more at: http://www.glamsham.com/music/lyrics/no-problem/shakira/1266/3194.htm#sthash.GKsXEQ7V.dpuf', 2, 2010, 'No Problem - Shakira.mp3\r\n', 2, 36),
(2, 10, 'No Problem - Shakira (Remix)', 'Ladies And Gentlmen, Boys And Girls\r\nPlease Report To The Dance Floor\r\nAnd Yes All Girls Bagging To Rombo\r\nDance Dance Get It Down\r\nShake It, Get Some Moves My Around\r\nDj, Play My Favorite Sound\r\nYou’re Gonna Run, It’s Robio, You All Down\r\nDance Dance Get It Down\r\nShake It, Get Some Moves My Around\r\nDj, Play My Favorite Sound\r\nYou’re Gonna Run, It’s Robio, You All Down\r\n\r\nJis Ne Dekha Dance Tera Woh Tere Peeche Holiya\r\nDance Floor Par Teri ‘Da Tak’ Dhol Bajaey Dholiya\r\nJis Ne Dekha Dance Tera Woh Tere Peeche Holiya (Yeah Yeah Yeah)\r\nDance Floor Par Teri ‘Da Tak’ Dhol Bajaey Dholiya\r\nMashu, Boor Tere Thumke Ka Ni Da Tak Ni, Ni Da Tak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\n\r\nHey We Don’t Care About On Dance Ramp\r\nMachu Hips Shake It On Dance Ramp\r\nAnd I Think I’ll Soon Be One, Do Once More\r\nBecause I’m Most One As Take It To The Dance Floor\r\nDholiya Chak De Chak Chak Chak Dholiya\r\n\r\nAaj Khushi Mein Hoja Crazy, Pee Le Dasi Ya Angrezi\r\nNainon Waali Bottle Se Tu Pag Bhar Le\r\nDo Dilon Ki Hogai Yaari, Rasmain Poori Hogai Saari\r\nDil Jese Chaahe Bas Tu Nach Le\r\n(I Get Love My Pent\r\nYou Could Too Your Prank)\r\nAaj Khushi Mein Hoja Crazy, Pee Le Dasi Ya Angrezi\r\nNainon Waali Bottle Se Tu Pag Bhar Le\r\nDo Dilon Ki Hogai Yaari, Rasmain Poori Hogai Saari\r\nDil Jese Chaahe Bas Tu Nach Le\r\nDharti Hilaa De Gori Peyr Tak Ni, Peyr Tak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nMain Bhi Nach Laaan, Aey Tu Vi Nach Le\r\nSaanu Vekh Ke Nache Saari Duniya\r\n[Repeat]\r\nI Get It To My Prank\r\nYou Could Do Your Prank\r\nI Could Do My Prank\r\nAnd Let Those Hips Swing\r\n\r\nKaan Mein Tere Chamke Baali, Gaal Pe Tere Damke Laali\r\nChaand Bhi Tareef Kary Roz Rang Ki\r\nChain Churaa Le Meri Beauty, Is Ne To Hai Neend Bhi Looti\r\nKoi Bhi Na Hogi Kurri Mere Sang Ki\r\nI Could Do My Pank\r\nAnd Let My Hips Swing\r\nKaan Mein Tere Chamke Baali, Gaal Pe Tere Damke Laali\r\nChaand Bhi Tareef Kary Roz Rang Ki\r\nChain Churaa Le Meri Beauty, Is Ne To Hai Neend Bhi Looti\r\nKoi Bhi Na Hogi Kurri Mere Sang Ki\r\nHoey Daan Gai Tha Tha Yeh Teri Yakhni, Yeh Teri Yakhni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni\r\nShakira Se Bhi Zyada Tera Hily Lak Ni - See more at: http://www.glamsham.com/music/lyrics/no-problem/shakira/1266/3194.htm#sthash.U6O4tfWO.dpuf', 2, 2014, 'No Problem - Shakira (Remix).mp3', 2, 18),
(6, 11, 'Thrill is Gone', 'The thrill is gone\r\nThe thrill is gone away\r\nThe thrill is gone baby\r\nThe thrill is gone away\r\nYou know you done me wrong baby\r\nAnd you\'ll be sorry someday\r\n\r\nThe thrill is gone\r\nIt\'s gone away from me\r\nThe thrill is gone baby\r\nThe thrill is gone away from me\r\nAlthough, I\'ll still live on\r\nBut so lonely I\'ll be\r\n\r\nThe thrill is gone\r\nIt\'s gone away for good\r\nThe thrill is gone baby\r\nIt\'s gone away for good\r\nSomeday I know I\'ll be open armed baby\r\nJust like I know a good man should\r\n\r\nYou know I\'m free, free now baby\r\nI\'m free from your spell\r\nOh I\'m free, free, free now\r\nI\'m free from your spell\r\nAnd now that it\'s all over\r\nAll I can do is wish you well', 3, 2015, 'Thrill is Gone.mp3', 7, 26),
(7, 12, 'Memphis Blues', '\r\nFolks I\'ve just been down, down to Memphis town\r\nThat\'s where the people smile, smile on you all the while\r\nHospitality, they were good to me\r\nI couldn\'t spend a dime and had the grandest time\r\n\r\nI went out a dancing with a Tennessee dear\r\nThey had a fellow named Handy with a band you should hear\r\nAnd while the folks gently swayed\r\nAll them boys began to play in real harmony\r\nI never will forget that tune they call\r\nHandy\'s Memphis Blues, oh yes, those blues\r\n\r\nThey\'ve got a trumpet man leading the band\r\nAnd folks, he sure blow some horn\r\nAnd when the clarinet seconds to the trombones croon\r\nIt moans just like a sinner on Revival Day\r\n\r\nThat melancholy strain that ever haunting refrain\r\nIs like a morning sorrow song\r\nHere comes the very part that wraps a spell around my heart\r\nIt sets me wild to hear that loving tune again, those Memphis Blues', 3, 2010, 'Memphis Blues.mp3', 7, 3),
(4, 13, 'Waiting For The End', 'This is not the end, this is not the beginning\r\nJust a voice like a riot rocking every revision\r\nBut you listen to the tone and the violent rhythm\r\nAnd though the words sound steady something empty\'s within them\r\nWe say yeah with fists flying up in the air\r\nLike we\'re holding onto something that\'s invisible there\r\n\'Cause we\'re living at the mercy of the pain and the fear\r\nUntil we get it, forget it, let it all disappear\r\n\r\n[Chester:]\r\nWaiting for the end to come\r\nWishing I had strength to stand\r\nThis is not what I had planned\r\nIt\'s out of my control\r\nFlying at the speed of light\r\nThoughts were spinning in my head\r\nSo many things were left unsaid\r\nIt\'s hard to let you go\r\n\r\n(Oh) I know what it takes to move on\r\n(Oh) I know how it feels to lie\r\n(Oh) All I want to do\r\nIs trade this life for something new\r\nHolding on to what I haven\'t got\r\n\r\nSitting in an empty room\r\nTrying to forget the past\r\nThis was never meant to last\r\nI wish it wasn\'t so\r\n\r\n(Oh) I know what it takes to move on\r\n(Oh) I know how it feels to lie\r\n(Oh) All I want to do\r\nIs trade this life for something new\r\nHolding on to what I haven\'t got\r\n\r\n(Yeah, yeah!)\r\n\r\n[Mike:]\r\nWhat was left when that fire was gone?\r\nI thought it felt right but that right was wrong\r\nAll caught up in the eye of the storm\r\nAnd trying to figure out what it\'s like moving on\r\nAnd I don\'t even know what kind of things I said\r\nMy mouth kept moving and my mind went dead\r\nSo I\'m picking up the pieces, now where to begin\r\nThe hardest part of ending is starting again\r\n\r\nOh-oh-oh-oh-oh-oh…\r\n\r\n[Chester (\'til end):]\r\nAll I want to do\r\nIs trade this life for something new\r\nHolding on to what I haven\'t got\r\nI\'m holding on to what I haven\'t got\r\nI\'m holding on to what I haven\'t got\r\n\r\n[Mike:]\r\nThis is not the end, this is not the beginning\r\nJust a voice like a riot rocking every revision\r\n(I\'m holding on to what I haven\'t got) But you listen to the tone and the violent rhythm\r\nThough the words sound steady something empty\'s within them\r\nWe say yeah with fists flying up in the air\r\nLike we\'re holding onto something that\'s invisible there\r\n(Holding on to what I haven\'t got) \'Cause we\'re living at the mercy of the pain and the fear\r\nUntil we get it, forget it, let it all disappear', 5, 2010, 'Waiting For The End.mp3', 11, 4),
(8, 14, 'Radioactive', 'I\'m waking up to ash and dust,\r\nI wipe my brow and I sweat my rust,\r\nI\'m breathing in, the chemicals.\r\nI\'m breaking in, shaping up, then checking out on the prison bus.\r\nThis is it, the apocalypse, whoa.\r\n\r\nI\'m waking up, I feel it in my bones.\r\nEnough to make my systems blow.\r\nWelcome to the new age, to the new age.\r\nWelcome to the new age, to the new age.\r\nWhoa, whoa, radioactive, radioactive.\r\nWhoa, whoa, radioactive, radioactive.\r\n\r\nI raise my flags, don my clothes,\r\nIt\'s a revolution I suppose.\r\nWe\'ll paint it red, to fit right in, whoa.\r\nI\'m breaking in, shaping up, checking out on the prison bus.\r\nThis is it, the apocalypse, whoa.\r\n\r\nI\'m waking up, I feel it in my bones.\r\nEnough to make my systems blow.\r\nWelcome to the new age, to the new age.\r\nWelcome to the new age, to the new age.\r\nWhoa, whoa, radioactive, radioactive.\r\nWhoa, whoa, radioactive, radioactive.\r\n\r\nAll systems go, sun hasn\'t died.\r\nDeep in my bones, straight from inside.\r\n\r\nI\'m waking up, I feel it in my bones.\r\nEnough to make my systems blow.\r\nWelcome to the new age, to the new age.\r\nWelcome to the new age, to the new age.\r\nWhoa, whoa, radioactive, radioactive.\r\nWhoa, whoa, radioactive, radioactive.\r\n', 5, 2012, 'Radioactive.mp3', 11, 10),
(6, 15, 'Fur Elise', 'It... is kind of strange to see you hanging there like that\r\nLifeless, calm and sort of naked\r\n \r\nFormerly, you somehow pleased me more\r\nWell, what the heck, no hard feelings, it has happened\r\n \r\nAnd, it\'s not like I didn\'t say to you\r\n\"Run away as long as you still can\"\r\nBut it\'s you who wanted to stay\r\nDidn\'t want to hear\r\nDidn\'t want to use your chance\r\n \r\nNow\r\nIt\'s too late\r\nIt\'s too late\r\nLate\r\n \r\nSo, no time to cry.\r\nWhat has happened, has happened.\r\n \r\nIt\'s too late\r\n \r\nNevertheless, this isn\'t my first time, obviously\r\nIt\'s fresh and exiting everytime anew\r\nTo dismember something\r\nTo take apart\r\nFirst, remove the head\r\nCut\r\n \r\nYuk.\r\nAll that blood\r\nDisgusting\r\nBut necessary\r\nNobody said a slaughter feast* like that\r\nWould be something aesthetic\r\nA job is a job\r\n \r\nSkin Flesh Blood Sweat\r\n \r\nBegin with slowly removing the skin\r\nRaw flesh, the muscles lie...\r\n \r\nSkin Flesh Blood Sweat\r\n \r\nBegin with slowly removing the skin\r\nRaw flesh, the muscles lie\r\nBeneath, twitching and normal\r\nI have never seen you like this before\r\nFormerly you somehow...\r\nLet\'s drop that\r\nIt\'s pointless\r\n \r\nSkin Flesh Blood Sweat\r\n \r\nBegin with slowly removing the skin\r\nRaw flesh, the muscles lie...\r\n \r\nSkin Flesh Blood Sweat\r\n \r\nBegin with slowly removing the skin\r\nRaw flesh, the muscles lie\r\nBeneath twitching and normal\r\nThat\'s the way it is\r\nI\'m your murderer, you are my meat\r\nI am a rancher and you are a cow\r\n \r\nOh Elise, you were the best cow in my stable\r\n \r\nI\'m your murderer, you are my meat\r\nI am a rancher and you are a cow', 9, 2013, 'Fur Elise.mp3', 3, 6),
(5, 16, 'Four Seasons', 'Walk Like A Man\r\nSilhouettes\r\nWhy Do Fools Fall In Love\r\nTonite, Tonite\r\nLucky Ladybug\r\nAlone (Why Must I Be Alone)\r\nSincerely\r\nSince I Don\'t Have You\r\nBig Girls Don\'t Cry\r\nGoodnight My Love\r\nalbum: \"The 4 Seasons Sing Ain\'t That A Shame And 11 Others\" (1963)  \r\nCandy Girl\r\nHappy, Happy Birthday Baby\r\nHoney Love\r\nSoon (I\'ll Be Home Again)\r\nStay\r\nMarlena\r\nLong Lonely Nights\r\nNew Mexican Rose\r\nThat\'s The Only Way\r\nAin\'t That A Shame\r\nalbum: \"Dawn (Go Away) And 11 Other Great Songs\" (1964)  \r\nYou Send Me\r\nMountain High\r\nLife Is But A Dream\r\nThe Church Bells May Ring\r\nDawn (Go Away)\r\n16 Candles\r\nBreaking Up Is Hard To Do\r\nEarth Angel\r\nDon\'t Let Go\r\nDo You Want To Dance?\r\ncompilation: \"Frankie Valli & The 4 Seasons - Greatest Hits Volume 1\" (1990)  \r\nSherry\r\nBig Girls Don\'t Cry\r\nWalk Like A Man\r\nAin\'t That A Shame\r\nCandy Girl\r\nMarlena\r\nStay\r\nDawn (Go Away)\r\nRonnie\r\nAlone (Why Must I Be Alone)\r\nSave It For Me\r\nBig Man In Town\r\nBye Bye Baby (Baby Goodbye)\r\nGirl Come Running\r\nDon\'t Think Twice\r\ncompilation: \"Frankie Valli & The 4 Seasons - Greatest Hits Volume 2\" (1990)  \r\nRag Doll\r\nLet\'s Hang On\r\nWorking My Way Back To You\r\nOpus 17 (Don\'t You Worry \'Bout Me)\r\nI\'ve Got You Under My Skin\r\nTell It To The Rain\r\nBeggin\'\r\nCan\'t Take My Eyes Off You\r\nC\'mon Marianne\r\nWill You Love Me Tomorrow?\r\nMy Eyes Adored You\r\nSwearin\' to God\r\nWho Loves You\r\nDecember, 1963 (Oh, What A Night)\r\nGrease', 5, 1965, 'Four Seasons.mp3', 3, 6),
(7, 17, 'love Story', '\r\nWe were both young when I first saw you.\r\nI close my eyes and the flashback starts:\r\nI\'m standing there on a balcony in summer air.\r\n\r\nSee the lights, see the party, the ball gowns.\r\nSee you make your way through the crowd\r\nAnd say, \"Hello.\"\r\nLittle did I know...\r\n\r\nThat you were Romeo, you were throwing pebbles,\r\nAnd my daddy said, \"Stay away from Juliet.\"\r\nAnd I was crying on the staircase\r\nBegging you, \"Please don\'t go.\"\r\nAnd I said...\r\n\r\nRomeo, take me somewhere we can be alone.\r\nI\'ll be waiting; all that\'s left to do is run.\r\nYou\'ll be the prince and I\'ll be the princess,\r\nIt\'s a love story, baby, just say \"Yes\".\r\n\r\nSo I sneak out to the garden to see you.\r\nWe keep quiet \'cause we\'re dead if they knew\r\nSo close your eyes,\r\nEscape this town for a little while.\r\nOh, oh.\r\n\r\n\'Cause you were Romeo, I was a scarlet letter,\r\nAnd my daddy said, \"Stay away from Juliet.\"\r\nBut you were everything to me,\r\nI was begging you, \"Please don\'t go.\"\r\nAnd I said...\r\n\r\nRomeo, take me somewhere we can be alone.\r\nI\'ll be waiting; all that\'s left to do is run.\r\nYou\'ll be the prince and I\'ll be the princess.\r\nIt\'s a love story, baby, just say \"Yes\".\r\n\r\nRomeo, save me. They\'re trying to tell me how to feel.\r\nThis love is difficult but it\'s real.\r\nDon\'t be afraid, we\'ll make it out of this mess.\r\nIt\'s a love story, baby, just say \"Yes\".\r\n\r\nOh, oh, oh.\r\n\r\nI got tired of waiting\r\nWondering if you were ever coming around.\r\nMy faith in you was fading\r\nWhen I met you on the outskirts of town.\r\nAnd I said...\r\n\r\nRomeo, save me. I\'ve been feeling so alone.\r\nI keep waiting for you, but you never come.\r\nIs this in my head? I don\'t know what to think.\r\nHe knelt to the ground and pulled out a ring and said...\r\n\r\nMarry me, Juliet, you\'ll never have to be alone.\r\nI love you, and that\'s all I really know.\r\nI talked to your dad – go pick out a white dress\r\nIt\'s a love story, baby, just say \"Yes\".\r\n\r\nOh, oh, oh, oh, oh, oh.\r\n\r\n\'Cause we were both young when I first saw you', 3, 2009, 'love Story.mp3', 11, 8),
(10, 18, 'We found love', 'Yellow diamonds in the light\r\nAnd we\'re standing side by side\r\nAs your shadow crosses mine\r\nWhat it takes to come alive\r\nIt\'s the way I\'m feeling I just can\'t deny\r\nBut I\'ve gotta let it go\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nShine a light through an open door\r\nLove and life I will divide\r\nTurn away \'cause I need you more\r\nFeel the heartbeat in my mind\r\nIt\'s the way I\'m feeling I just can\'t deny\r\nBut I\'ve gotta let it go\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nYellow diamonds in the light\r\nAnd we\'re standing side by side\r\nAs your shadow crosses mine\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place\r\nWe found love in a hopeless place', 8, 2011, 'We found love.mp3', 12, 13),
(11, 19, 'Uptown Funk', 'This hit, that ice cold\r\nMichelle Pfeiffer, that white gold\r\nThis one for them hood girls\r\nThem good girls straight masterpieces\r\nStylin\', whilen, livin\' it up in the city\r\nGot Chucks on with Saint Laurent\r\nGot kiss myself, I\'m so pretty\r\n\r\nI\'m too hot (hot damn)\r\nCalled a police and a fireman\r\nI\'m too hot (hot damn)\r\nMake a dragon wanna retire man\r\nI\'m too hot (hot damn)\r\nSay my name you know who I am\r\nI\'m too hot (hot damn)\r\nAm I bad \'bout that money, break it down\r\n\r\nGirls hit your hallelujah (whoo)\r\nGirls hit your hallelujah (whoo)\r\nGirls hit your hallelujah (whoo)\r\n\'Cause uptown funk gon\' give it to you\r\n\'Cause uptown funk gon\' give it to you\r\n\'Cause uptown funk gon\' give it to you\r\nSaturday night and we in the spot\r\nDon\'t believe me just watch (come on)\r\n\r\nDon\'t believe me just watch uh\r\n\r\nDon\'t believe me just watch\r\nDon\'t believe me just watch\r\nDon\'t believe me just watch\r\nDon\'t believe me just watch\r\nHey, hey, hey, oh\r\n\r\nStop, wait a minute\r\nFill my cup, put some liquor in it\r\nTake a sip, sign a check\r\nJulio, get the stretch\r\nRide to Harlem, Hollywood\r\nJackson, Mississippi\r\nIf we show up, we gon\' show out\r\nSmoother than a fresh dry skippy\r\n\r\nI\'m too hot (hot damn)\r\nCalled a police and a fireman\r\nI\'m too hot (hot damn)\r\nMake a dragon wanna retire man\r\nI\'m too hot (hot damn)\r\nBitch say my name you know who I am\r\nI\'m too hot (hot damn)\r\nAm I bad \'bout that money\r\nBreak it down\r\n\r\nGirls hit your hallelujah (whoo)\r\nGirls hit your hallelujah (whoo)\r\nGirls hit your hallelujah (whoo)\r\n\'Cause uptown funk gon\' give it to you\r\n\'Cause uptown funk gon\' give it to you\r\n\'Cause uptown funk gon\' give it to you\r\nSaturday night and we in the spot\r\nDon\'t believe me just watch (come on)\r\n\r\nDon\'t believe me just watch uh\r\n\r\nDon\'t believe me just watch uh\r\nDon\'t believe me just watch uh\r\nDon\'t believe me just watch\r\nDon\'t believe me just watch\r\nHey, hey, hey, oh\r\n\r\nBefore we leave\r\nLemmi tell y\'all a lil\' something\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up uh\r\nI said uptown funk you up\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up\r\n\r\nCome on, dance, jump on it\r\nIf you sexy then flaunt it\r\nIf you freaky then own it\r\nDon\'t brag about it, come show me\r\n\r\nCome on, dance\r\nJump on it\r\nIf you sexy then flaunt it\r\nWell it\'s Saturday night and we in the spot\r\nDon\'t believe me just watch come on!\r\n\r\nDon\'t believe me just watch uh\r\n\r\nDon\'t believe me just watch uh\r\nDon\'t believe me just watch uh\r\nDon\'t believe me just watch\r\nDon\'t believe me just watch\r\nHey, hey, hey, oh\r\n\r\nUptown funk you up\r\nUptown funk you up (say what?)\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up (say what?)\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up (say what?)\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up\r\nUptown funk you up (say what?)\r\nUptown funk you up', 9, 2014, 'Uptown Funk.mp3', 8, 26),
(10, 20, 'summer', 'When I met you in the summer\r\nTo my heartbeat sound\r\nWe fell in love\r\nAs the leaves turned brown\r\nAnd we could be together baby\r\nAs long as skies are blue\r\nYou act so innocent now\r\nBut you lied so soon\r\nWhen I met you in the summer\r\nWhen I met you in the summer\r\nTo my heartbeat sound\r\nWe fell in love\r\nAs the leaves turned brown\r\nAnd we could be together baby\r\nAs long as skies are blue\r\nYou act so innocent now\r\nBut you lied so soon\r\nWhen I met you in the summer\r\nSummer\r\nWhen I met you in the summer\r\nSummer\r\n', 10, 2014, 'summer.mp3', 2, 17),
(12, 21, 'In Da Club', 'Go, go, go, go go, go, go, shawty\r\nIt\'s your birthday\r\nWe gon\' party like it\'s yo birthday\r\nWe gon\' sip Bacardi like it\'s your birthday\r\nAnd you know we don\'t give a fuck\r\nIt\'s not your birthday!\r\n\r\nYou can find me in the club, bottle full of bub\r\nLook mami I got the X if you into taking drugs\r\nI\'m into having sex, I ain\'t into making love\r\nSo come give me a hug if you into to getting rubbed\r\n\r\nYou can find me in the club, bottle full of bub\r\nLook mami I got the X if you into taking drugs\r\nI\'m into having sex, I ain\'t into making love\r\nSo come give me a hug if you into to getting rubbed\r\n\r\nWhen I pull out up front, you see the Benz on dubs\r\nWhen I roll twenty deep, it\'s twenty knives in the club\r\nNiggas heard I fuck with Dre, now they want to show me love\r\nWhen you sell like Eminem, and the hoes they want to fuck\r\nBut homie ain\'t nothing change hold down, G\'s up\r\nI see Xzibit in the Cutt that nigga roll that weed up\r\nIf you watch how I move you\'ll mistake me for a player or pimp\r\nBeen hit wit a few shells but I don\'t walk wit a limp\r\nIn the hood then the ladies saying \"50 you hot\"\r\nThey like me, I want them to love me like they love \'Pac\r\nBut holla in New York them niggas\'ll tell ya I\'m loco\r\nAnd the plan is to put the rap game in a choke hold\r\nI\'m feelin\' focused man, my money on my mind\r\nI got a mill out the deal and I\'m still on the grind\r\nNow shawty said she feeling my style, she feeling my flow\r\nHer girlfriend want to get bi and they ready to go\r\n\r\nYou can find me in the club, bottle full of bub\r\nLook mami I got the X if you into taking drugs\r\nI\'m into having sex, I ain\'t into making love\r\nSo come give me a hug if you into to getting rubbed\r\n\r\nYou can find me in the club, bottle full of bub\r\nLook mami I got the X if you into taking drugs\r\nI\'m into having sex, I ain\'t into making love\r\nSo come give me a hug if you into to getting rubbed\r\n\r\nMy flow, my show brought me the dough\r\nThat bought me all my fancy things\r\nMy crib, my cars, my pools, my jewels\r\nLook, nigga, I came up and I ain\'t changed\r\n\r\nAnd you should love it, way more then you hate it\r\nNigga you mad? I thought that you\'d be happy I made it\r\nI\'m that cat by the bar toasting to the good life\r\nYou that fagot ass nigga trying to pull me back right?\r\nWhen my junk get to pumping in the club it\'s on\r\nI wink my eye at ya bitch, if she smiles she gone\r\nIf the roof on fire, let the motherfucker burn\r\nIf you talking bout money homie, I ain\'t concerned\r\nI\'m a tell you what Banks told me cause go \'head switch the style up\r\nIf the niggas hate then let \'em hate\r\nWatch the money pile up\r\nOr we go upside there wit a bottle of bub\r\nYou know where we fucking be\r\n\r\nYou can find me in the club, bottle full of bub\r\nLook mami I got the X if you into taking drugs\r\nI\'m into having sex, I ain\'t into making love\r\nSo come give me a hug if you into to getting rubbed\r\n\r\nYou can find me in the club, bottle full of bub\r\nLook mami I got the X if you into taking drugs\r\nI\'m into having sex, I ain\'t into making love\r\nSo come give me a hug if you into to getting rubbed\r\n\r\nDon\'t try to act like you ain\'t know where we been either, nigga\r\nIn the club all the time, nigga, so it\'s a problem pop off, nigga, G-Unit!', 11, 2003, 'In Da Club.mp3', 8, 4);
INSERT INTO `tracks` (`id`, `track_no`, `track_name`, `lyrics`, `album_id`, `year`, `link`, `genre_id`, `count`) VALUES
(13, 22, 'Rap-God', 'Look, I was gonna go easy on you and not to hurt your feelings\r\nBut I\'m only going to get this one chance\r\nSomething\'s wrong, I can feel it (Six minutes, Slim Shady, you\'re on)\r\nJust a feeling I\'ve got, like something\'s about to happen, but I don\'t know what\r\nIf that means, what I think it means, we\'re in trouble, big trouble,\r\nAnd if he is as bananas as you say, I\'m not taking any chances\r\nYou were just what the doctor ordered\r\n\r\nI\'m beginning to feel like a Rap God, Rap God\r\nAll my people from the front to the back nod, back nod\r\nNow who thinks their arms are long enough to slap box, slap box?\r\nThey said I rap like a robot, so call me Rapbot\r\n\r\nBut for me to rap like a computer must be in my genes\r\nI got a laptop in my back pocket\r\nMy pen\'ll go off when I half-cock it\r\nGot a fat knot from that rap profit\r\nMade a living and a killing off it\r\nEver since Bill Clinton was still in office\r\nWith Monica Lewinsky feeling on his nut-sack\r\nI\'m an MC still as honest\r\nBut as rude and indecent as all hell syllables, killaholic (Kill \'em all with)\r\nThis slickety, gibbedy, hibbedy hip hop\r\nYou don\'t really wanna get into a pissing match with this rappidy rap\r\nPacking a Mac in the back of the Ac, pack backpack rap, yep, yackidy-yac\r\nThe exact same time I attempt these lyrical acrobat stunts while I\'m practicing\r\nThat I\'ll still be able to break a motherfuckin\' table\r\nOver the back of a couple of faggots and crack it in half\r\nOnly realized it was ironic I was signed to Aftermath after the fact\r\nHow could I not blow? All I do is drop F-bombs, feel my wrath of attack\r\nRappers are having a rough time period, here\'s a Maxipad\r\nIt\'s actually disastrously bad\r\nFor the wack while I\'m masterfully constructing this masterpiece as\r\n\r\nI\'m beginning to feel like a Rap God, Rap God\r\nAll my people from the front to the back nod, back nod\r\nNow who thinks their arms are long enough to slap box, slap box?\r\nLet me show you maintaining this shit ain\'t that hard, that hard\r\n\r\nEverybody want the key and the secret to rap immortality like I have got\r\nWell, to be truthful the blueprint\'s simply rage and youthful exuberance\r\nEverybody loves to root for a nuisance\r\nHit the earth like an asteroid, did nothing but shoot for the moon since\r\nMC\'s get taken to school with this music\r\nCause I use it as a vehicle to bust a rhyme\r\nNow I lead a new school full of students\r\nMe? I\'m a product of Rakim, Lakim Shabazz, 2Pac N-\r\n-W.A, Cube, hey, Doc, Ren, Yella, Eazy, thank you, they got Slim\r\nInspired enough to one day grow up, blow up and be in a position\r\nTo meet Run DMC and induct them into the motherfuckin\' Rock n\'\r\nRoll Hall of Fame\r\nEven though I walk in the church and burst in a ball of flames\r\nOnly Hall of Fame I be inducted in is the alcohol of fame\r\nOn the wall of shame\r\nYou fags think it\'s all a game \'til I walk a flock of flames\r\nOff of planking, tell me what in the fuck are you thinking?\r\nLittle gay looking boy\r\nSo gay I can barely say it with a straight face looking boy\r\nYou witnessing a massacre\r\nLike you watching a church gathering take place looking boy\r\nOy vey, that boy\'s gay, that\'s all they say looking boy\r\nYou get a thumbs up, pat on the back\r\nAnd a way to go from your label everyday looking boy\r\nHey, looking boy, what you say looking boy?\r\nI got a \"hell yeah\" from Dre looking boy\r\nI\'mma work for everything I have\r\nNever ask nobody for shit, get outta my face looking boy\r\nBasically boy you\'re never gonna be capable\r\nTo keep up with the same pace looking boy\r\n\r\n\'Cause I\'m beginning to feel like a Rap God, Rap God\r\nAll my people from the front to the back nod, back nod\r\nThe way I\'m racing around the track, call me Nascar, Nascar\r\nDale Earnhardt of the trailer park, the White Trash God\r\nKneel before General Zod this planet\'s Krypton, no Asgard, Asgard\r\n\r\nSo you be Thor and I\'ll be Odin, you rodent, I\'m omnipotent\r\nLet off then I\'m reloading immediately with these bombs I\'m totin\'\r\nAnd I should not be woken\r\nI\'m the walking dead, but I\'m just a talking head, a zombie floating\r\nBut I got your mom deep throating\r\nI\'m out my ramen noodle, we have nothing in common, poodle\r\nI\'m a doberman, pinch yourself in the arm and pay homage, pupil\r\nIt\'s me, my honesty\'s brutal\r\nBut it\'s honestly futile if I don\'t utilize what I do though\r\nFor good at least once in a while\r\nSo I wanna make sure somewhere in this chicken scratch I scribble and doodle\r\nEnough rhymes to maybe to try and help get some people through tough times\r\nBut I gotta keep a few punchlines just in case cause even you unsigned\r\nRappers are hungry looking at me like it\'s lunchtime\r\nI know there was a time where once I\r\nWas king of the underground, but I still rap like I\'m on my Pharoahe Monch grind\r\nSo I crunch rhymes, but sometimes when you combine\r\nAppeal with the skin color of mine\r\nYou get too big and here they come trying to,\r\nCensor you like that one line I said on \"I\'m Back\" from the Marshall Mathers LP\r\nOne where I tried to say I take seven kids from Columbine\r\nPut \'em all in a line, add an AK-47, a revolver and a nine\r\nSee if I get away with it now that I ain\'t as big as I was, but I\'ve\r\nMorphed into an immortal coming through the portal\r\nYou\'re stuck in a time warp from 2004 though\r\nAnd I don\'t know what the fuck that you rhyme for\r\nYou\'re pointless as Rapunzel with fucking cornrows\r\nYou\'re like normal, fuck being normal\r\nAnd I just bought a new Raygun from the future\r\nTo just come and shoot ya like when Fabolous made Ray J mad\r\n\'Cause Fab said he looked like a fag at Maywhether\'s pad\r\nSingin\' to a man while they played piano\r\nMan, oh man, that was a 24/7 special on the cable channel\r\nSo Ray J went straight to the radio station the very next day\r\n\"Hey, Fab, I\'mma kill you\"\r\nLyrics coming at you at supersonic speed, (JJ Fad)\r\nUh, sama lamaa duma lamaa you assuming I\'m a human\r\nWhat I gotta do to get it through to you I\'m superhuman\r\nInnovative and I\'m made of rubber\r\nSo that anything you saying ricocheting off of me and it\'ll glue to you\r\nI\'m never stating, more than never demonstrating\r\nHow to give a motherfuckin\' audience a feeling like it\'s levitating\r\nNever fading, and I know that the haters are forever waiting\r\nFor the day that they can say I fell off, they\'d be celebrating\r\nCause I know the way to get \'em motivated\r\nI make elevating music, you make elevator music\r\nOh, he\'s too mainstream\r\nWell, that\'s what they do when they get jealous, they confuse it\r\nIt\'s not hip hop, it\'s pop, cause I found a hella way to fuse it\r\nWith rock, shock rap with Doc\r\nThrow on Lose Yourself and make \'em lose it\r\nI don\'t know how to make songs like that\r\nI don\'t know what words to use\r\nLet me know when it occurs to you\r\nWhile I\'m ripping any one of these verses diverse as you\r\nIt\'s curtains, I\'m inadvertently hurtin\' you\r\nHow many verses I gotta murder to,\r\nProve that if you\'re half as nice at songs you can sacrifice virgins too uh!\r\nSchool flunkie, pill junky\r\nBut look at the accolades the skills brung me\r\nFull of myself, but still hungry\r\nI bully myself cause I make me do what I put my mind to\r\nAnd I\'m a million leagues above you, ill when I speak in tongues\r\nBut it\'s still tongue in cheek, fuck you\r\nI\'m drunk so Satan take the fucking wheel, I\'m asleep in the front seat\r\nBumping Heavy D and the Boys, still chunky, but funky\r\nBut in my head there\'s something I can feel tugging and struggling\r\nAngels fight with devils, here\'s what they want from me\r\nThey asking me to eliminate some of the women hate\r\nBut if you take into consideration the bitter hatred that I had\r\nThen you may be a little patient and more sympathetic to the situation\r\nAnd understand the discrimination\r\nBut fuck it, life\'s handing you lemons, make lemonade then\r\nBut if I can\'t batter the women how the fuck am I supposed to bake them a cake then?\r\nDon\'t mistake it for Satan\r\nIt\'s a fatal mistake if you think I need to be overseas\r\nAnd take a vacation to trip a broad\r\nAnd make her fall on her face and don\'t be a retard\r\nBe a king? Think not, why be a king when you can be a God?', 12, 2011, 'Rap-God.mp3', 9, 8),
(11, 23, 'No Woman No Cry', 'No, woman, no cry,\r\nNo, woman, no cry,\r\nNo, woman, no cry,\r\nNo, woman, no cry.\r\nSaid, said, said, I remember when we used to sit\r\nIn the government yard in Trenchtown,\r\nOba - obaserving the \'ypocrites\r\nAs they would mingle with the good people we meet.\r\nGood friends we have, oh, good friends we\'ve lost\r\nAlong the way.\r\nIn this great future, you can\'t forget your past,\r\nSo dry your tears, I seh.\r\nNo, woman, no cry,\r\nNo, woman, no cry.\r\n\'Ere, little darlin\', don\'t shed no tears,\r\nNo, woman, no cry.\r\nSaid, said, said, I remember when-a we used to sit\r\nIn the government yard in Trenchtown.\r\nAnd then Georgie would make the fire lights,\r\nAs it was logwood burnin\' through the nights.\r\nThen we would cook cornmeal porridge,\r\nOf which I\'ll share with you,\r\nMy feet is my only carriage,\r\nSo I\'ve…', 6, 2000, 'No Woman No Cry.mp3', 12, 25),
(4, 24, 'wonderfulworld', 'I see trees of green, red roses too\r\nI see them bloom for me and you\r\nAnd I think to myself what a wonderful world\r\n\r\nI see skies of blue and clouds of white\r\nThe bright blessed day, the dark sacred night\r\nAnd I think to myself what a wonderful world\r\n\r\nThe colors of the rainbow so pretty in the sky\r\nAre also on the faces of people going by\r\nI see friends shaking hands saying how do you do\r\nThey\'re really saying I love you\r\n\r\nI hear babies crying, I watch them grow\r\nThey\'ll learn much more than I\'ll never know\r\nAnd I think to myself what a wonderful world\r\nYes I think to myself what a wonderful world', 5, 2000, 'wonderfulworld.mp3', 6, 10),
(5, 25, 'stairway to heaven', 'There\'s a lady who\'s sure\r\nAll that glitters is gold\r\nAnd she\'s buying a stairway to heaven.\r\nWhen she gets there she knows\r\nIf the stores are all closed\r\nWith a word she can get what she came for.\r\nOoh ooh and she\'s buying a stairway to heaven.\r\nThere\'s a sign on the wall\r\nBut she wants to be sure\r\n\'Cause you know sometimes words have two meanings.\r\nIn a tree by the brook\r\nThere\'s a songbird who sings,\r\nSometimes all of our thoughts are misgiven.\r\nOoh, it makes me wonder,\r\nOoh, it makes me wonder.\r\nThere\'s a feeling I get\r\nWhen I look to the west,\r\nAnd my spirit is crying for leaving.\r\nIn my thoughts I have seen\r\nRings of smoke through the trees,\r\nAnd the voices of those who standing looking.\r\nOoh, it makes me wonder,\r\nOoh, it really makes me wonder.\r\nAnd it\'s whispered that soon, If we all call the tune\r\nThen the piper will lead us to reason.\r\nAnd a new day will dawn\r\nFor those who stand long\r\nAnd the forests will echo with laughter.\r\nIf there\'s a bustle in your hedgerow,\r\nDon\'t be alarmed now,\r\nIt\'s just a spring clean for the May queen.\r\nYes, there are two paths you can go by\r\nBut in the long run\r\nThere\'s still time to change the road you\'re on.\r\nAnd it makes me wonder.\r\nYour head is humming and it won\'t go\r\nIn case you don\'t know,\r\nThe piper\'s calling you to join him,\r\nDear lady, can you hear the wind blow,\r\nAnd did you know\r\nYour stairway lies on the whispering wind.\r\nAnd as we wind on down the road\r\nOur shadows taller than our soul.\r\nThere walks a lady we all know\r\nWho shines white light and wants to show\r\nHow ev\'rything still turns to gold.\r\nAnd if you listen very hard\r\nThe tune will come to you at last.\r\nWhen all are one and one is all\r\nTo be a rock and not to roll.\r\nAnd she\'s buying a stairway to heaven.', 5, 1971, 'stairway to heaven.mp3', 10, 8),
(0, 29, 'a', '', 0, 2102, '', 0, 0),
(0, 30, 'a', '', 0, 0000, '', 0, 0),
(0, 31, 'z', '', 0, 0000, '', 0, 0),
(0, 32, 'a', '', 0, 2012, '', 0, 0),
(0, 33, 'p', '', 0, 2013, '', 0, 0),
(0, 34, 'a', '', 0, 2011, '', 0, 0),
(0, 35, 'a', '', 0, 2018, '', 0, 0),
(0, 36, 'a', '', 0, 2014, '', 0, 0),
(0, 37, 'a', '', 0, 2013, '', 0, 0),
(0, 38, 'a', '', 0, 2019, '', 0, 0),
(0, 39, 'a', '', 0, 2019, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(1) NOT NULL,
  `password` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'a', 'a'),
(1, 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`track_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `Album_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `track_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
