-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 03:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(25) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_id`, `merchant_id`, `product_id`) VALUES
(25, 5, 4, 5),
(26, 5, 4, 5),
(27, 6, 4, 5),
(28, 6, 4, 5),
(31, 8, 4, 6),
(32, 8, 4, 5),
(34, 8, 4, 5),
(36, 10, 4, 5),
(37, 11, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(12) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `profile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `Email`, `Password`, `Mobile`, `Address`, `profile`) VALUES
(4, 'Sujal Kumar', 'sujalkumar@lpu.in', '25d55ad283aa400af464c76d713c07ad', '2147483647', 'ludhiana', 'customer-photo/wallpaper.jpg'),
(5, 'Sujal Kumar', 'kumarkumar@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2147483647', '12345678', 'customer-photo/arun.jpg'),
(6, 'Prince', 'prince1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '8574151850', 'niwaas gali', 'customer-photo/wallpaper.jpg'),
(7, 'Prince', 'prince12@gmail.com', '61a1f0a1f452973526fdea6fd7ec9fbc', '8574151850', 'niwaas gali', 'customer-photo/Screenshot (15).png'),
(8, 'Sujal Kumar', 'sujalkumar232@lpu.in', '25d55ad283aa400af464c76d713c07ad', '12345678', 'niwaas gali', 'customer-photo/Screenshot 2024-09-05 175326.png'),
(9, 'Sujal12', 'sujalkumar232@lpu.in', 'e10adc3949ba59abbe56e057f20f883e', '12345678', 'niwaas gali', 'customer-photo/wallpaper.jpg'),
(10, 'prince', 'prince123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8527419637', 'phagwara', 'customer-photo/a word logo for coderFashion ecomme'),
(11, 'LPU', 'lpu12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8527419631', 'zkjdldfhkz', 'customer-photo/user-sign-icon-person-symbol-human-');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` int(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `name`, `password`, `mobile`, `address`, `profile`, `email`) VALUES
(1, 'John Doe', '25f9e794323b453885f5181f1b624d0b', 123, '123 Main St, Springfield, IL', 'merchant-photo/image1.jpg', 'john.doe@example.com'),
(2, 'Jane Smith', '25f9e794323b453885f5181f1b624d0b', 234, '456 Elm St, Metropolis, NY', 'merchant-photo/image2.jpg', 'jane.smith@example.com'),
(3, 'Mike Johnson', '25f9e794323b453885f5181f1b624d0b', 345, '789 Oak St, Gotham, NJ', 'merchant-photo/image3.jpg', 'mike.johnson@example.com'),
(4, 'Sujal Kumar', '25f9e794323b453885f5181f1b624d0b', 2147483647, 'bh2', 'merchant-photo/wallpaper.jpg', 'skumarmathur19320@gmail.com'),
(5, 'merchant', 'e10adc3949ba59abbe56e057f20f883e', 147852096, 'no', 'merchant-photo/Screenshot 2024-09-05 175326.png', 'merchant@gmail.com'),
(6, 'Emily Davis', '25f9e794323b453885f5181f1b624d0b', 456, '101 Maple St, Star City, CA', 'merchant-photo/image6.jpg', 'emily.davis@example.com'),
(7, 'David Wilson', '25f9e794323b453885f5181f1b624d0b', 567, '202 Pine St, Sunnydale, TX', 'merchant-photo/image7.jpg', 'david.wilson@example.com'),
(8, 'Sarah Miller', '25f9e794323b453885f5181f1b624d0b', 678, '303 Birch St, Rivertown, FL', 'merchant-photo/image8.jpg', 'sarah.miller@example.com'),
(9, 'James Brown', '25f9e794323b453885f5181f1b624d0b', 789, '404 Cedar St, Hill Valley, CO', 'merchant-photo/image9.jpg', 'james.brown@example.com'),
(10, 'Linda Taylor', '25f9e794323b453885f5181f1b624d0b', 890, '505 Redwood St, Twin Peaks, WA', 'merchant-photo/image10.jpg', 'linda.taylor@example.com'),
(11, 'prince', 'e10adc3949ba59abbe56e057f20f883e', 2147483647, 'phagwara', 'merchant-photo/a word logo for coderFashion ecommerce website.png', 'prince1234@gmail.com'),
(12, 'lpu pk', 'fcea920f7412b5da7be0cf42b8c93759', 2147483647, 'dsvfs', 'merchant-photo/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg', 'lpu122@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `booked` int(20) NOT NULL,
  `merchant` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `category`, `brand`, `description`, `quantity`, `booked`, `merchant`) VALUES
(5, 'Wallpaper2', 78, 'product-photo/wallpaper.jpg', 'Home &amp; Decor', 'Kumars', 'adfadfa', 44, 0, 4),
(6, 'Wallpaper2', 78, 'product-photo/wallpaper2.jpeg', 'Home &amp; Decor', 'Kumar', 'adfadfa', 44, 0, 4),
(7, 'Cloth', 50, 'product-photo/Activity 9.jpg', 'Clothing', 'Puma', 'this a= kfjnauf kjabsdiufa jashfiua oanhsefkan', 5, 0, 4),
(38, 'Ultra HD 4K TV', 500, 'product-photo/image1.webp', 'Electronics', 'Samsung', '55 inch Ultra HD 4K TV with Smart features', 20, 5, 1),
(39, 'Wireless Bluetooth Headphones', 90, 'product-photo/image2.jpg', 'Electronics', 'Sony', 'Noise-cancelling wireless headphones with microphone', 35, 12, 2),
(40, 'Smart Fitness Tracker', 130, 'product-photo/image3.webp', 'Wearables', 'Fitbit', 'Track your heart rate, steps, and sleep patterns', 50, 20, 3),
(41, 'Gaming Laptop', 800, 'product-photo/image4.jpg', 'Computers', 'HP', 'High performance laptop with 16GB RAM, 512GB SSD', 15, 6, 4),
(42, 'Portable Power Bank', 30, 'product-photo/image5.jpg', 'Accessories', 'Anker', 'Fast charging portable power bank, 10,000mAh', 100, 45, 5),
(43, 'Bluetooth Speaker', 60, 'product-photo/image6.jpg', 'Electronics', 'JBL', 'Waterproof portable Bluetooth speaker with 12 hours playtime', 80, 30, 6),
(44, 'Cordless Vacuum Cleaner', 200, 'product-photo/image7.jpg', 'Home Appliances', 'Dyson', 'Lightweight cordless vacuum with powerful suction', 25, 8, 7),
(45, 'Smartphone - 128GB', 900, 'product-photo/image8.webp', 'Mobile', 'Apple', 'Latest iPhone with 128GB storage and 5G support', 50, 15, 8),
(46, 'Electric Kettle', 50, 'product-photo/image9.webp', 'Home Appliances', 'Cuisinart', 'Stainless steel electric kettle with 1.7L capacity', 70, 20, 9),
(47, 'Smart LED Light Bulb', 20, 'product-photo/image10.webp', 'Home Automation', 'Philips', 'Wi-Fi controlled LED bulb with 16 million colors', 150, 70, 10),
(48, 'Air Fryer', 130, 'product-photo/image11.jpg', 'Kitchen', 'Ninja', 'Healthier frying with little to no oil, 4 quart capacity', 40, 10, 1),
(49, 'Corded Electric Drill', 40, 'product-photo/image12.jpg', 'Tools', 'Black & Decker', 'Heavy-duty corded drill for home improvement projects', 60, 25, 2),
(50, 'E-Book Reader', 120, 'product-photo/image13.webp', 'Books & Stationery', 'Kindle', '6-inch e-ink display, 8GB storage for thousands of books', 45, 15, 3),
(51, 'Gaming Console', 400, 'product-photo/image14.jpg', 'Gaming', 'Sony', 'PlayStation 5 with dual controllers and 1TB SSD', 30, 12, 4),
(52, 'Tablet 10-inch', 250, 'product-photo/image15.webp', 'Mobile', 'Samsung', 'Android tablet with 10-inch screen, 32GB storage', 80, 40, 5),
(53, 'Electric Toothbrush', 60, 'product-photo/image16.webp', 'Health & Beauty', 'Oral-B', 'Rechargeable electric toothbrush with 5 cleaning modes', 120, 60, 6),
(54, 'Smart Thermostat', 150, 'product-photo/image17.jpg', 'Home Automation', 'Nest', 'Smart thermostat with energy-saving features and app control', 30, 14, 7),
(55, 'Instant Pot Pressure Cooker', 80, 'product-photo/image18.jpg', 'Kitchen', 'Instant Pot', 'Multi-functional electric pressure cooker with 7 presets', 50, 22, 8),
(56, 'Digital Camera', 500, 'product-photo/image19.jpg', 'Photography', 'Canon', 'DSLR camera with 18-55mm lens, full HD video', 10, 5, 9),
(57, 'Electric Razor', 70, 'product-photo/image20.webp', 'Health & Beauty', 'Philips', 'Cordless electric razor with wet and dry options', 75, 30, 10),
(58, 'LED Desk Lamp', 30, 'product-photo/image21.webp', 'Office Supplies', 'Lumi', 'Adjustable LED desk lamp with touch control and multiple brightness settings', 200, 100, 1),
(59, 'Backpack for Laptop', 40, 'product-photo/image22.jpg', 'Accessories', 'SwissGear', 'Durable backpack with padded compartment for laptop and tablet', 120, 50, 2),
(60, 'Wireless Mouse', 20, 'product-photo/image23.jpg', 'Accessories', 'Logitech', 'Wireless mouse with ergonomic design and USB receiver', 150, 70, 3),
(61, 'Memory Foam Mattress', 300, 'product-photo/image24.webp', 'Furniture', 'Zinus', '12-inch memory foam mattress with pressure-relieving comfort', 25, 10, 4),
(62, 'Smart Door Lock', 200, 'product-photo/image25.webp', 'Home Automation', 'August', 'Keyless entry smart lock with remote access via app', 35, 14, 5),
(63, 'Compact Refrigerator', 150, 'product-photo/image26.webp', 'Appliances', 'Haier', 'Mini refrigerator with freezer section, 4.5 cu ft capacity', 50, 20, 6),
(64, 'Electric Griddle', 50, 'product-photo/image27.jpg', 'Kitchen', 'Presto', 'Non-stick electric griddle with large cooking surface', 60, 25, 7),
(65, 'Portable Air Conditioner', 300, 'product-photo/image28.jpg', 'Home Appliances', 'Honeywell', 'Portable air conditioner with 10,000 BTU cooling power', 30, 10, 8),
(66, 'Smartphone - 64GB', 600, 'product-photo/image29.jpg', 'Mobile', 'Samsung', '64GB storage smartphone with OLED screen and fast charging', 50, 20, 9),
(67, 'Wireless Charging Pad', 25, 'product-photo/image30.jpg', 'Accessories', 'Anker', 'Fast wireless charging pad for iPhone, Android, and more', 100, 45, 10),
(68, 'Wallpaper', 120, 'product-photo/a word logo for coderFashion ecommerce website.png', 'Home &amp; Garden', 'jklx', 'new look wallpaper', 4, 0, 11),
(69, 'dsfgs', 123, 'product-photo/t-shirt_1203-8007.avif', 'Electronics', 'sdfvfdx', 'dsfgvdx', 12, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `merchant_id`, `product_id`) VALUES
(8, 7, 4, 7),
(10, 8, 4, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `wishlist_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
