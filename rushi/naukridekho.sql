-- Create and use the database
DROP DATABASE IF EXISTS naukridekho;
CREATE DATABASE naukridekho;
USE naukridekho;

-- Create job table
CREATE TABLE `job` (
  `job_id` int(5) NOT NULL AUTO_INCREMENT,
  `jobtitle` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `jobduration` varchar(20) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `jobdetail` varchar(100) NOT NULL,
  `budget` varchar(100) NOT NULL,
  `posted_by` varchar(5) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert initial data
INSERT INTO `job` (`jobtitle`, `address`, `profession`, `jobduration`, `contactNo`, `jobdetail`, `budget`, `posted_by`) VALUES
('Plumber needed', 'jalgaon', 'Plumber', '1-2 Days', '9142505304', 'Plumber needed for fitting', '500', '1'),
('carpainter', 'bambhori', 'worker', '1-2 Days', '657485858', 'expert', '50000', '2'),
('Electrician needed', 'jalgaon', 'Electrician', '2 days', '9142505305', 'electrician is needed for wiring', '800', '3');

-- Create user table
CREATE TABLE `user` (
  `u_id` int(5) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `job_id` int(5) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert user data
INSERT INTO `user` (`firstname`, `lastname`, `dob`, `gender`, `email`, `phonenumber`, `usertype`, `password`, `job_id`) VALUES
('RUSHIKESH', 'ALHAT', '15/05/2001', 'M', 'rushi@gmail.com', '1111111111', '2', 'rushi@123', 1),
('rushi', 'KESHAV', '15/01/2001', 'M', '007rushikeshav@gmail.com', '9142505304', '2', 'rushi@123', 2),
('TEJASWINI', 'PAWAR', '19/07/2001', 'F', 'teju@gmail.com', '9999999999', '2', 'teju@123', 3);

-- Create jobapplication table
CREATE TABLE `jobapplication` (
  `u_id` int(5) NOT NULL,
  `job_id` int(5) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `owndetail` varchar(100) NOT NULL,
  `phoneNo` varchar(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert jobapplication data
INSERT INTO `jobapplication` (`u_id`, `job_id`, `firstname`, `lastname`, `email`, `owndetail`, `phoneNo`) VALUES
(0, 9, 'rushi', 'KESHAV', 'rushi@gmail.com', 'yhg', '9142505304'),
(0, 9, 'RUSHI', 'ALHAT', 'rushi1@gmail.com', 'plumber', '1111111111'),
(0, 10, 'RUSHI', 'ALHAT', 'rushi@gmail.com', 'red', '1111111111'),
(0, 3, 'ajay', 'tanvar', 'ajay1@gmail.com', 'wkshnj', '2222222222'),
(0, 9, 'ajay', 'tanvar', 'ajay@gmail.com', 'car', '2222222222');
