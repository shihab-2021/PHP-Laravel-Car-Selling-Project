-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 04:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_selling_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_07_050534_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interior` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `car_name`, `price`, `interior`, `type`, `rating`, `review`, `engin`, `image_url`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'BMW 4 Series 440XI AWD GRAN COUPE', '$3,132', 'Tan', 'Hatchback', '5', '34432', '6 Cylinders 3.0L', 'https://i.ibb.co/G3YSSFy/fa155555bc774f9798e4bc23a6893977.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories. All advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting. Some of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-07 03:13:55', '2022-06-19 07:22:40'),
(5, 'BMW i3 DEKA WITH RANGE EXT', '$3,131', 'Charcoal', 'Hatchback', '4.5', '34432', 'Electric', 'https://i.ibb.co/4Yv60bn/25e56e4040c3400596e8f7d1037daabb.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories. All advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting. Some of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-07 03:39:27', '2022-06-19 07:22:32'),
(6, 'Acura MDX', '$1,384', 'Gray', 'Sport Utility', '4', '2890', '6 Cylinders 3.5L', 'https://i.ibb.co/HdS1kMt/7653b8c99ead40bcaae4ea54b5a50022.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-07 11:05:21', '2022-06-07 11:05:21'),
(7, 'Alfa Romeo Giulia TI SPORT', '$2,414', 'Charcoal', 'Sedan', '5', '50032', '4 Cylinders 2.0L', 'https://i.ibb.co/yNQ6mdQ/1f740ad706ed4d04895ee54957c49e49.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-07 11:08:57', '2022-06-07 11:08:57'),
(8, 'Alfa Romeo Stelvio SPORT', '$2,414', 'Charcoal', 'Sport Utility', '4', '2890', '4 Cylinders 2.0L', 'https://i.ibb.co/ZKpYBBR/cc10370b2e2c4045bc578089fcb65266.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-07 11:12:26', '2022-06-07 11:12:26'),
(9, 'Audi A4 Sedan PREMIUM', '$2,448', 'Black', 'Sedan', '5', '34432', '4 Cylinders 2.0L', 'https://i.ibb.co/9r5vb1z/8825c58f95c24133b7f93bd984c9d542.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-07 11:15:02', '2022-06-07 11:15:02'),
(13, 'Kia Soul', '$3,132', 'Black', 'Hatchback', '4', '23235', '4 Cylinders 1.6L', 'https://i.ibb.co/FDc68Q1/f6d4aafa99af4ca9a6a56af7f0d07745.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-19 08:16:20', '2022-06-19 08:16:20'),
(14, 'Kia Soul LX', '$20,296', 'Charcoal', 'Hatchback', '4', '19,159', '4 Cylinders 2.0L', 'https://i.ibb.co/GFd7fHB/60c04c66f9724c27b6e286ee9da2360e.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-19 08:21:24', '2022-06-19 08:21:24'),
(15, 'Kia Soul GT LINE', '$21,599', 'Charcoal', 'Hatchback', '4.5', '43,273', '4 Cylinders 2.0L', 'https://i.ibb.co/1qKJhxP/14d62463f22a4d2b961e7e0ac2ea34a5.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-19 08:26:13', '2022-06-19 08:26:13'),
(16, 'MINI Cooper S', '$14,950', 'Tan', 'Hatchback', '4', '34432', '4 Cylinders 2.0L', 'https://i.ibb.co/JqgHWJp/2fc96162de0341c480c4b86256519680.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-19 08:30:37', '2022-06-19 08:30:37'),
(17, '2019 Audi RS 5', '$68,946', 'Black w/Crescendo Red', 'Gasoline', '5', '34432', '6 Cylinders 3.2L', 'https://i.ibb.co/4Nc1ysc/9e136b22b5aa4a29ac47781ca874b2ae.jpg', 'arShop is a whole new way to buy a pre-owned car. We’ve made buying a car online easier than ever before. Quality cars, all-in upfront pricing, and seamless delivery. Shop when and where you’re comfortable, pressure-free. Pick your vehicle, finalize your monthly payment and complete your purchase. You can buy with confidence from CarShop knowing that every eligible vehicle comes with a no-cost 6-month, 6,000-mile limited warranty. And, if you have any doubts, you can return your vehicle up to 5 days after the sale – no questions asked. It’s just one more way we give you peace of mind today and down the road.', '2022-06-19 08:42:35', '2022-06-19 08:42:35'),
(18, 'BMW M4 NAVIGATION', '$51,550', 'Black', 'Convertible', '4', '34432', '6 Cylinders 3.0L', 'https://i.ibb.co/qmgWHVh/e7e74253e4444b959b57df6b6f262195.jpg', 'It is the customer’s sole responsibility to verify the existence and condition of any equipment listed. Neither CarShop nor the website provider is responsible for misprints on prices or equipment. It is the customer’s sole responsibility to verify the accuracy of the prices with the dealer, including the pricing for all added accessories.\r\n\r\nAll advertised prices exclude government fees and taxes, any finance charges, any dealer document processing charge, any electronic filing charge, and any emission testing charge. All advertised prices expire at midnight on the day of posting.\r\n\r\nSome of our used vehicles may be subject to unrepaired safety recalls. Check for a vehicle’s unrepaired recalls by VIN at http://vinrcl.safercar.gov/vin', '2022-06-19 08:50:17', '2022-06-19 08:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mishon', 'mishon@gmail.com', '$2y$10$Rt2gvKMVAUV9DySyATFWLOlSfyl9wDXWJEP5qZtT7cC4EYMehIxcS', '2022-06-06 00:47:34', '2022-06-06 00:47:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
