-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 07:14 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcoach`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `about`) VALUES
(14, 'Update কোডইগsdfasdfনাইটার দিয়ে ডেটাবেসে ডেটা ঢুকান', 'Update sdsdfasdafasdakamrulofficial24+3@gmail.com', 'Update এfsadfaবার খুব সাধারন একটি ফর্ম তৈরী করে দেখাব যেটা দিয়ে এর আগে তৈরী "users" টেবিলে ডেটা ঢুকানো যাবে। এজন্য "Users" কন্ট্রোলারেই index মেথডের নিচে আরেকটি নতুন মেথড বানাব যার নাম "create"। এই মেথডের জন্য একটা নতুন ভিউ ফাইল বানাতে হবে যেখানে ফর্মটি থাকবে। "Views" ডিরেক্টরিতে গিয়ে "create.php" নামে একটি পিএইচপি ফাইল তৈরী করুন। যেকোন নাম দিতে পারেন, তবে অন্যান্য অনেক ফ্রেমওয়ার্ক আছে যেখানে মেথডরে নামের সাথে মিল রেখে ভিউ ফাইল তৈরী করতে হয়। কোডইগনাইটারে এরুপ কোন বাধ্যবোধকতা নেই, তার মানে এই নয় যে উল্টা পাল্টা নাম দিতে হবে। বরং প্রাসঙ্গিক নাম দেয়াই উচিৎ। যেমন আমি "Create" মেথডের জন্য "create.php" ভিউ ফাইল বানালাম।'),
(19, 'আগের টিউটোরিয়ালগুলিতে বুটস্ট্রাপ ছিলনা তাই কুৎসিত ', 'dsfsd@gmail.com', 'বেস্ট প্রাকটিস\r\n\r\n** কখনই construct মেথডে কিংবা autoload.php দিয়ে কোন লাইব্রেরী/হেল্পার/মডেল লোড করবেন না যতক্ষন না সব মেথডেই লাইব্রেরীটি দরকার হয় যেমন session। যে কন্ট্রোলারে দরকার সেখানে $this->load->library(''lib_name''), $this->load->model(''model_name''), $this->load->load->helper(''helper_name'') এভাবে লোড করবেন। তাহলে এপ্লিকেশন faster হবে।\r\n\r\n \r\n\r\n** index.php এই স্ট্রিংটি URL থেকে সরাতে (প্রোডাকশন সার্ভারে) নিচের কোড .htaccess নামে একটি ফাইল তৈরী করে সেখানে রাখুন এবং প্রজেক্টের রুটে ফাইলটি আপলোড করুন। ইচ্ছে করলে XAMPP এবং উইন্ডোজ এনভায়ারোমেন্টেও লোকালি এটা করা যায়।'),
(20, 'কোডইগনাইটার পেজিনেশন টিউটোরিয়াল', 'paginate@gmail.com', 'যখন কোন টেবিলে শত শত ডেটা থাকে তখন পেজিনেশন করা হয় কারন একসাথে সব row যদি একটা পেজে দেখাতে যান তাহলে লোড হতে অনেক সময় লাগবে তাছাড়া স্ক্রল করে দেখাও সমস্যা। কোডইগনাইটারে পেজিনেশন করা খুব সহজ। কন্ট্রোলারে কয়েকটি কনফিগারেশন প্যারামিটার দিতে হয় এরপর ভিউ ফাইলে ১টা লাইন লিখলেই আপনার কাজ শেষ। বাকি সব কাজ কোডইগনাইটার একাই করবে।\r\n\r\n \r\n\r\nপেজিনেশন দুইভাবে করা যায়। প্রথমত URL এ কোয়েরি স্ট্রিং ছাড়া এবং দ্বিতীয়ত প্যারামিটার যেমন page number (কোয়েরি স্ট্রিং) ইত্যাদি ব্যবহার করে। ১ নম্বরটিই সহজ এবং বাই ডিফল্ট কনফিগারেশনে কোডইগনাইটার এভাবেই পেজিনেশন তৈরী করে। আমরা ওয়েবকোচবিডি প্রজেক্ট এই পেজে যে প্রজেক্টটি দিয়েছি (CI এর) সেখানে ১ম পদ্ধতি ব্যবহার করে পেজিনেশন করা আছে। তবে অনেক জায়গায় এটা কাজ করবেনা তখন ২য় পদ্ধতি ব্যবহার করতে হবে। এই টিউটোরিয়ালে দুটোই দেখাচ্ছি'),
(21, 'কোডইগনাইটার বুটস্ট্রাপ ইন্টিগ্রেশন এবং বেস্ট প্রাক', 'bootstrap@gmail.com', 'বুটস্ট্রাপ ইন্টিগ্রেশন\r\n\r\nটুইটার বুটস্ট্রাপ নিয়ে আমাদের ভিডিও টিউটোরিয়াল দেখতে পারেন। এটা নিয়ে ইতোমধ্যে বিশদ আলোচনা সেখানে আছে তাই এখানে আর আলোচনা করবোনা। এখানে শুধু বুটস্ট্রাপ কিভাবে কোডইগনাইটার প্রজেক্টে ব্যবহার করা যায় সেটা দেখাব। খুব সহজ প্রথমেই ডাউনলোড (মিনিমাল ভার্সনটি) করে "css", "js" এবং "fonts" ডিরেক্টরি আমাদের আগের তৈরী "assets" ফোল্ডার রাখুন। যেমন উপরের ছবিতে দেখুন আমি রেখেছি, যদিও উদাহরনটি অন্য বিষয়ের ছিল আসলে ঐ ফোল্ডারগুলি বুটস্ট্রাপের। যাইহোক এবার আপনার "header.php" তে লিংক দিতে পারেন নিচের মত'),
(22, 'সিএসএস টিউটোরিয়াল | ভূমিকা (CSS Tutorial in Bangl', 'csss@gmail.com', 'এইচটিএমল ডকুমেন্টের যেকোন এলিমেন্টকে স্টাইলিং বা একটা রুপ দিতে সিএসএস ব্যবহার হয়। একটা প্যারাগ্রাফ (<p></p>) বা হেডিং (<h1></h1>) বা যেকোন এলিমেন্ট কে ধরুন রং করতে চান, ফন্ট বড় ছোট করতে হবে, অবস্থান এক দিক থেকে অন্যদিকে নিতে হবে, ব্যাকগ্রাউন্ড রং বদলাতে হবে এরুপ শত ধরনের স্টাইল পরিবর্তন সিএসএস দিয়ে করা হয়। বিশেষ করে লেআউট তৈরীর জন্য সিএসএস সবচেয়ে বেশি জরুরি।\r\n\r\nবর্তমানে সিএসএস ৩ চলে এসেছে (এখনও কাজ চলছে)। এর আগের ভার্সন হল সিএসএস ২.১। তবে সিএসএস ৩ এখন অধিকাংশ ব্রাউজারে সাপোর্ট করে এবং CSS 3 ব্যবহার দিন দিন বেড়েই চলছে।\r\n\r\nCSS - Cascading Style Sheets\r\n\r\nএইচটিএমএল এলিমেন্টের বিপরীতে সিএসএস রুল লেখা হয়। ওয়েবকোচবিডিতে সিএসএস এর মৌলিক বিষয়াদি থেকে শুরু করে সিএসএস ৩ এরও প্রয়োজনীয়গুলি নিয়ে টিউটোরিয়াল দেয়া হবে।'),
(23, 'সিএসএস প্যাডিং এবং মার্জিন টিউটোরিয়াল (CSS Padding', 'padd@gmail.com', '** padding এর মান পিক্সেল (px), em বা % দিয়ে দেয়া যাবে।\r\n** যদি padding এর মান ২টি দেয়া হয় তবে প্রথমটি উপরে নিচে এবং পরের মানটি ডানে বামের জন্য হয়ে যাবে। যেমন\r\npadding : 10px 4px; হলে উপরে নিচে ১০ পিক্সেল এবং ডানে বামে ৪ পিক্সেল করে প্যাডিং হবে।\r\n** ৩ টি মান দিলে প্রথমটি উপরে এরপরেরটি ডানে বামে এবং শেষেরটি নিচের প্যাডিং হিসেবে নিবে।\r\nwidth এর সাথে padding যোগ হয়:\r\nযেমন কোন এলিমেন্টের width : 100px; আছে এবং এখানে padding : 10px; আছে, তাহলে শেষ পর্যন্ত এলিমেন্টের width হয়ে যাবে ১২০ পিক্সেল। এই সমস্যার জন্য যদি box-sizing : border-box; ব্যবহার করেন তবে আসল width ফেরত আসবে।'),
(24, 'ডেটাবেস ডিজাইন - মাইএসকিউয়েল (Database Design - My', 'db@gmail.com', 'বাস্তব সমস্যা কিভাবে সমাধান হচ্ছে এবং কেন রিলেশনাল ডেটাবেস উপকারী\r\nধরুন আপনি একটা এপ্লিকেশন বানালেন যেখানে ডেটাবেস আছে এবং এই ডেটাবেসে "users" নামে একটা টেবিল আছে,এই "users" টেবিলে এক একজন ইউজারের নাম, পেশা, অবস্থান ইত্যাদি ইত্যাদি তথ্য আছে।এরপর আপনার এপ্লিকেশনে কোথাও কোন ইউজারের প্রোফাইল বা কোন তথ্য দেখানো প্রয়োজন হল আপনি পিএইচপি ব্যবহার করে সেখানে তথ্য বের করে ব্রাউজারে দেখিয়ে দিলেন,এটা সমস্যা নয় সমস্যা হবে নিচের মত যদি অবস্থা হয়।\r\nধরুন "vendors","contracts" বা অন্যান্য নামে আরো টেবিল আছে যেখানে প্রাসঙ্গিক তথ্য আছে আর আপনার ক্লাইন্ট বলল যে, যখন কেউ ভেন্ডর বা কন্ট্রাক্ট এর কোন পেজে যাবে তখন এই ভেন্ডর/কন্ট্রাক্ট কোন ইউজার তৈরী করছে,তার নাম এবং সাথে সেই ইউজারের আরো কিছু তথ্য এই পেজে দেখাতে হবে।অর্থ্যাৎ ভেন্ডর পেজে "vendor" এবং "users" টেবিলের ডেটা লাগবে।এরুপ আপনার এপ্লিকেশনে শত শত পেজ থাকতে পারে এবং এমনও হতে পারে বরং এমনই হয় যে এক একটা পেজে ১০/১২ টি টেবিলের ডেটা দেখাতে হয়।এখন আপনি কি করবেন? vendor টেবিলে ইউজারের যেসব তথ্য লাগবে আপনি সেগুলি আবার vendor টেবিলে নতুন নতুন ফিল্ড তৈরী করে লিখে দেবেন '),
(25, 'মাইসিক্যুয়েল ডেটার ধরন (MySQL Data Type)', 'mysql@gmail.com', 'localhost/phpmyadmin এ গিয়ে যেকোন নামে একটি ডেটাবেস তৈরী করুন এবং যেকোন নামে একটি টেবিল তৈরী করুন।কিভাবে phpMyAdmin ব্যবহার করে নতুন ডেটাবেস, টেবিল ইত্যাদি তৈরী করতে হয় তার জন্য এসকিউয়েলের প্রথম ৪/৫ টি টিউটোরিয়ালটি দেখুন।\r\nযাইহোক প্রতিটি টেবিলে যতগুলি কলামই দেননা কেন সবগুলির সাথে পাশেই Type নামে একটি ড্রপডাউন মেনু আছে এখানে থেকে এই কলামে কোন্ ধরনের ডেটা সংরক্ষিত হবে তা ঠিক করে দিতে পারেন।এগুলিই হচ্ছে মাইসিক্যুয়েলের ডেটা টাইপ বা ধরন।এখানে ৪০ টিরও বেশি ডেটা টাইপ আছে।যেগুলি প্রায়শই লাগে সেগুলির আলোচনা নিচে করা হল।\r\nনোট : সব টাইপগুলিতে শ্রেনীবিন্যাস করা যায়, মাইসিক্যুয়েল মুলত ৪টি বিভাগের মধ্যে সবগুলি ডেটা টাইপকে ঢুকিয়ে দিয়েছে ১. সংখ্যাত্নক (Numeric Data Type), ২. তারিখ এবং সময় (Date and Time Data Type), ৩.স্ট্রিং (String Data Type), ৪. স্পাশিয়াল (Spatial Data Type)'),
(26, 'মাইসিক্যুয়েল ডেটার ধরন (MySQL Data Type)', 'datatype@gmail.com', 'localhost/phpmyadmin এ গিয়ে যেকোন নামে একটি ডেটাবেস তৈরী করুন এবং যেকোন নামে একটি টেবিল তৈরী করুন।কিভাবে phpMyAdmin ব্যবহার করে নতুন ডেটাবেস, টেবিল ইত্যাদি তৈরী করতে হয় তার জন্য এসকিউয়েলের প্রথম ৪/৫ টি টিউটোরিয়ালটি দেখুন।\r\nযাইহোক প্রতিটি টেবিলে যতগুলি কলামই দেননা কেন সবগুলির সাথে পাশেই Type নামে একটি ড্রপডাউন মেনু আছে এখানে থেকে এই কলামে কোন্ ধরনের ডেটা সংরক্ষিত হবে তা ঠিক করে দিতে পারেন।এগুলিই হচ্ছে মাইসিক্যুয়েলের ডেটা টাইপ বা ধরন।এখানে ৪০ টিরও বেশি ডেটা টাইপ আছে।যেগুলি প্রায়শই লাগে সেগুলির আলোচনা নিচে করা হল।\r\nনোট : সব টাইপগুলিতে শ্রেনীবিন্যাস করা যায়, মাইসিক্যুয়েল মুলত ৪টি বিভাগের মধ্যে সবগুলি ডেটা টাইপকে ঢুকিয়ে দিয়েছে ১. সংখ্যাত্নক (Numeric Data Type), ২. তারিখ এবং সময় (Date and Time Data Type), ৩.স্ট্রিং (String Data Type), ৪. স্পাশিয়াল (Spatial Data Type)'),
(27, 'ওয়েব ডিজাইন ডেভেলপমেন্ট এবং প্রোগ্রামিং টিউটোরিয়', 'web@gmail.com', 'ওয়েব ডিজাইন কি\r\nওয়েব ডিজাইন হচ্ছে একটা ওয়েবসাইটের জন্য বাহ্যিক অবয়ব তৈরী করা। ওয়েব ডিজাইনারের মুল কাজ একটা সাইটের জন্য টেমপ্লেট বানানো, এখানে কোন এপ্লিকেশন থাকবেনা।যেমন লগিন সিস্টেম, নিউজলেটার সাইনআপ, পেজিনেশন, ফাইল আপলোড করে ডেটাবেসে সেভ করা, ইমেজ ম্যানিপুলেশন, যদি সাইটে বিজ্ঞাপন থাকে তাহলে প্রতিবার পেজ লোড হওয়ার সময় বিজ্ঞাপনের পরিবর্তন এগুলি এপ্লিকেশন, ওয়েব এপ্লিকেশন।এসব তৈরী করতে হয় প্রোগ্রামিং ল্যাংগুয়েজ দিয়ে। কোন প্রকার এপ্লিকেশন ছাড়া একটা সাইট তৈরী করা এটাই ওয়েব ডিজাইন, এধরনের ডিজাইনকে বলতে পারেন স্টাটিক ডিজাইন।ওয়েব ডিজাইনের জন্য এই ধারনাটি সাধারনত ব্যবহৃত হচ্ছে।');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;