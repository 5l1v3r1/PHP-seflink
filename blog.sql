-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2019 at 02:30 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `makaleler`
--

CREATE TABLE `makaleler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text NOT NULL,
  `seflink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makaleler`
--

INSERT INTO `makaleler` (`id`, `baslik`, `aciklama`, `seflink`) VALUES
(1, 'Bootstrap 4 Get Started', 'What is Bootstrap?\r\nBootstrap is a free front-end framework for faster and easier web development\r\nBootstrap includes HTML and CSS based design templates for typography, forms, buttons, tables, navigation, modals, image carousels and many other, as well a', 'bootstrap-4-get-started'),
(2, 'Bootstrap 4 Tables', 'Bootstrap 4 Basic Table\r\nA basic Bootstrap 4 table has a light padding and horizontal dividers.', 'bootstrap-4-tables'),
(17, 'Your Android Phone Can Get Hacked Just By Playing This Video', 'Are you using an Android device?\r\nBeware! You should be more careful while playing a video on your smartphone—downloaded anywhere from the Internet or received through email.\r\nThat\'s because, a specially crafted innocuous-looking video file can compromise your Android smartphone—thanks to a critical remote code execution vulnerability that affects over 1 billion devices running Android OS between version 7.0 and 9.0 (Nougat, Oreo, or Pie).\r\nThe critical RCE vulnerability (CVE-2019-2107) in question resides in the Android media framework, which if exploited, could allow a remote attacker to execute arbitrary code on a targeted device.\r\nTo gain full control of the device, all an attacker needs to do is tricking the user into playing a specially crafted video file with Android\'s native video player application.\r\nThough Google already released a patch earlier this month to address this vulnerability, apparently millions of Android devices are still waiting for the latest Android security update that needs to be delivered by their respective device manufacturers.\r\n&quot;The most severe vulnerability in this section [media framework] could enable a remote attacker using a specially crafted file to execute arbitrary code within the context of a privileged process,&quot; Google described the vulnerability in its July Android Security Bulletin.', 'your-android-phone-can-get-hacked-just-by-playing-this-video'),
(18, 'Popular Malware Families Using \'Process Doppelgänging\' to Evade Detection', 'The fileless code injection technique called Process Doppelgänging is actively being used by not just one or two but a large number of malware families in the wild, a new report shared with The Hacker News revealed.\r\nDiscovered in late 2017, Process Doppelgänging is a fileless variation of Process Injection technique that takes advantage of a built-in Windows function to evade detection and works on all modern versions of Microsoft Windows operating system.\r\nProcess Doppelgänging attack works by utilizing a Windows feature called Transactional NTFS (TxF) to launch a malicious process by replacing the memory of a legitimate process, tricking process monitoring tools and antivirus into believing that the legitimate process is running.\r\nFew months after the disclosure of this technique, a variant of the SynAck ransomware became the first-ever malware exploiting the Process Doppelgänging technique, targeting users in the United States, Kuwait, Germany, and Iran.\r\nShortly after that, researchers discovered a dropper (loader) for the Osiris banking trojan that was also using this technique in combination with a previously discovered similar malware evasion technique called Process Hollowing.\r\nNow, turns out that it was not just SynAck or Osiris, but more than 20 different malware families—including FormBook, LokiBot, SmokeLoader, AZORult, NetWire, njRat, Pony stealer, and GandCrab ransomware—have been using malware loaders that leverage this hybrid implementation of Process Doppelgänging attack to evade detection.', 'popular-malware-families-using-process-doppelgnging-to-evade-detection'),
(19, 'Powerful FinSpy Spyware Found Targeting iOS and Android Users in Myanmar', 'One of the most powerful, infamous, and advanced piece of government-grade commercial surveillance spyware dubbed FinSpy—also known as FinFisher—has been discovered in the wild targeting users in Myanmar.\r\nCreated by German company Gamma International, FinSpy is spying software that can target various mobile platforms including iOS and Android, we well as desktop operating systems.\r\nGamma Group reportedly sells its controversial FinSpy espionage tool exclusively to government agencies across the world, but also gained notoriety for targeting human rights activists in many countries.\r\nThe FinSpy implant is capable of stealing an extensive amount of personal information from targeted mobile devices, such as SMS/MMS messages, phone call recordings, emails, contacts, pictures, files, and GPS location data.\r\nIn its latest report published today, Kaspersky researchers revealed a cyber-espionage campaign that involves targeting Myanmar users with the latest versions of FinSpy implants for iOS and Android.\r\nSince some advanced functionalities require FinSpy to have root privileges on a targeted device, the implant doesn\'t work properly on iOS without jailbreaking, which can be achieved with physical access or remotely in combination with some zero-day vulnerabilities.', 'powerful-finspy-spyware-found-targeting-ios-and-android-users-in-myanmar'),
(20, 'Bootstrap Jumbotron and Page Header', 'Creating a Jumbotron\r\nA jumbotron indicates a big box for calling extra attention to some special content or information.\r\n\r\nA jumbotron is displayed as a grey box with rounded corners. It also enlarges the font sizes of the text inside it.\r\n\r\nTip: Inside a jumbotron you can put nearly any valid HTML, including other Bootstrap elements/classes.\r\n\r\nUse a &lt;div&gt; element with class .jumbotron to create a jumbotron:', 'bootstrap-jumbotron-and-page-header'),
(21, 'Bootstrap Progress Bars', 'Basic Progress Bar\r\nA progress bar can be used to show a user how far along he/she is in a process.\r\n\r\nBootstrap provides several types of progress bars.\r\n\r\nA default progress bar in Bootstrap looks like this:\r\n\r\n70% Complete\r\nTo create a default progress bar, add a .progress class to a &lt;div&gt; element:', 'bootstrap-progress-bars'),
(22, 'What Every Developer Should Learn Early On', 'As a developer, you’ll hear a lot of crazy, unbelievable theories about what “lines of code” signify. Believe none of them. Lines of code is a ridiculous metric to base decisions on. In very rare cases it tells you something, in all the other cases, it tells you nothing. Using lines of code to make decisions is like rating book quality by number of pages.\r\n\r\nSome might make the case that the fewer the lines of code there are in an application, the easier it is to read. This is only partially true, my metrics for readable code are:\r\n\r\nCode should be consistent\r\nCode should be self-descriptive\r\nCode should be well documented\r\nCode should utilize stable modern features\r\nCode shouldn’t be unnecessarily complex\r\nCode shouldn’t be un-performant (don’t write intentionally slow code)\r\n\r\nThe moment reducing the number of lines of code interferes with any of those, it becomes a problem. In practice, it will almost always interfere and thus is nearly always a problem. But here’s the thing, if you strive to meet the above criteria, your code will be the perfect number of lines, no need for counting.', 'what-every-developer-should-learn-early-on'),
(23, 'DEF CON and Stack Overflow: What Our Traffic Says About Cybersecurity Technologies', 'Today is the first day of DEF CON 27, arguably the world’s best known hacker convention. Each year, thousands of people interested in security (and/or the hacking thereof) travel to Las Vegas to learn and gather with like-minded community. Some also attend Black Hat, a related conference which is typically scheduled right before DEF CON, also in Las Vegas. Not everyone who identifies as a hacker or is part of hacker culture writes code or uses Stack Overflow, but we would expect a significant proportion to do so. Well over 25,000 people attended DEF CON in 2018, all located in Las Vegas. Can we see any differences in traffic to Stack Overflow during the days of DEF CON? What can we learn about the hacker community from traffic during that time?\r\nDEF CON 2018\r\nLast year, DEF CON took place from August 9 to August 12. What did traffic from Las Vegas look like during the month of August? Let’s look at Stack Overflow traffic as a proportion of US question views as a whole, and also look at another city for comparison. The scales on the y-axis are different so that we can see weekly variation in both cities.', 'def-con-and-stack-overflow-what-our-traffic-says-about-cybersecurity-technologies'),
(24, 'Write More Pythonic Code by Applying the Things You Already Know', 'There’s a mistake I frequently make when I learn new things about Python… Here’s how you can avoid this pitfall and learn something about Python’s “enumerate()” function at the same time.\r\n\r\nPythonic Code\r\nWhen I learn a new trick for my “Python coding toolbox” I often sense some benefit right away.\r\n\r\nIt’s like I know this thing is useful for something—\r\n\r\nAnd yet I’m sitting here banging my head against the table trying to find a practical application for it.\r\n\r\nHow do you take a new function or module you heard about, and turn it into a sprinkling of Pythonic fairy dust that gets you a “ooh, nice!” comment in your next code review?\r\n\r\nThe other day I got this question from newsletter reader Paul, in response to a piece I wrote about Python’s enumerate() function:\r\n\r\nYesterday I needed to write a dictionary that reversed the enumeration (so,  {\'Bob\': 0}, etc). I used the length of the list plus zip in a dictionary comprehension.\r\n\r\nIs there a more Pythonic way to do this?\r\n\r\nTo give you some more context, this is what Paul wants to do:\r\n\r\ninput = [\'Duration\', \'F0\', \'F1\', \'F2\', \'F3\']\r\noutput = {\'Duration\': 0, \'F0\': 1, \'F1\': 2, \'F2\': 3, \'F3\': 4}\r\nThe goal is to create a dictionary that maps each item in the input list to the item’s index in that very list. This dictionary can then be used to look up indices using items as keys.\r\n\r\nHere’s how he implemented this transformation:\r\n\r\n&gt;&gt;&gt; {f:i for f, i in zip(input, range(len(input)))}\r\n{\'Duration\': 0, \'F0\': 1, \'F1\': 2, \'F2\': 3, \'F3\': 4}\r\nSo far so good—but as Paul suspects, we can clean this up some more.\r\n\r\nThis is exactly the kind of situation I find myself in all the time. Paul knows intuitively that there’s a way to make his code more Pythonic with the  enumerate() built-in…\r\n\r\nBut how should he put it in practice?\r\n\r\nMy first thought was that we could shorten this code a bit by avoiding the dict comprehension:\r\n\r\n&gt;&gt;&gt; dict(zip(input, range(len(input))))\r\n{\'Duration\': 0, \'F0\': 1, \'F1\': 2, \'F2\': 3, \'F3\': 4}\r\nThat’s slightly cleaner (because it has less visual noise), but just like Paul I’m still not very fond of that range(len(...)) construct.\r\n\r\nLet’s try playing with enumerate():\r\n\r\n&gt;&gt;&gt; list(enumerate(input))\r\n[(0, \'Duration\'), (1, \'F0\'), (2, \'F1\'), (3, \'F2\'), (4, \'F3\')]\r\nOkay, so I can use enumerate to pair each input key with its index in the list. Let’s turn that into a dictionary:\r\n\r\n&gt;&gt;&gt; dict(enumerate(input))\r\n{0: \'Duration\', 1: \'F0\', 2: \'F1\', 3: \'F2\', 4: \'F3\'}\r\nWe’re so close! This is basically what we want, but “in the wrong direction.” Instead of mapping keys to indices it’s mapping the index to the key.\r\n\r\nHow can we reverse it?\r\n\r\nLet’s bring back the dict comprehension:\r\n\r\n&gt;&gt;&gt; {f: i for i, f in enumerate(input)}\r\n{\'Duration\': 0, \'F0\': 1, \'F1\': 2, \'F2\': 3, \'F3\': 4}\r\nAnd there you go, that’s it! It’s a beauty!\r\n\r\nNow, what’s the takeaway from all of this?\r\nWith this sort of thing, it often pays off to go with your gut.\r\n\r\nYou see, Paul was right all along. There really was a way this code could be cleaned up by using enumerate(). It was just a little unclear of how it would work specifically.\r\n\r\nSo, when you find yourself in the same situation, keep digging!\r\n\r\nPython is an excellent programming language to do this sort of hands-on experimentation with: When I sat down to reply to Paul’s email, the first thing I did was to fire up a Python interpreter session for some explorative code golf.\r\n\r\nYou can’t really do this with a compiled language like C++. And it’s one of Python’s great features that you should use to your advantage.\r\n\r\nThat “ooh, nice!” code review comment is waiting for you.', 'write-more-pythonic-code-by-applying-the-things-you-already-know'),
(25, 'How to Reverse a String in Python', 'An overview of the three main ways to reverse a Python string: “slicing”, reverse iteration, and the classic in-place reversal algorithm. Also includes performance benchmarks.', 'how-to-reverse-a-string-in-python'),
(26, 'HTML NEDİR?', 'Hiper Metin İşaretleme Dili web sayfalarını oluşturmak için kullanılan standart metin işaretleme dilidir. Dilin son sürümü HTML5\'tir. HTML, bir programlama dili olarak tanımlanamaz. Zira HTML kodlarıyla kendi başına çalışan bir program yazılamaz.', 'html-nedir'),
(27, 'Django.', 'Django, Python Programlama Dili için hazırlanmış ve BSD lisansı ile lisanslanmış yüksek seviyeli bir web çatısıdır. Basit kurulumu ve kullanımı, detaylı hata raporu sayfaları ve sunduğu yeni arayüz kodlama yöntemleriyle diğer sunucu yazılımı ve çatılardan kendini ayırmaktadır.', 'django'),
(28, 'jQuery', 'jQuery, John Resig tarafından 2006 yılında geliştirilmiş ve şu an geniş bir jQuery ekibi tarafından gelişimi sürdürülen bir açık kaynak JavaScript kütüphanesidir.', 'jquery'),
(29, 'ReactJS', 'ReactJS, ya da React.js, kullanıcı arayüzü oluşturmaya yarayan açık kaynak kodlu web uygulama çatısı. Facebook önderliğinde bir geliştirici grubu tarafından geliştirilmekte olan ReactJS, Model-View-Controller prensibine uygun olarak oluşturulmuştur.', 'reactjs'),
(30, 'Vue.js', 'Vue.js kullanıcı arayüzleri ve tek sayfa uygulamalar inşa etmek için kullanılan açık kaynak Javascript iskeleti.', 'vuejs'),
(31, 'Angular', 'Angular, Google\'daki Angular Team ve bireyler ve şirketler topluluğu tarafından yönetilen, TypeScript tabanlı bir açık kaynaklı web uygulama çerçevesidir. Angular, AngularJS\'yi kuran aynı takımın tam bir tekrarıdır.', 'angular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makaleler`
--
ALTER TABLE `makaleler`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `makaleler`
--
ALTER TABLE `makaleler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
