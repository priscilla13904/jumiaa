-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2024 at 11:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jumiaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_desc` varchar(500) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Infinix', 'this is about infinix', 20000, 'phones', 'phone1.jpg'),
(2, 'Aura X Pro', 'A flagship smartphone with a 6.7-inch OLED display, 108MP camera, and AI-enhanced performance.\r\n', 139860, 'Phones', 'phone2.jpg'),
(3, 'PixelMini', ' compact smartphone with a 5.4-inch display, ideal for minimalists who prioritize portability without sacrificing performance.', 55860, 'Phones', 'phone3.jpg'),
(4, 'PhotoSnap 12', 'A photography-centric smartphone featuring a triple-lens camera system, night mode, and advanced editing tools.', 125860, 'Phones', 'phone3.jpg'),
(5, 'Samsung Galaxy S23 Ultra', 'he ultimate flagship with a 6.8-inch Dynamic AMOLED display, 200MP camera, and unparalleled performance.', 500001, 'Phones', 'phone4.jpg'),
(6, 'Xiaomi Redmi Note 11', 'An affordable smartphone with a 6.43-inch AMOLED display, versatile camera system, and reliable performance.', 39860, 'Phones', 'phone5.jpg'),
(7, 'OnePlus Nord 2T', 'A mid-range device offering a 6.43-inch AMOLED display, strong performance, and a capable camera setup.', 55860, ' Phones', 'phone6.jpg'),
(8, ' Oppo A78', ' A stylish smartphone with a 6.43-inch display, good camera performance, and a long-lasting battery for daily use.', 39860, 'Phones', 'phone6.jpg'),
(9, 'Samsung Galaxy M34', ' A feature-packed smartphone with a large 6.5-inch display, impressive battery life, and versatile camera features', 103442, ' Phones', 'phone3.jpg'),
(10, ' Samsung Galaxy Z Flip 5', ' A stylish foldable smartphone featuring a 6.7-inch display, compact design, and powerful camera system.', 200500, 'Phone', 'phone3.jpg'),
(11, ' Sony WH-1000XM5 Headphones', 'Industry-leading noise-canceling over-ear headphones with exceptional sound quality and up to 30 hours of battery life.', 7658438, 'electronics', 'screen1.jpg'),
(12, 'Apple iPad Air (5th Gen)', 'A powerful tablet featuring a 10.9-inch Liquid Retina display, M1 chip, and support for the Apple Pencil for creative tasks.', 4246345, 'electronics', 'screen2.jpg'),
(13, 'LG 55-Inch 4K UHD Smart TV', 'A stunning 4K UHD Smart TV with vibrant colors, webOS platform, and access to popular streaming services.', 235255, 'electronics', 'screen3.jpg'),
(14, ' HP Pavilion x360 14 Laptop', 'A versatile 2-in-1 laptop with a 14-inch touchscreen, Intel i5 processor, and a sleek design, perfect for productivity on the go.', 235234, 'electronics', 'screen4.jpg'),
(15, 'Canon EOS R50 Camera', 'A compact mirrorless camera with a 24.1MP sensor, dual pixel autofocus, and 4K video capabilities for photography enthusiasts.', 398605, 'electronics', 'sreen6.jpg'),
(16, 'Fitbit Charge 5', 'A health and fitness tracker with built-in GPS, heart rate monitoring, and daily readiness score to optimize workouts.', 353562, 'electronics', 'sreen4.jpg'),
(17, 'Glow Face Serum', 'A rejuvenating serum packed with antioxidants to brighten your skin.', 2500, 'Beauty', 'bed1.jpg'),
(18, 'Hydrating Face Mask', 'An ultra-hydrating mask that leaves your skin soft and supple.', 1500, 'Beauty', 'bed2.jpg'),
(19, 'Luxury Body Lotion', 'A rich body lotion that deeply moisturizes and nourishes the skin.', 2000, 'Beauty', 'bed3.jpg'),
(20, 'Revitalizing Eye Cream', 'An eye cream that reduces puffiness and dark circles.', 3000, 'Beauty', 'bed4.jpg'),
(21, 'Nourishing Hair Oil', 'A blend of natural oils that promotes shiny and healthy hair.', 1800, 'Beauty', 'bed5.jpg'),
(22, 'Lip Plumping Gloss', 'A glossy lip treatment that plumps and hydrates lips.', 1200, 'Beauty', 'bed6.jpg'),
(23, 'Organic Facial Cleanser', 'A gentle cleanser that removes impurities without stripping moisture.', 1600, 'Beauty', 'bed6.jpg'),
(24, 'Exfoliating Scrub', 'A scrub that sloughs away dead skin cells for a smooth complexion.', 1400, 'Beauty', 'bed8b.jpg'),
(25, 'Sunscreen SPF 50', 'A lightweight sunscreen that protects your skin from harmful UV rays.', 2200, 'Beauty', 'bed9.jpg'),
(26, 'Makeup Setting Spray', 'A setting spray that keeps your makeup fresh and in place all day.', 1300, 'Beauty', 'bed10.jpg'),
(27, 'Classic White T-Shirt', 'A timeless wardrobe staple made from soft cotton.', 1500, 'Fashion', 'decor1.jpg'),
(28, 'Denim Jacket', 'A stylish and versatile denim jacket perfect for layering.', 3500, 'Fashion', 'decor2.jpg'),
(29, 'Chic Black Dress', 'An elegant black dress suitable for both casual and formal occasions.', 4500, 'Fashion', 'decor3.jpg'),
(30, 'Leather Ankle Boots', 'Trendy leather ankle boots that add a touch of sophistication.', 7000, 'Fashion', 'decor4.jpg'),
(32, 'Stylish Sunglasses', 'Fashion-forward sunglasses that provide UV protection and style.', 2500, 'Fashion', 'decor1.jpg'),
(33, 'Wool Knit Scarf', 'A cozy wool scarf perfect for keeping warm in colder months.', 2000, 'Fashion', 'decor2.jpg'),
(34, 'Casual Sneakers', 'Comfortable sneakers for everyday wear with a modern design.', 4000, 'Fashion', 'decor3.jpg'),
(35, 'Elegant Handbag', 'A sophisticated handbag that complements any outfit.', 6000, 'Fashion', 'decor4.jpg'),
(36, 'Trendy Joggers', 'Relaxed-fit joggers made from breathable fabric for ultimate comfort.', 2500, 'Fashion', 'decor5.jpg'),
(42, 'Stylish Sunglasses', 'Fashion-forward sunglasses that provide UV protection and style.', 2500, 'Fashion', 'decor1.jpg'),
(47, 'Refrigerator', 'Energy-efficient refrigerator with adjustable shelves.', 800, 'Appliances', 'appl.jpg'),
(48, 'Microwave Oven', '1000W microwave with multiple cooking settings.', 90, 'Appliances', 'appl2.jpg'),
(49, 'Washing Machine', 'Front-load washing machine with a large capacity.', 600, 'Appliances', 'appl4.jpg'),
(50, 'Dishwasher', 'Quiet dishwasher with energy-saving features.', 500, 'Appliances', 'appl3.jpg'),
(51, 'Air Conditioner', 'Portable air conditioner with remote control.', 350, 'Heating & Cooling', 'appl4.jpg'),
(52, 'Electric Kettle', 'Fast boiling electric kettle with automatic shut-off.', 30, 'Appliances', 'appl5.jpg'),
(53, 'Blender', 'High-performance blender with multiple speed settings.', 50, 'Appliances', 'appl3.jpg'),
(54, 'Toaster', '4-slice toaster with variable browning control.', 40, 'Appliances', 'appl4.jpg'),
(55, 'skirts', 'tyjyjhjyhjhj', 455, 'beauty', 'picture 5.png'),
(56, 'fridge ', 'its a bosch', 8, 'electronics', 'team1.png'),
(57, 'fridge ', 'its a bosch', 8, 'electronics', 'team1.png'),
(58, 'Floral Maxi Dress', ' A flowing maxi dress with vibrant floral prints, perfect for summer outings and beach parties.', 460, 'dresses', 'istockphoto-976671524-612x612.jpg'),
(59, ' Classic Little Black Dress', 'Timeless and elegant, this fitted LBD features a sweetheart neckline and a flattering silhouette for any occasion.', 5463, 'dresses', 'istockphoto-178851955-612x612.jpg'),
(60, ' Bohemian Midi Dress', 'A lightweight midi dress with intricate lace details and a relaxed fit, ideal for boho-chic lovers.', 3252, 'dresses', 'istockphoto-1486286576-612x612.jpg'),
(61, ' Denim Shirt Dress', 'A casual yet stylish denim dress with a button-up front and cinched waist, perfect for everyday wear.', 35432, 'dresses', 'dress.jpg'),
(62, 'A-Line Party Dress', 'This flirty A-line dress features a lace overlay and flared skirt, perfect for special occasions and parties.', 52656, 'dresses', 'istockphoto-1436155322-612x612.jpg'),
(63, ' Off-Shoulder Sundress', ' A playful off-shoulder sundress with a flared hem and adjustable straps, great for warm-weather outings.', 5233, 'dresses', 'istockphoto-976671524-612x612.jpg'),
(64, 'Wrap Dress', 'A versatile wrap dress with a flattering fit that can be dressed up or down for various occasions.', 7643, 'dresses', 'istockphoto-1393634672-612x612.jpg'),
(65, 'Shift Dress', ' A simple yet chic shift dress made from soft fabric, perfect for layering or wearing on its own.', 343, 'dresses', 'istockphoto-934408078-612x612.jpg'),
(66, 'Vintage-Inspired Tea Dress', 'A charming tea dress with a retro print and a cinched waist, reminiscent of classic styles from the past.', 5346, 'dresses', 'premium_photo-1673384389447-5a4364e7c93b.avif'),
(67, 'Vintage-Inspired Tea Dress', 'A charming tea dress with a retro print and a cinched waist, reminiscent of classic styles from the past.', 5346, 'dresses', 'premium_photo-1673384389447-5a4364e7c93b.avif'),
(68, 'Sequin Evening Gown', 'A dazzling evening gown adorned with sequins, featuring a fitted bodice and flowing skirt, perfect for formal events.', 32525, 'dresses', 'istockphoto-1486286576-612x612.jpg'),
(69, 'Classic Baseball Cap', ' timeless baseball cap featuring an adjustable strap, perfect for casual outings and outdoor activities.', 235, 'cap', 'istockphoto-185248743-612x612.jpg'),
(70, 'Trucker Hat', 'A stylish trucker hat with a breathable mesh back and vibrant graphic design, ideal for summer adventures.', 432, 'cap', 'istockphoto-474219511-612x612.jpg'),
(71, ' Beanie with Pom-Pom', ' A cozy knit beanie with a playful pom-pom on top, perfect for keeping warm during the winter months.', 326, 'cap', 'istockphoto-526131500-612x612.jpg'),
(72, 'Snapback Cap', 'A trendy snapback cap featuring a flat brim and embroidered logo, perfect for street style enthusiasts.', 235, 'cap', 'istockphoto-811961728-612x612.jpg'),
(73, 'Sun Hat', 'A wide-brimmed sun hat made from lightweight fabric, offering UV protection for beach days and outdoor fun.', 45332, 'cap', 'istockphoto-899556798-612x612.jpg'),
(74, ' Bucket Hat', 'A lightweight sports visor with adjustable strap, designed for athletes and outdoor enthusiasts seeking sun protection.', 34562, 'cap', 'istockphoto-1204361591-612x612.jpg'),
(75, ' Dad Hat', 'A comfortable, unstructured dad hat with a curved brim and embroidered patch, perfect for a laid-back look.', 523, 'cap', 'istockphoto-1217352993-612x612.jpg'),
(76, 'Performance Cap', 'A moisture-wicking performance cap designed for active lifestyles, featuring a breathable fabric and reflective details.', 423, 'dresses', 'istockphoto-1480922000-612x612.jpg'),
(77, 'Fashion Fedora', 'A chic fedora hat made from soft felt, perfect for adding a touch of sophistication to any outfit.', 3542, 'cap', 'istockphoto-1451763647-612x612.jpg'),
(78, ' Chic Everyday Tote', 'This spacious tote is perfect for daily errands or a day at the office. Made from durable canvas with stylish leather accents, it features a roomy interior and inner pockets for', 262, 'handbags', 'istockphoto-1525596898-612x612.webp'),
(79, ' Elegant Evening Clutch', 'A stunning clutch for your next night out. Crafted from soft satin with intricate beading, it easily fits your essentials and adds a touch of glamour to any outfit.', 5265, 'handbags', 'istockphoto-1527665525-612x612.webp'),
(80, ' Casual Messenger Bag', 'Ideal for the on-the-go lifestyle, this messenger bag combines style and practicality. With an adjustable strap and multiple pockets, it’s perfect for students or commuters.', 5253, 'handbags', 'photo-1524498250077-390f9e378fc0.avif'),
(81, ' Stylish Hobo Bag', 'This relaxed hobo bag offers a bohemian flair with its soft leather and slouchy silhouette. A spacious interior and unique design make it a fashionable choice for everyday use.', 6543, 'handbags', 'photo-1620999590313-0b243aa9f740.avif'),
(82, ' Trendy Bucket Bag', ' Embrace the latest fashion with this trendy bucket bag. Made from faux leather, it features a drawstring closure and an adjustable strap, making it both stylish and functional.', 4563, 'handbags', 'premium_photo-1664392147011-2a720f214e01.avif'),
(83, ' Classic Satchel', ': A timeless satchel designed for elegance and functionality. Featuring a structured shape and multiple compartments, it’s perfect for work or casual outings.', 4643, 'handbags', 'premium_photo-1672829371769-bcff266023a4.avif'),
(84, ' Modern Sling Bag', ' This sleek sling bag is perfect for minimalist fashion lovers. With a compact design and adjustable strap, it’s great for running errands or casual outings.', 2365, 'handbags', 'photo-1632282003890-020318a49e62.avif'),
(85, 'Luxury Leather Backpack', ' Elevate your style with this luxury leather backpack. Ideal for travel or daily use, it combines sophistication with practicality and features padded straps for comfort.', 32523, 'handbags', 'istockphoto-171264968-612x612.webp'),
(86, ' Quirky Print Crossbody', 'Add a pop of personality with this quirky print crossbody bag. Lightweight and compact, it’s perfect for a day out or festivals, ensuring your essentials are always close at hand.', 3252, 'handbags', 'istockphoto-1525596898-612x612.webp'),
(87, 'Functional Diaper Bag', 'Designed for modern parents, this stylish diaper bag combines fashion and functionality. It features multiple pockets, insulated bottle holders, and a changing mat, all in a', 46354, 'handbags', 'istockphoto-1527665525-612x612.webp'),
(88, 'Cozy Cabin Crew Socks', 'Stay warm and snug in these ultra-soft crew socks. Made from a blend of cotton and wool, they feature a stylish cabin pattern that’s perfect for lounging at home or by the fire.', 345, 'socks', 'istockphoto-184866244-612x612.jpg'),
(89, 'Athletic Performance Socks', 'Designed for maximum comfort and support, these performance socks feature moisture-wicking technology and arch support, making them ideal for running or any high-intensity workout.', 4643, 'socks', 'istockphoto-185065359-612x612.jpg'),
(90, ' Fun Animal Print Ankle Socks', 'Add a playful touch to your wardrobe with these cute ankle socks featuring fun animal prints. Made from breathable fabric, they’re perfect for everyday wear.', 543, 'socks', 'istockphoto-494214254-612x612.jpg'),
(91, 'Classic Black Dress Socks', ' Elevate your formal attire with these classic black dress socks. Made from fine cotton with a touch of stretch, they ensure a comfortable fit and a polished look.', 23553, 'socks', 'istockphoto-543836220-612x612.jpg'),
(92, 'Colorful Striped Knee-High Socks', 'Make a statement with these vibrant knee-high socks. The bold stripes add a pop of color to any outfit, and they’re perfect for both casual and dressy occasions.', 3245, 'handbags', 'istockphoto-1062826636-612x612.jpg'),
(93, ' Eco-Friendly Bamboo Socks', ' Embrace sustainability with these eco-friendly socks made from bamboo fibers. Soft and breathable, they provide ultimate comfort while being kind to the planet.', 6575, 'socks', 'istockphoto-1191172926-612x612.jpg'),
(94, 'Cute Patterned Sock Set', 'This set of three patterned socks features playful designs, perfect for adding variety to your sock drawer. Made from a comfortable cotton blend, they’re a must-have for any sock lover.', 5665, 'socks', 'istockphoto-1246454140-612x612.jpg'),
(95, 'Thermal Winter Socks', 'Keep your feet warm during the colder months with these thermal winter socks. Thick and insulated, they are perfect for outdoor activities or cozy nights in.', 6464, 'socks', 'sock.jpg'),
(96, ' Luxury Merino Wool Socks', ' Experience unparalleled comfort with these luxury merino wool socks. Soft and breathable, they regulate temperature, making them perfect for any season.', 4456, 'socks', 'sock1.jpg'),
(97, ' Novelty Holiday Socks', 'Celebrate the season with these fun novelty holiday socks. Featuring festive patterns and vibrant colors, they’re perfect for gifting or wearing to holiday parties.', 450, 'socks', 'sock2.jpg'),
(98, ' Classic Leather Dress Belt', 'Elevate your formal attire with this classic leather dress belt. Made from high-quality genuine leather, it features a sleek, polished buckle that complements any suit.', 2234, 'belt', 'istockphoto-492845800-612x612.webp'),
(99, 'Casual Canvas Belt', 'Perfect for everyday wear, this casual canvas belt is both durable and stylish. Featuring a sturdy metal buckle and adjustable sizing, it pairs well with jeans or shorts.', 567, 'belt', 'istockphoto-494839165-612x612.webp'),
(100, 'Reversible Fashion Belt', 'Enjoy two looks in one with this reversible fashion belt. One side is sleek black, while the other is a trendy brown, making it versatile for any occasion.', 500, 'belt', 'photo-1684510334550-0c4fa8aaffd1.avif'),
(101, ' Sporty Adjustable Belt', ' Designed for active lifestyles, this sporty adjustable belt features a quick-release buckle and moisture-wicking material. Ideal for workouts or outdoor adventures.', 3453, 'belt', 'istockphoto-1351476624-612x612.jpg'),
(102, 'Braided Leather Belt', 'Add a touch of sophistication to your outfit with this braided leather belt. Its unique texture and classic buckle make it a stylish choice for both casual and semi-formal looks.', 5765, 'belt', 'istockphoto-2149156623-612x612.jpg'),
(103, 'Vintage Style Western Belt', 'Embrace your inner cowboy with this vintage-style western belt. Made from distressed leather with intricate detailing, it’s perfect for adding a rugged touch to any outfit.', 3450, 'belt', 'istockphoto-1569244857-612x612.jpg'),
(104, 'Elastic Stretch Belt', 'Enjoy comfort and flexibility with this elastic stretch belt. Perfect for casual wear, it features an easy-to-use clasp and is great for all body types.', 4582, 'belt', 'photo-1665573708655-7320ed78bbeb.avif'),
(105, '. Designer Statement Belt', ' Make a bold statement with this designer-inspired belt. Featuring an oversized buckle and eye-catching design, it’s perfect for elevating any outfit.', 4576, 'belt', 'photo-1679759022456-a7eae2257ba2.avif'),
(106, 'Narrow Fashion Belt', ' This narrow fashion belt is ideal for cinching dresses or adding flair to your outfit. Made from faux leather, it’s lightweight and perfect for layering.', 3456, 'belt', 'photo-1664286074176-5206ee5dc878.avif'),
(107, 'Workwear Utility Belt', ': Designed for practicality, this workwear utility belt features multiple pockets and loops for tools. Made from heavy-duty materials, it’s perfect for tradespeople or DIY enthusiasts.', 1000, 'belt', 'istockphoto-1569244857-612x612.jpg'),
(108, 'Eco-Friendly Bamboo Socks', 'Make a statement with these vibrant knee-high socks. The bold stripes add a pop of color to any outfit, and they’re perfect for both casual and dressy occasions.', 3432, 'socks', 'istockphoto-185065359-612x612.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
