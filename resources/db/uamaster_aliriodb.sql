-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-07-2021 a las 20:06:26
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uamaster_aliriodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_text` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `active_text`, `created_at`, `updated_at`) VALUES
(1, 'Exceptionally communicative and bilingual web developer with Bachelor Degree in Computer Science. Skilled in various developer tools and scripting languages. Seeking opportunity to further build strong skill set while working on multiple and diverse technical design projects. <br>\r\n <br>\r\nEfficient Web Developer with 8 years of experience in challenging development environments. Excellent communication and organizational abilities with a resourceful approach to solving diverse problems. Deadline-driven and knowledgeable professional with a strong desire to learn and contribute to team success.<br> \r\n<br> \r\nMotivated to meet customer and user expectations with high-quality and effective website layouts. Skilled in validating, debugging and correcting code.', 1, '2019-08-28 22:43:04', '2019-10-18 18:47:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Development', '2019-08-28 22:00:30', '2019-08-28 22:00:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Priscila Coste', 'priscilacoste_11@hotmail.com', '8295611151', 'tengo tantas preguntas que hacerte. Y no sé por donde comenzar. Me pregunto cual será el plan de Dios para nosotros. \r\nMientras tanto me conformo con preguntarte:\r\nChofer... tu va 9?\r\nLove,\r\nPrisci', '2019-08-30 16:55:03', '2019-08-30 16:55:03'),
(2, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey, this is Eric and I ran across universoalterno.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2020-08-01 11:06:15', '2020-08-01 11:06:15'),
(3, 'Donnie', 'info@universoalterno.com', '484 1469', 'Hey there\r\n\r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n\r\nThanks and Best Regards,\r\n\r\nIndex of /', '2020-08-04 07:47:21', '2020-08-04 07:47:21'),
(4, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found universoalterno.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2020-08-09 19:12:56', '2020-08-09 19:12:56'),
(5, 'Isiah', 'info@universoalterno.com', '25-87-41-06', 'Hey there\r\n\r\nWear with intent, live with purpose. Fairly priced sunglasses with high quality UV400 lenses protection only $19.99 for the next 24 Hours ONLY.\r\n\r\nOrder here: kickshades.online\r\n\r\nSincerely,\r\n\r\nIndex of /', '2020-08-19 09:44:16', '2020-08-19 09:44:16'),
(6, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found universoalterno.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2020-08-19 20:14:34', '2020-08-19 20:14:34'),
(7, 'Amanda Mulroy', 'amanda.mulroy@onlinechatservices.com', '909-513-0644', 'Hello,\r\n\r\nI hope you\'re doing well and staying safe. We realize the current environment has made it difficult to make ends meet, and we are seeing companies rapidly move online to better service their customers. As experts in the customer service space, we work with businesses to help install Live Chat software and offer it completely free for three months.\r\n\r\nYou\'ll be able to live chat with your customers on universoalterno.com, display important messages via \"in-app\" popups, and send automated emails for a much improved customer experience.\r\n\r\nWould you be interested in learning more? I\'d be happy to answer any questions you have. My name is Amanda, and I look forward to connecting with you!\r\n\r\nAmanda Mulroy\r\nOnline Chat Services, Tyipe LLC (pronounced \"type\")\r\n500 Westover Dr #15391 Sanford, NC 27330\r\n\r\nNot interested? You can opt out your website here http://eroutemgr.com/remove?q=universoalterno.com&i=13', '2020-08-20 18:36:49', '2020-08-20 18:36:49'),
(8, 'Edmundo', 'info@universoalterno.com', '0357 8989030', 'Good day\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nKind Regards,\r\n\r\nIndex of /', '2020-08-24 05:40:48', '2020-08-24 05:40:48'),
(9, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - universoalterno.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across universoalterno.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2020-08-26 13:51:57', '2020-08-26 13:51:57'),
(10, 'Dacey', 'info@universoalterno.com', '0931 65 63 88', 'Hello there \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: sunglassusa.online\r\n \r\n \r\nThank You, \r\n \r\nAlirio CV', '2020-09-17 06:16:25', '2020-09-17 06:16:25'),
(11, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey, this is Eric and I ran across universoalterno.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2020-09-28 13:16:37', '2020-09-28 13:16:37'),
(12, 'Shanesaime', 'info@universoalterno.com', '89487515738', 'Hello \r\n \r\nBuy all styles of Oakley Sunglasses only 19.99 dollars.  If interested, please visit our site: supersunglasses.online \r\n \r\n \r\nEnjoy, \r\n \r\nAlirio CV', '2020-10-02 06:08:16', '2020-10-02 06:08:16'),
(13, 'Werner Henry', 'information@universoalterno.com', '0470 40 80 43', 'ATT: universoalterno.com / Index of /  WEB SITE SOLUTIONS\r\nThis notice ENDS ON: Oct 05, 2020\r\n\r\n\r\nWe have not received a payment from you.\r\nWe\'ve attempted to contact you but were not able to contact you.\r\n\r\n\r\nKindly See: https://bit.ly/36ubQw9 .\r\n\r\nFor details and also to process a optional settlement for solutions.\r\n\r\n\r\n\r\n10052020082151.', '2020-10-05 13:46:29', '2020-10-05 13:46:29'),
(14, 'Zora Tarleton', 'zora.tarleton@outlook.com', '077 0761 5392', 'Good morning..do you need any backing soundtrack for your company music? If so, tell us about it and we might give you or make one for you without payment. https://www.youtube.com/watch?v=OhV2NgvkSLg We will ask only for credits that we did the track. Thank you!', '2020-10-07 22:27:13', '2020-10-07 22:27:13'),
(15, 'Blake', 'info@universoalterno.com', '06454 65 90 92', 'Hi there \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\n \r\nRegards, \r\n \r\nAlirio CV', '2020-10-22 12:08:08', '2020-10-22 12:08:08'),
(16, 'Sasha', 'info@universoalterno.com', '01.88.50.24.59', 'Hi \r\n \r\nBuy all styles of Oakley Sunglasses only 19.99 dollars.  If interested, please visit our site: designeroutlets.online\r\n \r\n \r\nAll the best, \r\n \r\nAlirio CV', '2020-10-30 09:47:04', '2020-10-30 09:47:04'),
(17, 'Eric Jones', 'eric@talkwithwebvisitor.com', '416-385-3200', 'My name’s Eric and I just found your site universoalterno.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithcustomer.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2020-11-01 20:16:00', '2020-11-01 20:16:00'),
(18, 'Luca', 'info@universoalterno.com', '30-88-51-47', 'Good Morning\r\n\r\nWorld\'s Best Neck Massager.  Get it Now 50% OFF + Free Shipping!\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: hineck.online\r\n\r\nAll the best,\r\n\r\nAlirio CV', '2020-11-08 04:31:04', '2020-11-08 04:31:04'),
(19, 'Luca', 'info@universoalterno.com', '931 66 456', 'Hey there \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\n \r\nTo your success, \r\n \r\nAlirio CV', '2020-11-13 20:23:26', '2020-11-13 20:23:26'),
(20, 'Jerrell Huggins', 'jerrell.huggins@outlook.com', '061 982 60 86', 'Good morning, I was just checking out your site and filled out your feedback form. The contact page on your site sends you these messages via email which is the reason you are reading through my message right now right? That\'s the most important accomplishment with any type of online ad, making people actually READ your message and this is exactly what you\'re doing now! If you have an advertisement you would like to blast out to millions of websites via their contact forms in the U.S. or to any country worldwide let me know, I can even target particular niches and my costs are very low. Write an email to: nolatenley4915jbakc@gmail.com', '2021-02-27 13:31:02', '2021-02-27 13:31:02'),
(21, 'Fae Rushing', 'rushing.fae@gmail.com', '(47) 9536-9287', 'Do you want to check out how you can build your own business online getting paid to sell other people\'s products? Have a look at: http://bit.ly/make--money-with-affiliate-marketing', '2021-03-09 06:56:28', '2021-03-09 06:56:28'),
(22, 'Anke Chabrillan', 'anke.chabrillan@gmail.com', '61-52-00-04', 'No charge advertising for your website here: http://bit.ly/submit-free-ads-here', '2021-03-17 08:53:54', '2021-03-17 08:53:54'),
(23, 'Veola Heysen', 'veola.heysen@googlemail.com', '(21) 9097-3430', 'Get visitors to your website, e-commerce site, local business, or blog at zero cost. This post examines several interesting ways to get free unlimited ads for your business: http://bit.ly/free-traffic-from-5-hi-traffic-sites', '2021-03-25 07:12:45', '2021-03-25 07:12:45'),
(24, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-04-02 06:11:42', '2021-04-02 06:11:42'),
(25, 'Alfonzo Yost', 'alfonzo.yost@gmail.com', '0318 4821732', 'I can show you how you can promote your business for nothing!\r\n\r\nHave a look at this comprehensive list of the best search websites now >>http://bit.ly/you-can-post-free-ads-here', '2021-04-03 12:49:04', '2021-04-03 12:49:04'),
(26, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'How To Master Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=universoalterno.com', '2021-04-05 15:02:38', '2021-04-05 15:02:38'),
(27, 'Delia Johns', 'delia.johns89@gmail.com', '06-25880603', 'No charge advertising, submit your site now and start getting new visitors. Visit: http://bit.ly/sites-that-accept-free-ads', '2021-04-09 09:22:59', '2021-04-09 09:22:59'),
(28, 'Kandis Roemer', 'kandis.roemer@gmail.com', '305-831-0964', 'Good evening \r\nHope you’re great, and that customers are profitable.\r\nHere is the best tool you need in order to get more customers from you\'re website. \r\nhttps://seo-spesialists.com/backlinks-generator\r\nWarm regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://seo-spesialists.com/?unsubscribe=universoalterno.com', '2021-04-13 08:33:20', '2021-04-13 08:33:20'),
(29, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website universoalterno.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2021-04-17 06:58:45', '2021-04-17 06:58:45'),
(30, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-04-17 14:04:00', '2021-04-17 14:04:00'),
(31, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'Hi universoalterno.com Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=universoalterno.com', '2021-04-25 13:58:34', '2021-04-25 13:58:34'),
(32, 'Caleb Whitman', 'caleb.whitman@outlook.com', '(63) 4155-4257', 'Looking for fresh buyers? Receive hundreds of people who are ready to buy sent directly to your website. Boost your profits fast. Start seeing results in as little as 48 hours. For more info Check out: http://www2.keywordtargetedwebtraffic.com', '2021-04-30 09:08:55', '2021-04-30 09:08:55'),
(33, 'Linda Miller', 'lindamillerleads@gmail.com', '555-555-1212', 'Hi universoalterno.com Owner,\r\n\r\nDo you want to know the Secrets To Mastering Internet Lead Conversion?\r\n\r\nI spent the last 10+ years generating, calling and closing Internet leads. I will be sharing my decade long conversion code for you to copy during this new, free webinar!\r\nDuring the webinar, I will show you:\r\n\r\nEvery business needs to capture more leads, create more appointments, and close more deals.\r\n\r\nIf you commit to mastering the content in this session, you will earn more money immediately– not in six months or a year, but literally as soon as you put your new knowledge to work. I have used this method on 1,000\'s of Internet leads of all price points. \r\n\r\nIf you want Internet leads, I have the key to CONVERTING them. Hope you can make it... https://TalkWithWebTraffic.com/Webinar\r\n\r\nIf getting more Hot Phone Leads is a part of your business plan (and why wouldn\'t it be?), I\'ve got great news for you.\r\n\r\n1. 12 ways to generate seller leads\r\n2. How to get seller leads on the phone\r\n3. What to say on the phone so you get instant sales\r\n4. The Key to SMS Marketing\r\n5  Never Cold Call Again\r\n6. Better leads = Faster conversions\r\n7. The four keys to inside sales success\r\n8. The 10 steps to a perfect sales call with an Internet lead\r\n\r\nMore than 7,000 people have already registered. The last time I did a webinar with Top Producers, hundreds of people got locked out and could only watch the replay. Get your spot now and tune in early!\r\n\r\n==> Save my spot https://TalkWithWebTraffic.com/Webinar\r\n\r\nWe\'ve become obsessed with making sure our clients are converting the leads we generate for them. \r\n\r\nHow much are you getting back in commissions compared to how much are you spending on advertising? But what is even better than a great ROI is a quick ROI. During this live webinar I will show you how we can help you generate higher quality leads that are easier to convert, fast.\r\n\r\n==>  Register at https://TalkWithWebTraffic.com/Webinar\r\n\r\nYour #1 Fan, \r\nLinda Miller\r\nBe there or be square.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=universoalterno.com', '2021-05-04 02:58:23', '2021-05-04 02:58:23'),
(34, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website universoalterno.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2021-05-11 18:00:16', '2021-05-11 18:00:16'),
(35, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-05-13 19:13:25', '2021-05-13 19:13:25'),
(36, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website universoalterno.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2021-05-14 16:32:20', '2021-05-14 16:32:20'),
(37, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-05-16 23:48:03', '2021-05-16 23:48:03'),
(38, 'Aftebra', 'Bountee@swmail.xyz', '83471248646', '<a href=http://fcialisj.com/>purchasing cialis online', '2021-05-21 21:42:41', '2021-05-21 21:42:41'),
(39, 'Aftebra', 'Bountee@swmail.xyz', '86566195881', '<a href=https://vsviagrav.com/>genric viagra', '2021-06-08 14:05:39', '2021-06-08 14:05:39'),
(40, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-06-12 19:40:34', '2021-06-12 19:40:34');
INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(41, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-06-12 21:42:36', '2021-06-12 21:42:36'),
(42, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website universoalterno.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2021-06-13 10:04:59', '2021-06-13 10:04:59'),
(43, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at universoalterno.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=universoalterno.com', '2021-06-15 01:59:39', '2021-06-15 01:59:39'),
(44, 'Alfonso Skene', '0edis@xteammail.com', '09404 22 24 02', 'Online business that has zero overheads? Yep it\'s possible, check it out: http://bit.ly/affiliate-marketing-how-to-make-it-work', '2021-06-16 15:42:54', '2021-06-16 15:42:54'),
(45, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website universoalterno.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=universoalterno.com', '2021-06-17 17:20:19', '2021-06-17 17:20:19'),
(46, 'Jennie Paquin', 'lshi@anatolygroup.com', '0325 1680802', 'Need more buyers for your website? Read this: http://bit.ly/buyers-to-your-site-now', '2021-06-29 04:42:32', '2021-06-29 04:42:32'),
(47, 'Harry', 'harry94longwood@gmail.com', '05721 55 65 19', 'Our small team has experienced administrators, programmers, data experts, messaging experts, marketing gurus. Try our knowledge and start working together, we can support your digital marketing needs much more effectively than many other companies. If you are interested than PLEASE drop us a message here: Albert, moorayalbert@gmail.com\r\n\r\nThank you for your time and consideration.\r\nHarry', '2021-07-01 09:37:54', '2021-07-01 09:37:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_30_192445_create_posts_table', 1),
(4, '2019_08_01_184610_create_abouts_table', 1),
(5, '2019_08_01_185624_create_services_table', 1),
(6, '2019_08_01_185908_create_portfolios_table', 1),
(7, '2019_08_01_192005_create_quotes_table', 1),
(8, '2019_08_01_194421_create_contacts_table', 1),
(9, '2019_08_08_140528_create_categories_table', 1),
(10, '2019_08_08_141517_add_foreign_keys_to_posts_table', 1),
(11, '2019_08_22_190105_update_portfolios_table', 1),
(12, '2019_08_26_155808_update_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `description`, `website`, `picture`, `picture2`, `picture3`, `created_at`, `updated_at`) VALUES
(13, 'DELTATECH', '• Provided administrative support to senior analysts and department professionals.<br>\r\n• Organized system infrastructure documentation and operating procedures, strengthening controls and enhancing overall performance.<br>\r\n• Tested websites and performed troubleshooting prior to deployment.<br>\r\n• Reviewed code to validate structures, assess security and verify browser, device and operating system compatibility.<br>\r\n• Building websites using a template based on bootstrap, deployed in a PerfectMind server.<br>\r\n<br>\r\nWorked from 2015-08 - 2016-02', 'www.deltatechsistemas.com', 'deltatech_logo_portfolio_1571284925.png', 'screencapture-buffalobjj-2019-08-29-09_18_16_1571284925.png', 'screencapture-martialartsadvantage-2019-08-29-09_23_28 (1)_1571320995.png', '2019-10-17 04:02:05', '2019-10-17 14:03:18'),
(14, '3DLINK', '• Kept abreast of emerging technologies, software and trends and project applications.<br>\r\n• Designed, implemented and monitored web pages and sites for continuous improvement in fast-paced environment.<br>\r\n• Used programming capabilities in PHP, SQL and JavaScript and other libraries as needed.<br>\r\n• Developed, coded and updated Web pages and Landing pages sites for clients.<br>\r\n• Pitched in to assist senior developers to meet pressing deadlines during under-staffed periods.<br>\r\n• Analyzed requirements and designed, developed and implemented software applications for multiple websites.<br>\r\n<br>\r\nWorked from 2015-11 - 2016-12', 'www.3dlinkweb.com', '3dlink_logo_portfolio_1571285043.png', 'screencapture-3dlinkweb-2019-08-29-09_18_48 (1)_1571285169.png', NULL, '2019-10-17 04:04:03', '2019-10-17 14:01:38'),
(15, 'VIVACE', '• Web Page Design and mobile application programmer.<br>\r\n• Reviewed code to validate structures, assess security and verify browser, device and operating system compatibility.<br>\r\n• Tested websites and performed troubleshooting prior to deployment.<br>\r\n• Develop the videocall module using OpenTOK and TokBox on a site build in an AngularJS framework with Node.js for the https://medicosvenezolanosonline.com project.<br>\r\n<br>\r\nWorked from 2016-13 - 2017-2', 'vivacetek.com', 'vivace_logo_portfolio_1571285296.png', 'screencapture-medicosvenezolanosonline-index-2019-08-29-09_19_22_1571285296.png', NULL, '2019-10-17 04:08:16', '2019-10-17 14:01:23'),
(16, 'OENS INGENIERÍA', '• Pitched in to assist senior developers to meet pressing deadlines during under-staffed periods.<br>\r\n• Tested websites and performed troubleshooting prior to deployment.<br>\r\n• Used programming capabilities in PHP, SQL and JavaScript and other libraries as needed.<br>\r\n• Created site layout and user interface using HTML and CSS practices.<br>\r\n• Optimized and repaired corporate website based on Laravel technology.<br>\r\n<br>\r\nWorked from 2017-12 - 2018-02', 'oensingenieria.com', 'oens_logo_portfolio_1571285617.png', 'image_1571285617.png', '59d8b3_1571285617.jpg', '2019-10-17 04:13:37', '2019-10-17 14:01:06'),
(17, 'THE CHAIN', '• Created site layout and user interface using HTML and CSS practices.<br>\r\n• Designed, implemented and monitored web pages and sites for continuous improvement in fast-paced environment.<br>\r\n• Hands-on experience using Sails.js and Node.js web servers.<br>\r\n• Used programming capabilities in PHP, SQL and JavaScript and other libraries as needed. Represented web team at meetings with executives and discussed project goals and milestones.<br>\r\n<br>\r\nWorked from 2018-01 - 2018-08', 'thechain.tech', 'TheChain-logo_1571285685.png', NULL, NULL, '2019-10-17 04:14:45', '2019-10-17 14:00:53'),
(18, 'DMP', '• Developed landing pages, dashboards and online applications using Laravel 5.2 and Spring-Boot, in a MySQL database.<br>\r\n• Analyzed requirements and designed, developed and implemented software applications for multiple websites.<br>\r\n• Designed, implemented and monitored web pages and sites for continuous improvement in fast-paced environment.<br>\r\n• Established milestones for projects and prepared all team members to meet aggressive deadlines.<br>\r\n• Used programming capabilities in PHP, SQL and JavaScript and other libraries as needed.<br>\r\n• Completed full redesigns of existing websites to improve navigation, enhance visuals and strengthen search engine rankings.<br>\r\n• Reviewed code to validate structures and verify browser, device and operating system compatibility.<br>\r\n• Develop scripts using Selenium with Java and Python.<br>\r\n<br>\r\nWorked from 2018-10 - 2019-03', 'www.bancasoft.do', 'dmp_logo_portfolio_1571285787.png', 'image (2)_1571285787.png', 'image (1)_1571285787.png', '2019-10-17 04:16:28', '2019-10-17 14:00:40'),
(19, 'CONCENTRA SMART IT MANAGEMENT', '• Devoted special emphasis to punctuality and worked to maintain outstanding attendance record, consistently arriving to work ready to start immediately.<br>\r\n• Reviewed code, debugged problems and corrected issues.<br>\r\n• Programming Worked on Plataforma Servicios en Linea projects using Laravel 5.5, JQuery, Javascript and MySQL Database. Using also Visual Studio, Laragon, Postman and MySQL Workbench.<br>\r\n•Evaluated potential software products based on new and existing system development and migration requirements.<br>\r\n<br>\r\nWorked from 2019-03', 'concentra.com.do', 'concentra_logo_portfolio_1571285886.png', 'screencapture-localhost-home-2019-08-29-10_49_18_1571285886.png', 'screencapture-localhost-services-2019-08-29-10_49_02_1571285886.png', '2019-10-17 04:18:06', '2019-10-17 14:00:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(11, 'HTML 5', 'HTML 5 is a software solution stack that defines the properties and behaviors of web page content by implementing a markup based pattern to it.', '31_1571328274.jpg', '2019-10-17 16:04:25', '2019-10-17 16:05:00'),
(12, 'Laravel 5+', 'Laravel is a free, open-source PHP web framework, created by Taylor Otwell and intended for the development of web applications following the model–view–controller (MVC) architectural pattern and based on Symfony.', '207-laravel-logo_1571328904.png', '2019-10-17 16:15:04', '2019-10-17 16:15:37'),
(13, 'Javascript', 'JavaScript, often abbreviated as JS, is a high-level, interpreted scripting language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.', 'javascript-logo-vector-88843-400x400_1571329027.jpg', '2019-10-17 16:17:07', '2019-10-17 16:17:07'),
(14, 'Node.js', 'Node.js is an open-source, cross-platform, JavaScript runtime environment that executes JavaScript code outside of a browser. Node.js lets developers use JavaScript to write command line tools and for server-side scripting—running scripts server-side to produce dynamic web page content before the page is sent to the user\'s web browser.', 'nodejs-1-400x400_1571329167.png', '2019-10-17 16:19:27', '2019-10-17 16:19:27'),
(15, 'Sails.js', 'Sails.js is a MVC web application framework developed atop the Node.js environment. It is designed to make it easy to build custom, enterprise-grade Node.js web applications and APIs.', 'logo_sails_1571329302.png', '2019-10-17 16:21:42', '2019-10-17 16:21:42'),
(16, 'Bonita BPM', 'Bonita is an open-source business process management and workflow application platform created in 2001. The BPM process engine is a Java application that executes process definitions created with Bonita Studio. REST and Bonita Engine APIs allow the user to interact programmatically with other processes, platforms, and information systems.', 'logoBonitasoft-BPM (1)_1572449370.png', '2019-10-30 15:29:30', '2019-10-30 15:29:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alirio Aranguren', 'aliriomiguel@gmail.com', NULL, '$2y$10$/EWDuc/be2e2ZY5Ptuw/hubq.WbveqHY6dxM1xxJMcTzUi8iysJnC', NULL, '2019-08-28 19:27:34', '2019-08-28 19:27:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indices de la tabla `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
