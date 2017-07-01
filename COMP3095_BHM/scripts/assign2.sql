-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 07:03 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `comp3095`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user`, `title`, `body`, `time`) VALUES
(29, 12, 'What is the difference between JSF, Servlet and JSP?', 'JSP is a Java view technology running on the server machine which allows you to write template text in client side languages (like HTML, CSS, JavaScript, ect.). JSP supports taglibs, which are backed by pieces of Java code that let you control the page flow or output dynamically.\r\nServlet is a Java application programming interface (API) running on the server machine, which intercepts requests made by the client and generates/sends a response. \r\nJSF is a component based MVC framework which is built on top of the Servlet API and provides components via taglibs which can be used in JSP or any other Java based view technology such as Facelets. Facelets is much more suited to JSF than JSP. ', '2016-12-03 08:00:00'),
(30, 12, 'JavaServer Pages', 'JavaServer Pages (JSP) is a technology that helps software developers create dynamically generated web pages based on HTML, XML, or other document types. Released in 1999 by Sun Microsystems,[1] JSP is similar to PHP and ASP, but it uses the Java programming language.<Br>\r\n<br>\r\nTo deploy and run JavaServer Pages, a compatible web server with a servlet container, such as Apache Tomcat or Jetty, is required.<br>\r\nArchitecturally, JSP may be viewed as a high-level abstraction of Java servlets. JSPs are translated into servlets at runtime; each JSP servlet is cached and re-used until the original JSP is modified.<br>\r\n<br>\r\nJSP can be used independently or as the view component of a server-side model?view?controller design, normally with JavaBeans as the model and Java servlets (or a framework such as Apache Struts) as the controller. This is a type of Model 2 architecture.<br>', '2016-12-03 08:00:00'),
(31, 13, 'Introduction to Spring Framework ', 'The Spring Framework is a Java platform that provides comprehensive infrastructure support for developing Java applications. Spring handles the infrastructure so you can focus on your application.<br>\r\n<br>\r\nSpring enables you to build applications from "plain old Java objects" (POJOs) and to apply enterprise services non-invasively to POJOs. This capability applies to the Java SE programming model and to full and partial Java EE.<br>\r\n<br>\r\nExamples of how you, as an application developer, can benefit from the Spring platform:<br>\r\n<br>\r\nMake a Java method execute in a database transaction without having to deal with transaction APIs.<br>\r\nMake a local Java method a remote procedure without having to deal with remote APIs.<br>\r\nMake a local Java method a management operation without having to deal with JMX APIs.<br>\r\nMake a local Java method a message handler without having to deal with JMS APIs.<br>', '2016-12-03 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `post_id`, `reply`) VALUES
(9, 13, 30, 'What a nice post John !! Really it was very helpful.'),
(10, 13, 29, 'I love you John for sharing this confidential information with me !'),
(11, 12, 31, 'very very helpful post !'),
(12, 12, 29, 'I love you too Jane , let''s get married and give birth to programmer kids.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `major` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `year`, `major`, `username`, `password`) VALUES
(12, 'john', 'doe', 'johnd@gmail.com', '4164155000', '2016', 'programing', 'johndoe', 'testpass'),
(13, 'Jane', 'Doe', 'jane@doe.com', '7412589630', '2016', 'programing', 'janedoe', 'testpass');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
