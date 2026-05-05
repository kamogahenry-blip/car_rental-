-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2024 at 01:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'GA3KA6969', 'assets/img/cars/audi-a4.jpg', 36, 26, 52000, 26000, 'yes'),
(2, 'Hyundai Creta', 'BA2CH2020', 'assets/img/cars/creta.jpg', 22, 12, 29000, 14000, 'yes'),
(3, 'BMW 6-Series', 'BA10PA5555', 'assets/img/cars/bmw6.jpg', 39, 30, 69500, 55000, 'no'),
(4, 'Mercedes-Benz E-Class', 'BA10CH6009', 'assets/img/cars/mcec.jpg', 45, 30, 72000, 52000, 'yes'),
(6, 'Ford EcoSport', 'GA4PA2587', 'assets/img/cars/ecosport.png', 21, 13, 38900, 26000, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 28000, 24000, 'no'),
(8, 'Land Rover Range Rover Sport', 'GA5KH9669', 'assets/img/cars/rangero.jpg', 36, 26, 60000, 50000, 'yes'),
(9, 'MG Hector', 'GA6PA6666', 'assets/img/cars/mghector.jpg', 20, 12, 30000, 25000, 'yes'),
(10, 'Honda CR-V', 'TN17MS1997', 'assets/img/cars/hondacr.jpg', 22, 15, 35000, 20000, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 30000, 26000, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 32000, 28000, 'yes'),
(13, 'Hyundai Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 23, 15, 45000, 35000, 'yes'),
(14, 'Jaguar XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 39, 29, 61000, 43800, 'yes'),
(15, 'Ford Ranger', '123456', 'assets/img/cars/ford.jpeg', 1000, 2000, 65000, 45000, 'yes'),
(16, 'Toyota49GT', '12345679', 'assets/img/cars/toyota.jpeg', 15000, 10000, 25000, 20000, 'yes'),
(19, 'Toyota', '1234567', 'assets/img/cars/gt.jpeg', 12345, 20000, 30000, 25000, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(19, 'ffffff'),
(1, 'harry'),
(3, 'harry'),
(7, 'harry'),
(8, 'harry'),
(9, 'harry'),
(11, 'harry'),
(12, 'harry'),
(15, 'harry'),
(16, 'harry'),
(2, 'jenny'),
(4, 'jenny'),
(6, 'jenny'),
(10, 'jenny'),
(13, 'jenny'),
(14, 'jenny');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('ffffff', 'fff', '1234567', 'fff@gmail.com', 'masaka', '12345'),
('harry', 'Henry', '9876543210', 'harryden@gmail.com', '2477  Harley Vincent Drive', 'password'),
('jenny', 'Jeniffer Washington', '7850000069', 'washjeni@gmail.com', '4139  Mesa Drive', 'jenny'),
('Madam Lucy', 'Hk', '1234567890', 'lucy@gmail.com', 'masaka', '1234'),
('Nerico', 'Nerico', '12344567890', 'nerico@gmail.com', 'Gomba', '123456789'),
('Nic', 'Nerico', '123456789', 'nerico@gmail.com', 'masaka', '12345'),
('tom', 'Tommy Doee', '900696969', 'tom@gmail.com', '4645  Dawson Drive', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('Andrew', 'Mutebi Andrew', '0759422073', 'andrew@gmail.com', 'Masaka', '12345'),
('Annet', 'Annet', '0785556580', 'annet@gmail.com', 'Nyendo mukungwe', 'password'),
('christine', 'Christine', '8544444444', 'chr@gmail.com', '3701  Fairway Drive', 'password'),
('ethan', 'Ethan ', '69741111110', 'thisisethan@gmail.com', '4554  Rowes Lane', 'password'),
('Hassan K', 'Hassan', '078962345', 'hassan@gmail.com', 'Masaka', '12345'),
('Henry', 'Henry Harry', '0709960417', 'henryharry@gmail.com', 'nyendo', 'nyendo'),
('james', 'James', '0258786969', 'james@gmail.com', 'masaka', 'password'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737  Fowler Avenue', 'password'),
('Rex', 'Kamoga Henry', '0709960417', 'kamogarex@gmail.com', 'Masaka', '12345'),
('ug', 'Muna ', '12345678', 'ug@gmail.com', 'kampala', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Bruno ', '27840218658 ', '9547863157', 'Nyendo villa ', 'Male', 'harry', 'no'),
(2, 'Williams', '03191563155 ', '9147523684', 'masaka', 'Male', 'harry', 'yes'),
(3, 'Steeve Rogers', '32346288078 ', '9147523682', '1506  Skinner Hollow Road', 'Male', 'harry', 'yes'),
(4, 'Annet', '04316015965 ', '9187563240', 'Masaka ', 'Female', 'jenny', 'no'),
(5, 'Ben', '68799466631 ', '7584960123', 'Kyotela ', 'Male', 'jenny', 'yes'),
(6, 'William', '36740186040 ', '8421025476', 'Kalisizo', 'Male', 'tom', 'yes'),
(7, 'Nicolas', '44919316260 ', '7541023695', 'Kampala', 'Male', 'harry', 'yes'),
(8, 'Stephen', '94592817723', '5215557850', 'Elgin Street Masaka', 'Male', 'jenny', 'yes'),
(9, 'ANDREW', '98712345', '0709456281', 'Kimanyaa', 'Male', 'harry', 'yes'),
(10, 'Frank', '123457', '078234568', 'Masaka', 'Male', 'ffffff', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681251, 'james', 10, 1, '2018-07-23', '2018-07-25', '2018-07-30', '2018-07-23', 10, 'km', 60, 2, 600, 'R'),
(574681252, 'christine', 11, 2, '2018-07-23', '2018-07-23', '2018-07-23', '2018-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'christine', 6, 7, '2018-07-23', '2018-07-23', '2018-08-03', '2018-07-23', 2600, 'days', NULL, 11, 28600, 'R'),
(574681254, 'ethan', 12, 5, '2018-07-23', '2018-07-23', '2018-07-26', '2018-07-23', 3200, 'days', NULL, 3, 9600, 'R'),
(574681255, 'christine', 8, 5, '2018-07-23', '2018-07-23', '2018-08-08', '2018-07-23', 2400, 'days', NULL, 16, 38400, 'R'),
(574681257, 'james', 7, 4, '2018-08-11', '2018-08-13', '2018-08-17', NULL, 14, 'km', NULL, NULL, NULL, 'NR'),
(574681258, 'lucas', 3, 1, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 2600, 'days', NULL, 1, 2600, 'R'),
(574681259, 'lucas', 14, 8, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 6100, 'days', NULL, 2, 12200, 'R'),
(574681260, 'Rex', 1, 2, '2024-03-23', '2024-03-23', '2024-04-06', '2024-03-23', 5200, 'days', NULL, 14, 72800, 'R'),
(574681261, 'Rex', 2, 8, '2024-03-27', '2024-03-27', '2024-04-06', '2024-03-27', 1400, 'days', NULL, 10, 14000, 'R'),
(574681262, 'Rex', 12, 1, '2024-03-27', '2024-03-27', '2024-04-04', '2024-03-27', 3200, 'days', NULL, 8, 25600, 'R'),
(574681263, 'Rex', 12, 1, '2024-03-27', '2024-03-27', '2024-04-04', '2024-03-27', 3200, 'days', NULL, 8, 25600, 'R'),
(574681264, 'Rex', 12, 1, '2024-03-27', '2024-03-27', '2024-04-04', '2024-03-27', 3200, 'days', NULL, 8, 25600, 'R'),
(574681265, 'Rex', 12, 1, '2024-03-27', '2024-03-27', '2024-04-04', '2024-03-27', 3200, 'days', NULL, 8, 25600, 'R'),
(574681266, 'Rex', 12, 1, '2024-03-27', '2024-03-27', '2024-04-04', '2024-03-27', 3200, 'days', NULL, 8, 25600, 'R'),
(574681267, 'Rex', 15, 7, '2024-03-27', '2024-03-27', '2024-05-16', '2024-03-27', 65000, 'days', NULL, 50, 3250000, 'R'),
(574681268, 'Rex', 3, 1, '2024-05-04', '2024-05-04', '2024-05-11', NULL, 69500, 'days', NULL, NULL, NULL, 'NR'),
(574681269, 'Henry', 13, 5, '2024-05-19', '2024-05-19', '2024-05-25', '2024-07-11', 45000, 'days', NULL, 6, 279400, 'R'),
(574681270, 'Henry', 8, 2, '2024-07-11', '2024-07-11', '2024-07-20', '2024-07-11', 60000, 'days', NULL, 9, 540000, 'R'),
(574681271, 'Henry', 8, 2, '2024-07-11', '2024-07-11', '2024-07-20', '2024-07-11', 60000, 'days', NULL, 9, 540000, 'R'),
(574681272, 'Andrew', 8, 9, '2024-07-11', '2024-07-11', '2024-07-18', '2024-07-11', 60000, 'days', NULL, 7, 420000, 'R'),
(574681273, 'Andrew', 8, 2, '2024-07-11', '2024-07-11', '2024-07-18', '2024-07-11', 60000, 'days', NULL, 7, 420000, 'R'),
(574681274, 'Hassan K', 19, 10, '2024-07-11', '2024-07-11', '2024-07-17', '2024-07-11', 30000, 'days', NULL, 6, 180000, 'R'),
(574681275, 'Andrew', 19, 10, '2024-07-11', '2024-07-11', '2024-07-17', NULL, 25000, 'days', NULL, NULL, NULL, 'NR'),
(574681276, 'Andrew', 19, 10, '2024-07-11', '2024-07-11', '2024-07-17', NULL, 25000, 'days', NULL, NULL, NULL, 'NR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681277;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
