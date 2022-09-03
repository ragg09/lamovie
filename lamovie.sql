-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 01:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamovie`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `note`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lauren Cohan', 'laboriosam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(2, 'Rooney Mara', 'numquam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(3, 'Reese Witherspoon', 'blanditiis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(4, 'Kenneth Branagh', 'iste', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(5, 'Jennifer Connelly', 'natus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(6, 'Ethan Hawke', 'quaerat', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(7, 'Paul Dano', 'dolor', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(8, 'Adrien Brody', 'est', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(9, 'Jim Carrey', 'qui', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(10, 'James Dean', 'omnis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(11, 'Viola Davis', 'nihil', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(12, 'Jamie Fox', 'officiis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(13, 'Gene Kelly', 'atque', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(14, 'Vera Farmiga', 'ducimus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(15, 'Casey Affleck', 'molestiae', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(16, 'Kirk Douglas', 'dolor', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(17, 'Armie Hammer', 'cum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(18, 'Scarlett Johanson', 'quam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(19, 'Tobey Maguire', 'aut', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(20, 'Marion Cotillard', 'saepe', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(21, 'Robert de Niro', 'sit', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(22, 'Clive Owen', 'nobis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(23, 'Margot Robbie', 'rerum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(24, 'Jon Bernthal', 'autem', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(25, 'Elizabeth Olsen', 'rerum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(26, 'Leonardo DiCaprio', 'placeat', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(27, 'Jean Reno', 'ex', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(28, 'Alicia Vikander', 'sint', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(29, 'Nathalie Baye', 'vero', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(30, 'Tom Hanks', 'consequuntur', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(31, 'Michael Madsen', 'id', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(32, 'Al Pacino', 'quo', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(33, 'Jack Nicholson', 'ut', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(34, 'Marlon Brando', 'sit', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(35, 'Olivia Wilde', 'illum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(36, 'Harisson Ford', 'voluptates', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(37, 'Sandra Bullock', 'quia', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(38, 'Robin Wright', 'aperiam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(39, 'Jeremy Irons', 'quis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(40, 'Mia Farrow', 'necessitatibus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(41, 'Shelley Duvall', 'perspiciatis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(42, 'Paul Newman', 'ratione', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(43, 'Sharon Stone', 'voluptas', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(44, 'Felicity Jones', 'aut', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(45, 'Rachel McAdams', 'voluptas', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(46, 'Matthew McConaughey', 'possimus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(47, 'Demi Moore', 'vitae', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(48, 'Jennifer Lawrence', 'voluptatum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(49, 'Jean Dujardin', 'voluptates', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(50, 'Clint Eastwood', 'rerum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(51, 'Ralph Fiennes', 'molestias', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(52, 'Eva Green', 'quidem', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(53, 'Uma Thurman', 'distinctio', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(54, 'Juliane Moore', 'omnis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(55, 'Maggie Gyllenhaal', 'dolores', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(56, 'Daniel Day-Lewis', 'rerum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(57, 'Dustin Hoffman', 'adipisci', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(58, 'Javier Bardem', 'temporibus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(59, 'Audrey Tautou', 'exercitationem', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(60, 'Rosamund Pike', 'deserunt', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(61, 'Gal Gadot', 'quas', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(62, 'Ian McKellen', 'totam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(63, 'Heath Ledger', 'ut', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(64, 'Kim Novak', 'occaecati', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(65, 'Mélanie Laurent', 'provident', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(66, 'Jane Fonda', 'qui', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(67, 'Liv Tyler', 'in', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(68, 'Timothée Chalamet', 'ut', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(69, 'Colin Farrel', 'doloribus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(70, 'Diane Keeton', 'doloribus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(71, 'Mila Kunis', 'amet', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(72, 'Jonah Hill', 'officia', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(73, 'Marilyn Monroe', 'assumenda', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(74, 'Tommy Lee Jones', 'laboriosam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(75, 'Jodie Foster', 'rerum', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(76, 'Amy Adams', 'accusamus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(77, 'Kate Mara', 'minus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(78, 'Steve Carell', 'quis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(79, 'Ben Affleck', 'atque', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(80, 'Tom Hardy', 'dolores', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(81, 'Angelina Jolie', 'quidem', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(82, 'Robin Williams', 'vitae', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(83, 'Catherine Deneuve', 'accusamus', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(84, 'Christian Bale', 'quia', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(85, 'Tim Roth', 'quis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(86, 'Jon Hamm', 'placeat', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(87, 'Carey Mulligan', 'reiciendis', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(88, 'Mireille Darc', 'qui', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(89, 'Julia Louis-Dreyfus', 'labore', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(90, 'Robert Redford', 'et', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(91, 'Woody Allen', 'quidem', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(92, 'Christopher Walken', 'tempore', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(93, 'Bryan Cranston', 'est', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(94, 'Morgan Freeman', 'odio', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(95, 'Meryl Streep', 'aut', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(96, 'Samuel L.Jackson', 'nulla', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(97, 'Henry Fonda', 'modi', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(98, 'Charlize Theron', 'quam', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(99, 'Emily Blunt', 'et', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(100, 'Matt Damon', 'laudantium', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(101, 'KURAPIKA', 'KURTACLAN', 'KURAPIKA.jpg', '2020-09-21 21:29:06', '2020-09-21 21:59:40', NULL),
(102, 'Killua', 'Zoldyck', 'Killua.jpg', '2020-09-21 21:31:41', '2020-09-21 21:59:49', NULL),
(103, 'Leorio', 'ZodiacBOAR', 'Leorio.jpg', '2020-09-22 02:54:29', '2020-09-22 02:54:29', NULL),
(104, 'GON', 'Enhancer', 'GON.jpg', '2020-09-22 02:55:44', '2020-09-22 02:55:44', NULL),
(105, 'Kite', 'BadRoll', 'Kite.jpg', '2020-09-22 02:56:58', '2020-09-22 02:56:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `released_at` date NOT NULL,
  `duration` int(11) NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `released_at` date NOT NULL,
  `duration` int(11) NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `story`, `released_at`, `duration`, `info`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Babel', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have been that,\' said the Duchess, \'chop off her knowledge, as there was hardly room for YOU, and no one to listen to her, still it had struck her foot! She was a little pattering of feet in a minute or two the Caterpillar took the thimble, looking as solemn as she spoke; \'either you or your head must be collected at once without waiting for the pool as it is.\' \'I quite agree with you,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Duchess, who seemed too much frightened to say than his first speech. \'You should learn not to be said. At last the Mock Turtle persisted. \'How COULD he turn them out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Gryphon. \'I\'ve forgotten the Duchess was.', '1980-07-13', 3, 'Cum quam iusto qui doloribus iusto optio. Voluptatem mollitia quae id facilis reiciendis aut. Occaecati debitis consequuntur qui sint.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(2, 'The Hateful Height', 'White Rabbit, who was passing at the beginning,\' the King eagerly, and he hurried off. Alice thought she might find another key on it, and then at the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on in a Little Bill It was all about, and shouting \'Off with her head!\' the Queen added to one of the garden, where Alice could bear: she got into it), and handed back to the Duchess: \'and the moral of that is, but I THINK I can say.\' This was not quite sure whether it would be only rustling in the sky. Twinkle, twinkle--\"\' Here the other guinea-pig cheered, and was gone in a rather offended tone, and she could not remember the simple and loving heart of her skirt, upsetting all the party were placed along the course, here and there. There was no \'One, two, three, and away,\' but they all moved off, and she was quite pale (with passion, Alice thought), and it sat down again into its face.', '1976-01-20', 3, 'Error sunt nam quos reprehenderit aut. Ipsum eos sequi molestiae. Vitae dignissimos sequi consequatur.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(3, 'Rosemary\'s Baby', 'I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, quite forgetting in the kitchen that did not at all for any of them. However, on the Duchess\'s cook. She carried the pepper-box in her pocket) till she was to find herself still in sight, hurrying down it. There could be no use now,\' thought poor Alice, and she soon made out what she was as much as serpents do, you know.\' He was looking for eggs, I know is, something comes at me like that!\' He got behind him, and said to herself; \'his eyes are so VERY nearly at the thought that it might appear to others that what you were down here till I\'m somebody else\"--but, oh dear!\'.', '1986-03-26', 3, 'Aut quia rerum quod odit et molestiae nobis. Cumque ea beatae iure quo. Occaecati et rerum ut eum totam rerum odio. Temporibus provident dolore cupiditate deleniti ex nulla eaque eos.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(4, 'Warrior', 'Queen, \'Really, my dear, and that he had to sing \"Twinkle, twinkle, little bat! How I wonder what you\'re at!\" You know the way down one side and up the little magic bottle had now had its full effect, and she hastily dried her eyes to see a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Lory, as soon as she went on in a hurry. \'No, I\'ll look first,\' she said, as politely as she left her, leaning her head through the glass, and she was quite silent for a long argument with the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Queen never left off when they had to sing \"Twinkle, twinkle, little bat! How I wonder who will put on one side, to look through into the.', '1993-05-19', 3, 'Repudiandae quae qui accusamus architecto distinctio corporis incidunt earum. Soluta et totam quia sed voluptate in eius quaerat. Ducimus consequuntur labore quia est eligendi non.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(5, 'Avengers', 'I grow up, I\'ll write one--but I\'m grown up now,\' she said, as politely as she ran. \'How surprised he\'ll be when he finds out who I am! But I\'d better take him his fan and gloves--that is, if I shall be late!\' (when she thought of herself, \'I wish.', '1972-05-04', 3, 'Quae laborum non repellat quisquam. Incidunt libero voluptatem enim unde quidem animi qui. Et consequuntur praesentium ipsa.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(6, 'The Truman Show', 'WAS a narrow escape!\' said Alice, in a very short time the Mouse was bristling all over, and she hastily dried her eyes filled with tears again as quickly as she went on in a shrill, passionate voice. \'Would YOU like cats if you don\'t know what \"it\" means well enough, when I was thinking I should like to drop the jar for fear of killing somebody, so managed to put the Dormouse again, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the King: \'however, it may kiss my hand if it had gone. \'Well! I\'ve often seen a cat without a cat! It\'s the most interesting, and perhaps after all it might not escape again, and we put a white one in by mistake; and if I might venture to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in before the officer could get away without being seen, when she looked down at her with large round eyes, and.', '1993-05-23', 3, 'Veritatis maiores impedit nemo voluptas nihil. Dolorum earum soluta id voluptas. Aliquid autem facilis cum blanditiis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(7, 'Jaws', 'Gryphon, before Alice could not help thinking there MUST be more to do it.\' (And, as you might do something better with the grin, which remained some time after the candle is like after the rest were quite silent, and looked at it gloomily: then he dipped it into his cup of tea, and looked at Alice. \'It must be off, then!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, quite forgetting in the middle, nursing a baby; the cook was leaning over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\".', '1976-01-17', 3, 'Sint fugiat sit reiciendis quos. Expedita maxime placeat alias eum incidunt earum dolore repellendus. Ab itaque et numquam esse sit.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(8, 'Joker', 'Alice. \'It goes on, you know,\' the Hatter said, tossing his head mournfully. \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'I\'ve tried the little door: but, alas! the little thing was snorting like a Jack-in-the-box, and up the little door into that beautiful garden--how IS that to be trampled under its feet, ran round the thistle again; then the Rabbit\'s little white kid gloves while she ran, as well as pigs, and.', '1986-05-11', 3, 'Quisquam nesciunt sit tempore molestiae. Et sequi non eveniet rerum aliquid est labore minima. Quia voluptate repudiandae omnis accusamus error ab. Sunt et eius veritatis fugiat id molestias.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(9, 'L.A. Confidential', 'For some minutes the whole head appeared, and then a voice she had nibbled some more of the Lizard\'s slate-pencil, and the pattern on their faces, so that it was an old crab, HE was.\' \'I never was so full of soup. \'There\'s certainly too much pepper in my life!\' She had not as yet had any sense, they\'d take the place of the way of settling all difficulties, great or small. \'Off with her head!\' the Queen ordering off her knowledge, as there was the King; and the procession moved on, three of her ever getting out of sight: then it watched the White Rabbit returning, splendidly dressed, with a little bird as soon as the Dormouse into the garden. Then she went hunting about, and crept a little of it?\' said the Footman, and began staring at the Caterpillar\'s making such VERY short remarks, and she felt that it was labelled \'ORANGE MARMALADE\', but to open them again, and made believe to worry it; then Alice, thinking it was.', '1994-09-15', 3, 'Quia doloremque voluptatibus placeat tenetur aut voluptatem blanditiis. Commodi voluptatibus ut nisi enim nesciunt quia omnis non. Doloremque aut quod dolorem ut quisquam. Corporis magni voluptatum id et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(10, 'GoodFellas', 'Yet you balanced an eel on the top of her ever getting out of its mouth, and addressed her in such a thing I know. Silence all round, if you hold it too long; and that makes them so often, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good deal until she made out the verses on his slate with one finger pressed upon its forehead (the position in which the March Hare. \'It was much pleasanter at home,\' thought poor Alice, and sighing. \'It IS the use of a treacle-well--eh, stupid?\' \'But they were nice grand words to say.) Presently she began thinking over all the while, till at last came a rumbling of.', '1993-11-10', 3, 'Autem et maxime cum quia. Iure tenetur deleniti et tenetur dolores. Optio ullam explicabo placeat et ab temporibus dolores.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(11, 'The Lobster', 'D,\' she added in a low voice, \'Why the fact is, you see, as she stood looking at the flowers and those cool fountains, but she stopped hastily, for the fan and gloves--that is, if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no use in the pool, \'and she sits purring so nicely by the hedge!\' then silence, and then I\'ll tell you just now what the flame of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the carrier,\' she thought; \'and how funny it\'ll seem to see it quite plainly through the neighbouring pool--she could hear the name \'W. RABBIT\' engraved upon it. She went in search of her voice. Nobody moved. \'Who cares for you?\' said Alice, who always took a great hurry. An enormous puppy was looking down with wonder at the March Hare said to Alice, \'Have you guessed the riddle yet?\' the Hatter hurriedly left the court, she said to herself, \'whenever I eat one of them attempted to explain the.', '1982-10-18', 3, 'Tempore iure est nam est harum accusantium modi. Neque excepturi dolor quia. Et explicabo eum numquam veritatis ratione delectus nihil. Aperiam sunt voluptas odit necessitatibus sed sed quos tempore.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(12, 'The Neon Demon', 'Dinah, and saying to herself \'This is Bill,\' she gave her answer. \'They\'re done with a sigh: \'he taught Laughing and Grief, they used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and then said, \'It WAS a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen. \'It proves nothing of the players to be trampled under its feet, ran round the court and got behind him, and very nearly carried it out again, and Alice thought to herself \'Now I can guess that,\' she added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook had disappeared. \'Never mind!\'.', '1998-12-24', 3, 'Quia laudantium velit mollitia ipsa. Sit quidem delectus quia velit necessitatibus ab. Ex velit et deserunt est deserunt dolores enim.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(13, 'Persona', 'Mock Turtle said: \'no wise fish would go anywhere without a moment\'s delay would cost them their lives. All the time he had a vague sort of idea that they would go, and making quite a crowd of little birds and animals that had a bone in his sleep, \'that \"I breathe when I grow at a reasonable pace,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you mean by that?\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was swimming away from him, and said \'No, never\') \'--so you can find them.\' As she said to herself, \'because of his tail. \'As if it please your Majesty,\' the Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great puzzle!\' And she thought it over a.', '2002-08-29', 3, 'Quia harum in placeat consequatur. Error ut velit saepe rerum corporis enim ratione. Consequatur qui impedit laborum iure.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(14, 'Dune', 'I look like one, but the Mouse only growled in reply. \'That\'s right!\' shouted the Queen. \'I haven\'t the slightest idea,\' said the Caterpillar. This was quite silent for a long and a fan! Quick, now!\' And Alice was more and more sounds of broken glass, from which she had plenty of time as she spoke; \'either you or your head must be getting somewhere near the King added in an offended tone, \'was, that the best thing to get into the book her sister was reading, but it makes rather a hard word, I will just explain to you never even spoke to Time!\' \'Perhaps not,\' Alice replied thoughtfully. \'They have their.', '2010-03-05', 3, 'Expedita laborum beatae rerum. Sed provident fuga adipisci vel. Ut fugit dignissimos facere et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(15, 'Alien', 'All on a bough of a well--\' \'What did they live at the Queen, pointing to Alice with one eye, How the Owl and the sounds will take care of themselves.\"\' \'How fond she is of yours.\"\' \'Oh, I BEG your pardon!\' she exclaimed in a court of justice before, but she had a vague sort of way to fly up into the air, I\'m afraid, but you might catch a bad cold if she was small enough to drive one crazy!\' The Footman seemed to Alice an excellent opportunity for.', '1981-12-21', 3, 'Aut pariatur repellat sed. Est in quasi architecto cumque repudiandae. Cum esse praesentium sed sunt natus modi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(16, 'The Life of Brian', 'Duchess: \'and the moral of THAT is--\"Take care of the players to be an old Crab took the least notice of them hit her in such a new kind of rule, \'and vinegar that makes you forget to talk. I can\'t put it in a thick wood. \'The first thing she heard one of the Queen had ordered. They very soon finished it off. * * * * * * * * \'Come, my head\'s free at last!\' said Alice to find my way into a butterfly, I should say what you mean,\' said Alice. \'Did you say it.\' \'That\'s nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t want to go! Let me see: I\'ll give them a new idea to Alice, and she sat still and said to a lobster--\' (Alice began to cry again. \'You ought to go down the bottle, she found she could get away without being seen, when she first saw the White Rabbit put on.', '2017-03-20', 3, 'Sint culpa reprehenderit iure rerum dolorem sed qui. Provident laborum dicta consequatur. Doloribus quo maxime sunt optio quo voluptatum qui.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(17, 'Panic Room', 'Caterpillar. \'Well, I can\'t see you?\' She was a general chorus of voices asked. \'Why, SHE, of course,\' he said do. Alice looked at the mushroom (she had grown to her to wink with one finger for the White Rabbit, with a melancholy tone. \'Nobody seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the smallest idea how to spell \'stupid,\' and that you couldn\'t cut off a head unless there was hardly room to grow to my jaw, Has lasted the rest of my own. I\'m a deal too far off to other parts of the moment how large she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be shutting up like a snout than a real Turtle.\' These words were followed by a very pretty dance,\' said Alice to.', '1988-12-25', 3, 'Itaque sed dolore veritatis dolore eaque rerum. Fuga aspernatur et quia id officia cumque. Et inventore iure corporis pariatur ut voluptatem repudiandae enim. Ullam maxime magnam commodi error accusantium.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(18, 'Mad Max : Fury Road', 'Alice; \'but when you throw them, and all sorts of little birds and beasts, as well as she could not possibly reach it: she could for sneezing. There was a sound of many footsteps, and Alice thought over all the rats and--oh dear!\' cried Alice, with a pair of white kid gloves in one hand and a crash of broken glass. \'What a number of executions the Queen shouted at the place of the Lobster; I heard him declare, \"You have baked me too brown, I must have been changed for any lesson-books!\' And so it was over at last, more calmly, though still sobbing a little glass box that was sitting on a little different. But if I\'m not looking for it, you know.\' \'I don\'t quite understand.', '2001-07-28', 3, 'Quos quo ut sed et. Dolorum veritatis quae et ut qui sequi rerum. Eveniet ut quo ipsam nihil. Alias autem voluptas dolorem numquam nesciunt consequatur in. Assumenda laborum excepturi non veniam possimus.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(19, 'Braveheart', 'Number One,\' said Alice. \'You must be,\' said the Caterpillar. \'Well, perhaps not,\' said the Mock Turtle would be the right house, because the Duchess said in a thick wood. \'The first thing she heard was a dispute going on shrinking rapidly: she soon made out the verses the White Rabbit blew three blasts on the floor, as it didn\'t much matter which way you can;--but I must go back by railway,\' she said to Alice; and Alice could only hear whispers now and then, and holding it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that Alice had begun to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the sea. The master was an immense length of neck, which seemed to be listening, so she set the little creature down, and the game was going on, as she said this, she noticed that they could not join the dance. Will you, won\'t you.', '1975-08-10', 3, 'Ut qui sed fuga aut odit magni veritatis. Similique voluptatem sit in illum nesciunt nulla. Aspernatur sint qui expedita soluta at excepturi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(20, 'The Handmaiden', 'Five, in a piteous tone. And the Gryphon answered, very nearly carried it out again, and went on planning to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\' said Alice. The King turned pale, and shut his eyes.--\'Tell her about the same side of WHAT?\' thought Alice \'without pictures or conversations in it, \'and what is the use of this was of very little use, as it went, \'One side of the right-hand bit to try the whole she thought it had a little way.', '2007-07-08', 3, 'Inventore quisquam excepturi enim eligendi nam id. Aut architecto fugit dolore. Odio qui libero mollitia cum. Laudantium doloremque maiores voluptas quia. Ea tenetur ab sapiente.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(21, '2001 : A Space Odyssey', 'The Cat\'s head with great emphasis, looking hard at Alice for some while in silence. At last the Mouse, frowning, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'And ever since that,\' the Hatter was the White Rabbit put on her toes when they arrived, with a kind of rule, \'and vinegar that makes them so often, you know.\' \'And what are YOUR shoes done with?\' said the Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s voice in the pool was getting so used to queer things happening. While she was up to Alice, flinging the baby at her rather inquisitively, and seemed to Alice as she wandered about for them, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the things being alive; for instance, there\'s the arch I\'ve got to the.', '2008-03-25', 3, 'Velit aut molestiae voluptatem libero. Neque sed reiciendis et. Et occaecati fugit cumque consequatur modi ut neque. Est qui occaecati est nihil excepturi voluptas omnis similique.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(22, 'A Beautiful Mind', 'Duchess, \'as pigs have to whisper a hint to Time, and round Alice, every now and then said, \'It WAS a narrow escape!\' said Alice, a good deal worse off than before, as the Lory positively refused to tell me the truth: did you manage on the bank--the birds with draggled feathers, the animals with their fur clinging close to her: first, because the chimneys were shaped.', '1973-10-05', 3, 'Cupiditate soluta placeat alias sit labore quam hic similique. Quis vel nesciunt voluptatem et. Non sit rerum aut sunt dolores excepturi qui blanditiis. Itaque repudiandae sint sit aut dolorem assumenda.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(23, 'City of God', 'It quite makes my forehead ache!\' Alice watched the White Rabbit was no use speaking to a mouse, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon went on, \'that they\'d let Dinah stop in the pool of tears which she concluded that it might end, you know,\' said the Hatter, \'when the Queen merely remarking as it spoke. \'As wet as ever,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was surprised to find quite a chorus of voices asked. \'Why, SHE, of course,\' said the Pigeon; \'but if you\'ve seen them so shiny?\' Alice looked at the bottom of.', '2007-02-01', 3, 'Omnis corporis deserunt quis vitae. Molestiae in pariatur vel quas vero aliquam voluptatem. Et explicabo qui voluptatem facilis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(24, 'Casino', 'Duchess asked, with another hedgehog, which seemed to listen, the whole court was a bright brass plate with the tarts, you know--\' (pointing with his tea spoon at the Mouse\'s tail; \'but why do you mean that you had been all the time she had to pinch it to her.', '2009-11-04', 3, 'Aut culpa quidem officiis nobis. Voluptas sint est nam qui incidunt nisi. Labore nobis nisi consequatur esse et consectetur. Ut similique qui magni exercitationem labore sequi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(25, 'Life is beautiful', 'Then the Queen furiously, throwing an inkstand at the mouth with strings: into this they slipped the guinea-pig, head first, and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came in sight of the Lobster; I heard him declare, \"You have baked me too brown, I must have been a holiday?\' \'Of course not,\' said the King said, with a trumpet in one hand, and a fall, and a fan! Quick, now!\' And Alice was very nearly getting up and down in a VERY turn-up nose, much more like a steam-engine when she looked down at her with large eyes like a stalk out of court! Suppress him! Pinch him! Off with his head!\' she said, by way of expecting nothing but a pack of cards!\' At this moment the door.', '1997-09-12', 3, 'Aliquam officiis eum sed maiores in delectus facere. Nostrum eum sed neque expedita repellat. Eaque libero dolorem reprehenderit rerum aut aut quisquam sint.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(26, 'Star Wars', 'Alice. \'Why, there they lay on the shingle--will you come to the table, half hoping that the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I don\'t know,\' he went on \'And how many hours a day is very confusing.\' \'It isn\'t,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little girl,\' said Alice, \'how am I to do?\' said Alice. \'I\'ve tried every way, and the Gryphon replied very politely, feeling quite pleased to find that she might as well as she could remember them, all these strange Adventures of hers would, in the after-time, be herself a grown woman; and how she was now more than nine feet high, and was just in time to see it pop down a jar from one foot up the fan and two or three of the birds and animals that had fluttered down from the time she saw maps and pictures hung upon pegs. She took down a good deal: this.', '1977-10-26', 3, 'Et non dolorum voluptatem commodi qui saepe quas. Qui aspernatur et ea modi tempore accusamus. Sed aut dolorem est aut libero laborum quia.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(27, 'Paris, Texas', 'Queen, turning purple. \'I won\'t!\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon whispered in a fight with another dig of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not open any of them. However, on the back. However, it was too much frightened that she was now only ten inches high, and she put one arm out of the treat. When the sands are all pardoned.\' \'Come, THAT\'S a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said the Duchess. An invitation for the rest of the tail, and ending with the other: he came trotting along in a voice of thunder, and people began running about in the act of crawling away: besides all this, there was no time she\'d have.', '2012-03-05', 3, 'Ab illo voluptas veritatis nostrum nisi dolorem impedit nihil. Vel occaecati quis reiciendis repellendus. Eum sit tempore qui nisi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(28, 'Jurassic Park', 'Gryphon, and, taking Alice by the officers of the mushroom, and crawled away in the prisoner\'s handwriting?\' asked another of the doors of the gloves, and was going to dive in among the trees as well be at school at once.\' And in she went. Once more she found it advisable--\"\' \'Found WHAT?\' said the Rabbit in a large mustard-mine near here. And the Gryphon at.', '1998-10-10', 3, 'Ab hic fugit repudiandae libero quasi. Dolorem modi totam nihil. Sit culpa perferendis earum. Ut voluptas maxime praesentium nam et et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(29, 'The Wolf of Wall Street', 'Her first idea was that you had been to the voice of the sense, and the pattern on their hands and feet, to make out what she was quite impossible to say it out to sea!\" But the insolence of his pocket, and pulled out a history of the lefthand bit of mushroom, and raised herself to about two feet high: even then she noticed that one of the trees as well go back, and see what was coming. It was all dark overhead; before her was another puzzling question; and as he spoke, and added with a table set out under a tree in front of them, with her head on her hand, and made another rush at the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t even know what it might tell her something about the games.', '2000-10-31', 3, 'Molestias recusandae quibusdam saepe ipsa ut sint. Possimus optio facere qui praesentium ducimus accusamus porro odit. Omnis ut iste quaerat sed saepe ad iste. Laudantium dolore dolores repellendus totam velit molestias sit repellat.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(30, 'Seven Psychopaths', 'What happened to you? Tell us all about it!\' Last came a little now and then; such as, \'Sure, I don\'t like them raw.\' \'Well, be off, then!\' said the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow larger again, and put back into the sky all the right way to change the subject. \'Go on with the edge of her own mind (as well as I.', '1987-10-28', 3, 'Recusandae rerum et consequatur. Ab quia harum dolorem velit nesciunt. Deleniti dolores minima itaque soluta est reprehenderit nobis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(31, 'A bout de souffle', 'AND WASHING--extra.\"\' \'You couldn\'t have done just as she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said Two, in a voice sometimes choked with sobs, to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve kept her eyes.', '2009-01-02', 3, 'Culpa sequi omnis magni quia ipsam. Neque rerum hic aspernatur id dicta. Harum totam blanditiis sed.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(32, 'The Lord of the Rings', 'I THINK,\' said Alice. \'Then it doesn\'t matter which way you can;--but I must have imitated somebody else\'s hand,\' said the Caterpillar, just as the jury eagerly wrote down all three to settle the question, and they all looked puzzled.) \'He must have been that,\' said the March Hare. \'Exactly so,\' said the Hatter. He came in with a soldier on each side to guard him; and near the centre of the baby, the shriek of the garden, called out to be sure; but I shall never get to the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the cauldron of soup off the mushroom, and.', '2003-10-29', 3, 'Cupiditate voluptatem adipisci minima molestias amet. Placeat molestiae nulla blanditiis culpa neque sed possimus. Qui sit est maxime vel autem architecto. Molestias rerum deleniti vel ducimus et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(33, 'Sicario', 'Rabbit, and had just begun to think this a very respectful tone, but frowning and making quite a crowd of little birds and beasts, as well say,\' added the Queen. \'You make me larger, it must be what he did it,) he did it,) he did not quite sure whether it would be like, but it was too small, but at any rate he might answer questions.--How am I to get dry very soon. \'Ahem!\' said the Mock Turtle went on. \'Would you tell me,\' said Alice, rather.', '1993-01-13', 3, 'Dolorem laudantium vel aut nihil eaque. Sint id iste nemo. Incidunt unde reiciendis est ut eligendi. Enim dolorum sed aut iure libero.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(34, 'V for Vendetta', 'I\'m not used to it!\' pleaded poor Alice began to repeat it, but her head on her hand, watching the setting sun, and thinking of little pebbles came rattling in at the end.\' \'If you knew Time as well look and see how he did it,) he did it,) he did not see anything that had fluttered down from the trees had a pencil that squeaked. This of course, I meant,\' the King very decidedly, and he called the Queen, but she stopped hastily, for the accident of the jurors were writing down \'stupid things!\' on their.', '1994-08-31', 3, 'Soluta rem perspiciatis sunt in fuga. Enim aut veritatis quod ut eius error sed. Eaque doloremque iure odio dolorum in. Est non tenetur ut nisi ullam.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(35, 'Hugo', 'Cheshire cat,\' said the Duchess, \'chop off her knowledge, as there seemed to Alice as he shook his grey locks, \'I kept all my life!\' Just as she ran. \'How surprised he\'ll be when he finds out who was trembling down to the jury. \'Not yet, not yet!\' the Rabbit came near her, about the right size again; and the moon, and memory, and muchness--you know you say \"What a pity!\"?\' the Rabbit just under the window, and some \'unimportant.\' Alice could see, as she could not remember ever having seen in her hands, wondering if anything would EVER happen in a helpless sort of idea that they must needs come.', '2019-05-15', 3, 'Dolor et dolores ea est corrupti odit sit ut. Voluptatem reprehenderit qui quam necessitatibus consectetur. Pariatur quis non id est. Aperiam sapiente nihil et eveniet aut autem. Fuga laborum eius est.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(36, 'Cinema Paradiso', 'This answer so confused poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost think I can creep under the hedge. In another minute there was a good deal frightened at the sides of it; then Alice dodged behind a great many teeth, so she tried to fancy to herself as she ran; but the Hatter with a smile. There was a very difficult.', '1992-06-14', 3, 'Et sunt laborum cum laudantium. In voluptatem suscipit saepe ducimus id deserunt. Repudiandae est non rerum perspiciatis temporibus quidem. Quia quam esse quos nulla et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(37, 'Psycho', 'I believe.\' \'Boots and shoes under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were all shaped like the three gardeners at it, busily painting them red. Alice thought the poor little thing was waving its right ear and left foot, so as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' He was an uncomfortably sharp chin. However, she got to the Gryphon. \'It all came different!\' Alice replied in an undertone to the croquet-ground. The other side of the miserable Mock Turtle.', '2004-08-08', 3, 'Sit dolore ipsa debitis qui veniam est dignissimos. Nulla et veniam eius rem dignissimos quis. Exercitationem doloribus cupiditate est repellendus blanditiis eius magni.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(38, 'Aliens', 'Stigand, the patriotic archbishop of Canterbury, found it made no mark; but he now hastily began again, using the ink, that was linked into hers began to say a word, but slowly followed her back to the Hatter. \'It isn\'t directed at all,\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in.', '2020-06-05', 3, 'Sapiente voluptatem sed impedit aut vel et. Minima at mollitia assumenda qui. Qui doloremque voluptate delectus officia.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(39, 'The Help', 'However, \'jury-men\' would have made a rush at the bottom of a well?\' The Dormouse had closed its eyes were getting extremely small for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very curious to know what to do next, when suddenly a footman in livery, with a whiting. Now you know.\'.', '1979-08-22', 3, 'Corrupti doloribus amet quisquam dolore consequatur sint cumque. Voluptatem occaecati aut eveniet autem. Modi mollitia nulla architecto aliquam.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(40, 'Avatar', 'Duchess said to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was very likely true.) Down, down, down. There was a dispute going on shrinking rapidly: she soon found herself safe in a trembling voice to its feet, \'I move that the poor little juror (it was Bill, I fancy--Who\'s to go down the middle, being held up by two guinea-pigs, who were lying on the twelfth?\' Alice went timidly up to Alice, that she had got its neck nicely straightened out, and was going to begin with; and being ordered about by mice and rabbits. I almost wish I\'d gone to see what was coming. It was opened by another footman in livery came running out of this sort in her French lesson-book. The Mouse only growled in reply. \'Please come.', '2011-11-15', 3, 'Atque esse id fuga quia sit minus maxime. Doloribus perspiciatis voluptatem reiciendis et. Expedita est et nesciunt molestiae voluptatum sequi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(41, 'The Aviator', 'Come and help me out of its mouth and began whistling. \'Oh, there\'s no meaning in it,\' said the Pigeon went on, \'you throw the--\' \'The lobsters!\' shouted the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen to play croquet with the bones and the m--\' But here, to Alice\'s side as she did not come the same thing with you,\' said the King. The White Rabbit put on her toes when they arrived, with a table in the prisoner\'s handwriting?\' asked another of the teacups as the March Hare said--\' \'I didn\'t!\' the March Hare said in a day is very confusing.\' \'It.', '1980-11-08', 3, 'Et odio officiis quasi est. Amet aut quidem aliquid non ut tempora minima. Aut necessitatibus similique maiores ipsa est sit saepe. Et vitae nesciunt corrupti similique ratione est esse.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(42, 'Back to the Future 2', 'I could not taste theirs, and the fan, and skurried away into the sky. Twinkle, twinkle--\"\' Here the Dormouse fell asleep instantly, and Alice looked at each other for some way, and the executioner ran wildly up and said, \'So you think you\'re changed, do you?\' \'I\'m afraid I can\'t get out again. Suddenly she came upon a low trembling voice, \'--and I hadn\'t quite finished my tea when I find a number of changes she had wept when she found her way out. \'I shall sit here,\' the Footman went on to her that she had nothing yet,\' Alice replied very readily: \'but that\'s because it stays the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'What sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll.', '2000-05-23', 3, 'Eum sed eaque laudantium non. Dolores eos et quis quia tempore ipsam non. Aliquid autem amet et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(43, 'The Good, The Bad and The Ugly', 'White Rabbit, with a sigh. \'I only took the opportunity of saying to her ear, and whispered \'She\'s under sentence of execution. Then the Queen was silent. The King looked anxiously at the Queen, who were lying round the table, half hoping she might as well as she fell very slowly, for she had never seen such a thing as \"I get what I was sent for.\' \'You ought to be Number One,\' said Alice. \'Exactly so,\' said Alice. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an old Turtle--we used to it!\' pleaded poor Alice in a trembling voice:-- \'I passed by his garden, and I don\'t like them raw.\' \'Well, be off, and had come back in a hoarse growl, \'the world would go anywhere without a porpoise.\' \'Wouldn\'t it really?\' said Alice.', '2019-09-12', 3, 'Vel non aliquid ea eius aspernatur dolor reiciendis. Aut et vero voluptates illo. Et beatae distinctio numquam consequatur ex.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(44, 'Spotlight', 'Dodo in an impatient tone: \'explanations take such a fall as this, I shall be late!\' (when she thought it must be the right distance--but then I wonder who will put on his slate with one eye; \'I seem to come out among the trees as well wait, as she couldn\'t answer either question, it didn\'t much matter which way I ought to.', '2008-08-30', 3, 'Architecto eos aperiam tenetur laborum est et. Recusandae eum delectus tempore assumenda inventore tempore. Et nulla repellendus voluptatem aspernatur quod modi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(45, 'Three Billboards Outside Ebbing Misouri', 'March Hare will be When they take us up and went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used to queer things happening. While she was peering about anxiously among the people near the door between us. For instance, if you want to stay with it as a cushion, resting their elbows on it, (\'which certainly was not otherwise than what you mean,\' said Alice. \'Then you keep.', '1980-10-16', 3, 'Non aliquid nihil modi consectetur. Sed dignissimos ut odio vel. Repellat qui eveniet natus inventore ut voluptatem cupiditate.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(46, 'Grease', 'Mock Turtle, and said to herself, for this curious child was very like having a game of play with a soldier on each side to guard him; and near the right word) \'--but I shall have some fun now!\' thought Alice. The poor little juror (it was exactly one a-piece all round. \'But she must have been changed in the distance, and she went on: \'But why did they draw the treacle from?\' \'You can draw water out of the court was in confusion, getting the Dormouse began in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be so proud as all that.\' \'With extras?\' asked the Gryphon, and all must have a prize herself, you know,\' the Hatter said, turning to the.', '2007-10-17', 3, 'Debitis vel nemo facere quisquam. Consequatur rerum eaque laborum voluptatem fuga consectetur. Et quia minus id delectus repudiandae ut assumenda enim.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(47, 'Memento', 'Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you know about this business?\' the King said to live. \'I\'ve seen hatters before,\' she said to herself; \'the March Hare said--\' \'I didn\'t!\' the March Hare said to one of the cattle in the shade: however, the moment they saw the White Rabbit blew three blasts on the spot.\' This did not get hold of its voice. \'Back to land again, and we won\'t talk about cats or dogs either, if you could see her after the others. \'Are their heads down! I am so VERY nearly at the top of the evening, beautiful Soup! Soup of the evening.', '1982-06-15', 3, 'Aut adipisci ducimus optio provident. Ab eligendi facilis velit eum exercitationem molestias possimus. Ut voluptate sequi beatae necessitatibus commodi et et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(48, 'Coco', 'And the muscular strength, which it gave to my boy, I beat him when he sneezes: He only does it matter to me whether you\'re a little startled by seeing the Cheshire Cat: now I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head was so large a house, that she might as well to say a word, but slowly followed her back to the puppy; whereupon the puppy began a series of short charges at the other birds tittered audibly. \'What I was a paper label, with the bread-knife.\' The March Hare went on. \'Or would you tell me,\' said Alice, who felt ready to talk to.\' \'How are.', '1991-04-09', 3, 'Nihil et ad quos error deleniti architecto vero aut. Sed dicta praesentium eos minima exercitationem aliquid. Sit quia voluptas dolores incidunt fugiat. Et odit eaque ut non porro nam.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(49, 'Kill Bill', 'SOMEBODY ought to be sure; but I can\'t put it right; \'not that it might be hungry, in which you usually see Shakespeare, in the air. This time there were no tears. \'If you\'re going to give the hedgehog had unrolled itself, and began smoking again. This time Alice waited till the Pigeon had finished. \'As if it had fallen into a tidy little room with a teacup in one hand and a sad tale!\' said the Caterpillar. \'Well, I\'ve tried to open her mouth; but she stopped hastily, for the fan and two or three times over to herself, \'whenever I eat one of its mouth open, gazing up into the darkness as hard as he fumbled over the wig, (look at the Lizard in head downwards, and the baby at her side. She was a little anxiously. \'Yes,\' said Alice angrily. \'It wasn\'t very civil of you to learn?\'.', '2015-09-09', 3, 'Id molestias voluptas doloribus aliquam ipsum ut sed magni. Facere molestiae et dolorem enim sit architecto odit et. Et et iusto veritatis earum et. Quo aliquid et soluta qui in eum est.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(50, 'The Sixth Sense', 'Alice did not answer, so Alice went on, without attending to her, one on each side to guard him; and near the looking-glass. There was a table, with a shiver. \'I beg your pardon!\' she exclaimed in a melancholy way, being quite unable to move. She soon got it out into the jury-box, or they would die. \'The trial cannot proceed,\' said the Gryphon, sighing in his confusion he bit a large mustard-mine near here. And the muscular strength, which it gave to my jaw, Has lasted the rest of the creature, but on the bank, and of having nothing to do.\" Said the mouse to the seaside once in the air: it puzzled her a good way off, panting, with its wings. \'Serpent!\' screamed the Pigeon. \'I can hardly breathe.\' \'I can\'t help it,\' she thought, \'till its ears have come, or at least one of the room. The cook threw a frying-pan after her as she wandered about for it, she found to be done, I wonder?\' As she.', '1987-03-09', 3, 'Ut reiciendis dolor culpa corrupti possimus. Rerum magni eius a ut. Et aliquid neque adipisci voluptatem. Repudiandae maxime dolores cum unde voluptate.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(51, 'Django Unchained', 'I must, I must,\' the King said, for about the whiting!\' \'Oh, as to the other, trying every door, she ran off at once: one old Magpie began wrapping itself up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the sky. Alice went on, \'I must be shutting up like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the royal children; there were a Duck and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, was the first day,\' said the Hatter, \'you wouldn\'t talk about cats or dogs either, if you like!\' the Duchess asked, with another dig of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, even before she gave one sharp kick, and waited till the Pigeon had finished. \'As if it had a little timidly: \'but it\'s no use denying it. I.', '1979-12-06', 3, 'Qui quae culpa maxime odio id voluptates. Suscipit vitae odit quia qui expedita iusto itaque. Id repellat ut tempora quibusdam aut voluptatum. Corrupti nemo ipsam corporis est.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(52, 'Inception', 'All on a little girl or a worm. The question is, Who in the schoolroom, and though this was her turn or not. So she swallowed one of the house!\' (Which was very provoking to find herself talking familiarly with them, as if he had taken his watch out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing on the Duchess\'s voice died away, even in the middle. Alice kept her eyes to see how he did it,) he did not seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle. Alice was beginning to grow up again! Let me think: was I the same when I get it home?\' when it grunted again, so she set to work very carefully, nibbling first at one end to the game, feeling very glad to find that she still held the pieces of mushroom in her own.', '2019-09-21', 3, 'Sit amet architecto fugit repudiandae reprehenderit sed. Et amet exercitationem ut et sit. Qui at quibusdam aut saepe et debitis. Repellat molestiae labore est animi omnis et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(53, 'Mission : Impossible', 'March Hare: she thought at first was moderate. But the snail replied \"Too far, too far!\" and gave a little wider. \'Come, it\'s pleased so far,\' thought Alice, as she picked her way into a large canvas bag, which tied up at this moment Alice appeared, she was holding, and she set off at once: one old Magpie began wrapping itself up and to her daughter \'Ah, my dear! Let this be a lesson to you to offer it,\' said the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jelly-fish out of the Queen\'s ears--\' the Rabbit noticed Alice, as the game was going on, as she could, \'If you can\'t think! And oh, my poor hands, how is it I can\'t show it you myself,\' the Mock Turtle: \'crumbs would all wash off in the direction it pointed to, without trying to explain the mistake it had struck her.', '2014-05-23', 3, 'Et veniam qui est aut eum. Excepturi saepe et maxime et sit non. Aut hic est consequatur voluptas perspiciatis unde eos.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(54, 'The Green Mile', 'Bill, I fancy--Who\'s to go from here?\' \'That depends a good character, But said I could show you our cat Dinah: I think I must be collected at once took up the chimney, has he?\' said Alice loudly. \'The idea of the cakes, and was beating her violently with its eyelids, so he with his knuckles. It was the King; and the little glass box that was lying on the top of her favourite word \'moral,\' and the pool as it was in March.\' As she said to herself; \'the March.', '1998-04-09', 3, 'Vitae ullam quaerat reiciendis non quia. Error veritatis aut earum nostrum ut minus optio. Voluptatibus et id odio et consequatur eos.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL);
INSERT INTO `films` (`id`, `title`, `story`, `released_at`, `duration`, `info`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, 'Mary and Max', 'Footman. \'That\'s the reason so many different sizes in a wondering tone. \'Why, what are they made of?\' Alice asked in a long, low hall, which was lit up by two guinea-pigs, who were all in bed!\' On various pretexts they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to dry me at home! Why, I haven\'t had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, surprised at this, she noticed that one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, in a low voice, \'Why the fact is, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to open it; but, as the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Dodo solemnly presented the thimble, looking as solemn as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re a little more conversation with her.', '2003-03-31', 3, 'Porro voluptas velit blanditiis in. Maxime excepturi iste non dolorem consequuntur voluptatibus suscipit. Mollitia quia et sit ipsam beatae. Et corrupti error asperiores optio. Voluptatem consequatur esse sit.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(56, 'Star Wars Episode V : The Empire Strikes Back', 'Alice could only see her. She is such a noise inside, no one listening, this time, as it was good practice to say anything. \'Why,\' said the Caterpillar. \'Well, perhaps not,\' said the Pigeon; \'but I know who I am! But I\'d better take him his fan and gloves, and, as she came rather late, and the three gardeners instantly threw.', '2018-12-24', 3, 'Ipsum praesentium hic voluptatem blanditiis aliquid tenetur. Perferendis atque et autem quidem quis vitae. Expedita debitis suscipit et ea odit. Voluptas illum esse quasi enim dolore esse consequatur.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(57, 'Batman Returns', 'She felt that she was ready to ask his neighbour to tell you--all I know is, it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the first to speak. \'What size do you mean \"purpose\"?\' said Alice. \'Come on, then,\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, what?\' The great question is, what did the archbishop find?\' The Mouse did not like.', '1977-09-13', 3, 'Eos minima animi quasi. Aspernatur doloribus possimus et maiores esse atque et sint. Et aut voluptas rem id et molestiae maxime et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(58, 'Suspiria', 'There was a different person then.\' \'Explain all that,\' said the Mock Turtle, and said to herself, and once again the tiny hands were clasped upon her knee, and looking at the number of executions the Queen said to the little door about fifteen inches high: she tried to.', '1986-03-26', 3, 'Molestiae ut aut et est. Aliquam sit totam ut aperiam. Omnis dolorem ut facere sit ex pariatur facere.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(59, 'Hacksaw Ridge', 'They had not a moment that it made Alice quite hungry to look for her, and said, \'It was a table set out under a tree in front of the water, and seemed to be lost: away went Alice like the largest telescope that ever was! Good-bye, feet!\' (for when she found to be a walrus or hippopotamus, but then she heard one of the other side will make you dry enough!\' They all sat down at her with large eyes full of soup. \'There\'s certainly too much pepper in my life!\' She had quite a commotion in the sea!\' cried the.', '1984-03-13', 3, 'Laudantium sit quia corrupti tempora. Consequuntur similique veniam sunt nam quaerat. Temporibus et consectetur dolores fugit. Repellendus veniam corporis non numquam.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(60, 'Scarface', 'No, it\'ll never do to hold it. As soon as there seemed to have changed since her swim in the lock, and to wonder what was going on rather better now,\' she said, \'than waste it in a low, trembling voice. \'There\'s more evidence to come upon them THIS size: why, I should understand that better,\' Alice said very humbly; \'I won\'t indeed!\' said Alice, who had not the same, shedding gallons of tears, \'I do wish I hadn\'t begun my tea--not above a week or so--and what with the birds and beasts, as well go back, and barking hoarsely all the children she knew, who might do something better with the.', '2009-02-10', 3, 'Qui et magnam qui velit. Eveniet similique eum commodi explicabo excepturi nihil enim praesentium. Aspernatur consequuntur officia voluptas occaecati iure at. Debitis optio alias voluptatem itaque quo itaque.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(61, 'Kill Bill Vol.2', 'Yet you balanced an eel on the English coast you find a thing,\' said the King, \'that saves a world of trouble, you know, upon the other two were using it as you might do very well to say a word, but slowly followed her back to finish his story. CHAPTER IV. The Rabbit Sends in a melancholy.', '2014-07-10', 3, 'Molestiae et est nam in. Vero aut sint ea sunt quisquam quia deserunt. Doloribus in quos omnis sunt placeat eos. Ut omnis repellat ut ab et est.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(62, 'Moonrise Kingdom', 'Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at the Mouse\'s tail; \'but why do you like the right way to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little scream of laughter. \'Oh, hush!\' the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. The poor little thing was waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Well, I should think it so VERY tired of being all alone here!\' As she said this, she came upon a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I can say.\' This was quite impossible to say it out into the open air. \'IF I don\'t care which happens!\' She ate a little glass table. \'Now, I\'ll manage better this time,\' she said to the dance. Would not, could not, would not join the dance?.', '1994-01-14', 3, 'Asperiores eum illum placeat cum accusamus ex tempore molestiae. Mollitia iste cumque aliquid ut quis qui necessitatibus et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(63, 'The Girl with a Dragon Tatoo', 'Dormouse indignantly. However, he consented to go after that into a tidy little room with a little three-legged table, all made a snatch in the beautiful garden, among the distant sobs of the other bit. Her chin was pressed so closely against her foot, that there was a dead silence instantly, and Alice looked all round the table, but there were no tears. \'If you\'re going to say,\' said the Gryphon. \'Well, I should be free of them even when they passed too close, and waving their forepaws to mark the time, while the rest of the song, she kept on good terms with him, he\'d do almost anything you liked with the lobsters to the beginning of the jurymen. \'No, they\'re not,\' said the Duchess, who seemed too much overcome to do it?\' \'In my youth,\' Father William replied to his son, \'I feared it might injure the brain; But, now that I\'m perfectly sure I don\'t understand. Where did they live at the proposal. \'Then the eleventh day must.', '1978-03-17', 3, 'Pariatur laborum est consequatur velit. Enim deleniti est nostrum. Doloribus error quisquam et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(64, 'Elephant Man', 'King, with an M, such as mouse-traps, and the beak-- Pray how did you manage to do that,\' said the young man said, \'And your hair has become very white; And yet I don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'How the creatures wouldn\'t be so stingy about it, even if I might venture to say when I breathe\"!\' \'It IS the fun?\' said Alice. \'Well, I should frighten them out again. The rabbit-hole went straight on like a sky-rocket!\' \'So you did, old fellow!\' said the Lory hastily. \'I don\'t think they play at all like the three gardeners, but she got into a cucumber-frame, or something of the cupboards as she could. The next thing is, to get hold of this remark, and thought to herself as she leant against a buttercup to rest herself, and once she remembered having seen such a very short time the Queen merely remarking that a red-hot poker will burn you if.', '1996-02-01', 3, 'Quia fugiat mollitia dolorem assumenda. Et non dignissimos esse quisquam est dolores. Libero et deleniti earum dolorem doloremque voluptates. Necessitatibus ut sit corporis voluptas natus sint impedit in.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(65, 'The Wolf of Wall Street', 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not make out who was trembling down to them, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so large a house, that she looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King said, with a bound into the garden, called out \'The race is over!\' and they can\'t prove I did: there\'s no use in the sea. But they HAVE their tails in their mouths. So they went on planning to herself \'Now I can remember feeling a little house in it about four feet high. \'I wish I hadn\'t mentioned Dinah!\' she said to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all made a dreadfully ugly child: but it just now.\' \'It\'s the first day,\' said the Duchess. \'Everything\'s got a moral, if only you can find out the words: \'Where\'s the other side will make you grow.', '2016-01-13', 3, 'Et beatae sint quibusdam necessitatibus blanditiis recusandae dolorum. Porro est sit sit est atque eum ad. Est beatae sequi atque nobis omnis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(66, 'Batman', 'The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said gravely, \'and go on in a large pool all round her at the place where it had gone. \'Well! I\'ve often seen a good deal to ME,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Mock Turtle at last, and they can\'t prove I did: there\'s no use in crying like that!\' He got behind Alice as she went on, half to Alice. \'What sort of idea that they had any sense, they\'d take the roof of the guinea-pigs cheered, and was just in time to begin with,\' the Mock Turtle.', '1985-09-21', 3, 'Delectus consequatur animi voluptate reprehenderit accusantium vero. Aspernatur deleniti explicabo voluptate pariatur. Consequuntur rerum aliquid velit est laudantium amet quis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(67, 'Blade Runner', 'THAT\'S the great concert given by the Hatter, \'I cut some more of the house if it had come to the other, and growing sometimes taller and sometimes shorter, until she made her draw back in their proper places--ALL,\' he repeated with great curiosity, and this Alice would not give all else for two reasons. First, because I\'m on the slate. \'Herald, read the accusation!\'.', '2019-03-18', 3, 'Reiciendis nostrum molestias et sed dolorem. Ullam velit assumenda est voluptates unde quis enim consequuntur. Sit commodi ut nesciunt earum explicabo. Maiores iure quis sit earum omnis laboriosam et.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(68, 'Heat', 'HERE.\' \'But then,\' thought Alice, \'it\'ll never do to hold it. As soon as she was about a thousand times as large as himself, and this Alice would not join the dance? \"You can really have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was no more of it appeared. \'I don\'t know what to beautify is, I suppose?\' \'Yes,\' said Alice in a very difficult question. However, at last she stretched her arms round it as to go after that into a doze; but, on being pinched by the prisoner to--to somebody.\' \'It must have been changed in the chimney close above her: then, saying to herself as she ran; but the Dormouse sulkily remarked, \'If you knew Time as well be at school at once.\' However, she soon made out the answer to shillings and pence. \'Take off your hat,\' the King hastily said, and went to school every day--\' \'I\'VE been to her.', '1992-12-01', 3, 'Rerum officia est in eum id non similique sint. Aut dolores natus praesentium autem culpa sapiente. Praesentium illo voluptatem corrupti qui.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(69, 'The Pianist', 'As soon as there was hardly room for this, and Alice could see, as well as she fell past it. \'Well!\' thought Alice to find that she was getting so thin--and the twinkling of the window, and one foot to the Knave of Hearts, she made out what it was: she was now the right words,\' said poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the beautiful garden, among the party. Some of the words \'DRINK ME,\' but nevertheless she uncorked it and put it right; \'not that it ought to be rude, so she went to school every day--\' \'I\'VE been to a shriek, \'and just as usual. I wonder if I\'ve been changed in.', '2007-06-26', 3, 'Neque dolor aperiam sint doloribus ut. Iste aut recusandae occaecati aut.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(70, 'Incendies', 'I THINK,\' said Alice. \'Come on, then!\' roared the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Anything you like,\' said the Duchess, \'and that\'s the jury, and the happy summer days. THE.', '2007-04-10', 3, 'Et ab voluptas omnis facere in rem. Molestiae ullam possimus soluta assumenda ut autem. Facere nobis quibusdam reprehenderit ducimus aliquid. Rerum eum dolorum aut unde.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(71, 'Eternal Sunshine of the Spotless Mind', 'Has lasted the rest waited in silence. At last the Mock Turtle. So she went on, taking first one side and up the other, and making faces at him as he spoke, and the White Rabbit: it was very uncomfortable, and, as there was silence for some way of keeping up the little door: but, alas! either the locks were too large, or the key was too small, but at the top with its mouth and began an account of the guinea-pigs cheered, and was looking for it, he was obliged to write with one finger; and the Dormouse went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said Alice. \'Of course they were\', said the Hatter, with an M?\' said Alice. \'Why, SHE,\' said the Cat, and vanished. Alice was very likely to eat her up in such confusion that she.', '1987-09-22', 3, 'Iure sint soluta iste magni. Architecto doloremque consequuntur et aut voluptatem. Et delectus qui explicabo odit dolor. Eveniet nobis quae iure.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(72, 'Mother!', 'Duchess asked, with another hedgehog, which seemed to be no chance of this, so that by the prisoner to--to somebody.\' \'It must have prizes.\' \'But who is to do with you. Mind now!\' The poor little juror (it was Bill, I fancy--Who\'s to go from here?\' \'That depends a good deal frightened by this time?\' she said to herself, rather sharply; \'I advise you to sit down without being seen, when she had got its head down, and felt quite strange at first; but she thought it over a little bird as soon as she could not help bursting out laughing: and when she found her head impatiently; and, turning to Alice: he had.', '1989-06-28', 3, 'Ipsum explicabo et aut et itaque voluptas. Rem qui non itaque veritatis incidunt unde cumque. Repellendus omnis minus nisi nihil. Iusto provident autem et iste vel.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(73, 'The Room', 'At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, and tried to fancy to cats if you please! \"William the Conqueror, whose cause was favoured by the Queen to play croquet.\' Then they all spoke at once, while all the arches are gone from this side of the same thing as \"I eat what I could let you out, you know.\' Alice had no reason to be talking in his sleep, \'that \"I breathe when I got up and say \"How doth the little golden key in the middle of one! There ought to have him with them,\' the Mock Turtle a little pattering of feet on the same solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side of the what?\' said the Gryphon, \'she wants for to know when the race was over. However, when they saw her, they hurried back to them, and then added them up, and reduced the answer to shillings and pence.', '1979-07-15', 3, 'Eveniet voluptas quaerat et quo laboriosam in consequatur. Veritatis et nulla aliquam pariatur in. Sapiente provident et explicabo incidunt ea vitae. Ea reprehenderit quo quo nihil perspiciatis quia.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(74, '12 Years a Slave', 'Rabbit came near her, she began, rather timidly, as she could not think of nothing better to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it puzzled her too much, so she began shrinking directly. As soon as she spoke. (The unfortunate little Bill had left off quarrelling with the tarts, you know--\' (pointing with his nose Trims his belt and his friends shared their never-ending meal, and the Mock Turtle replied; \'and then the puppy jumped into the wood to listen. The Fish-Footman began by producing from under his arm a great deal to come down the chimney!\' \'Oh! So Bill\'s got to the table for it, she found herself in a low trembling voice, \'Let us get to the executioner: \'fetch her here.\' And the Eaglet bent down its head down, and was just in time to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages next!\' And she began very cautiously: \'But I don\'t want to get out again. The rabbit-hole went straight on like a.', '1991-09-19', 3, 'Voluptatem aliquid in ex temporibus inventore blanditiis praesentium. Voluptatem ex dolores ad architecto blanditiis temporibus illo. Et libero animi dolor cupiditate. Eum consequuntur est ducimus rem et. Quos accusantium quis iste perspiciatis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(75, 'Blade Runner 2049', 'FROM HIM TO YOU,\"\' said Alice. \'You are,\' said the Hatter; \'so I should understand that better,\' Alice said to a lobster--\' (Alice began to say when I got up and saying, \'Thank you, it\'s a French mouse, come over with diamonds, and walked two and two, as the doubled-up soldiers were always getting up and ran the faster, while more and more sounds of broken glass. \'What a pity it wouldn\'t stay!\' sighed the Lory, who at last turned sulky, and would only say, \'I am older than I am so VERY tired of this. I vote the young man said, \'And your hair has become very white; And yet I wish I hadn\'t begun my tea--not above a week or so--and what with the lobsters to the seaside once in the pool, and the small ones choked and had just begun to think that proved it at all. \'But perhaps he can\'t help it,\' said the Mock Turtle sighed deeply.', '2011-10-25', 3, 'Porro veritatis tenetur aut odit veritatis et provident qui. Hic quas quia et aliquid ipsum cupiditate dignissimos. Non eum nihil libero porro earum voluptatem placeat.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(76, 'Catch me if you can', 'Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of a procession,\' thought she, \'if people had all to lie down on one knee as he came, \'Oh! the Duchess, as she could. \'No,\' said the King hastily said, and went back to yesterday, because I was thinking I should think very likely it can be,\' said the Hatter. He came in with a great many teeth, so she went on all the time they were gardeners, or soldiers, or courtiers, or three times over to the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to Alice, and sighing. \'It IS the same as they all spoke at once, with a growl, And concluded the banquet--] \'What IS a long way back, and see what would happen next. First, she tried.', '1982-10-01', 3, 'Ipsa nihil autem modi unde. Magni quis placeat et alias voluptatem. Reiciendis est sed atque doloribus quaerat molestiae fugit.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(77, 'Ben-hur', 'ONE respectable person!\' Soon her eye fell upon a time she had someone to listen to me! I\'LL soon make you grow shorter.\' \'One side of the month is it?\' The Gryphon sat up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with her face like the largest telescope that ever was! Good-bye, feet!\' (for when she next peeped out the proper way of keeping up the little door into that lovely garden. I think you\'d take a fancy to cats if you only walk long enough.\' Alice felt a violent blow underneath her chin: it had finished this short speech, they all cheered. Alice thought she might as well say,\' added the Gryphon; and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, who only bowed and smiled in reply. \'Please come back with the next verse.\' \'But about his.', '1979-02-02', 3, 'Vel in distinctio quam totam repellendus voluptate illum possimus. Vel quidem dolorem ut. Culpa at sit harum est nam quis. Quis dolorem deleniti veniam molestiae impedit eos fugiat quidem.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(78, 'Signs', 'Alice to herself, as she did it so yet,\' said the Cat, as soon as look at it!\' This speech caused a remarkable sensation among the trees as well to say anything. \'Why,\' said the Mock Turtle, who looked at the frontispiece if you only walk long enough.\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to listen, the whole party swam to the tarts on the whole pack rose up into the garden with one of the teacups as the question was evidently meant for her. \'I wish you would seem to see that queer little toss of her head through the wood. \'It\'s the thing yourself, some winter day, I will just explain to you to set them free, Exactly as we were. My notion was that you have just been reading about; and when she first saw the White Rabbit blew.', '1978-09-20', 3, 'Architecto error neque id ut velit. Dicta animi quae sunt possimus autem eum. Quia dolor totam distinctio voluptatem eos iure asperiores quis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(79, 'Forrest Gump', 'First, however, she again heard a little nervous about this; \'for it might tell her something about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can listen all day about it!\' and he hurried off. Alice thought she had found the fan and the arm that was lying under the table: she opened it, and found that it was a large pool all round her head. \'If I eat or drink under the hedge. In another moment down went Alice like the three gardeners instantly jumped up, and there was hardly room to grow here,\' said the cook. The King looked anxiously at the Mouse\'s tail; \'but why do you know the meaning of half those long.', '1971-07-05', 3, 'Quo delectus voluptas dolore ut omnis. Exercitationem sed sint tenetur consequatur sit neque voluptatem. Delectus consequatur consequuntur magnam dolores soluta.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(80, 'Harakiri', 'I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the trumpet, and called out, \'Sit down, all of you, and listen to her, so she helped herself to some tea and bread-and-butter, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can go back and see that she had peeped into the sky. Twinkle, twinkle--\"\' Here the Queen had ordered. They very soon finished off the mushroom, and raised herself to some tea and bread-and-butter, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, with a growl, And concluded the banquet--] \'What IS the use of.', '1998-02-13', 3, 'Provident autem debitis voluptatem possimus et occaecati vel qui. Quod dignissimos et in. Vitae repellat et excepturi.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(81, 'Ad Astra', 'Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Queen, pointing to Alice a little nervous about it in her life before, and he checked himself suddenly: the others looked round also, and all sorts of things, and she, oh! she knows such a hurry to get out of the house opened, and a fan! Quick, now!\' And Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a melancholy air, and, after waiting till she shook the.', '2007-11-03', 3, 'Corporis doloribus autem vel consequatur architecto reprehenderit alias ut. Voluptate laboriosam vitae qui placeat. Nobis et est tenetur aut corrupti. Sequi quia quia reiciendis et. Qui id ex qui.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(82, 'A Clockwork Orange', 'Dinah, if I know I have dropped them, I wonder?\' And here poor Alice in a sort of lullaby to it as far as they lay on the Duchess\'s cook. She carried the pepper-box in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not dare to laugh; and, as they were filled with cupboards and book-shelves; here and there. There was nothing else to do, so Alice soon came upon a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the first really clever thing the King said to herself. At this the White Rabbit read:-- \'They told me you had been.', '1993-05-18', 3, 'Cum ea ut fuga aliquid sit atque. Voluptatibus hic eligendi dolor unde velit.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(83, 'Green Book', 'Alice like the right way to explain the paper. \'If there\'s no meaning in it, \'and what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its tongue hanging out of sight: \'but it doesn\'t matter much,\' thought Alice, and her face brightened up again.) \'Please your Majesty,\' the Hatter began, in rather a handsome pig, I think.\' And she thought of herself, \'I wish I could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the Rabbit noticed Alice, as she was beginning to write out a box of comfits, (luckily the salt water had not gone far before they saw the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said do. Alice looked all round her, about four feet high. \'I wish I hadn\'t mentioned Dinah!\' she said to itself \'Then I\'ll go round and round goes the clock in a court of justice before, but she could.', '1976-05-28', 3, 'Ipsam nesciunt illo sint velit quae natus quae voluptatem. Provident iure sint magni voluptas a recusandae iste. Enim praesentium voluptatem deserunt ea eveniet optio. Ad facilis temporibus sint sequi consequatur impedit. Et cum voluptatum tempora ut possimus dolor consectetur tenetur.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(84, 'Kill Bill Vol.1', 'Dormouse shall!\' they both sat silent for a baby: altogether Alice did not like to try the patience of an oyster!\' \'I wish I could say if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no doubt that it was out of sight: then it watched the.', '1986-08-15', 3, 'Quo et autem quasi autem necessitatibus dolore. Aliquid possimus dolore harum cumque hic molestiae enim in. Dolorem at accusamus reiciendis eius. Ullam sint sint perspiciatis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(85, 'Edward Cisorhands', 'Alice. \'But you\'re so easily offended, you know!\' The Mouse looked at the Hatter, \'you wouldn\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a very truthful child; \'but little girls in my size; and as Alice could speak again. In a little scream of laughter. \'Oh, hush!\' the Rabbit was still in sight, and no more to be executed for having cheated herself in a whisper, half afraid that she was beginning to get hold of its mouth and yawned once or twice she had not the smallest notice of them even when they passed too close, and waving their forepaws to mark the time, while the rest of my life.\' \'You are not the smallest notice of her sharp little chin into Alice\'s shoulder as he spoke, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you grow shorter.\' \'One side of the words \'DRINK ME\' beautifully printed on it except a little house in it a very respectful tone, but.', '1988-02-04', 3, 'Architecto eum delectus et ab amet doloribus perferendis dolor. Error voluptatem tenetur non sint tempora sequi eum dicta. Velit nam iusto modi commodi id eos laboriosam est. Amet odit nulla aut consequatur vel perferendis id qui.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(86, 'The Prestige', 'Her first idea was that she knew that it had a bone in his throat,\' said the Mock Turtle: \'why, if a fish came to the Hatter. This piece of it appeared. \'I don\'t think they play at all know whether it was very uncomfortable, and, as they would call after her: the last few minutes, and she soon found out that the reason is--\' here the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to the waving of the singers in the pool of tears which she had found her way out. \'I shall be a comfort, one way--never to be executed for having missed their turns, and she walked off, leaving Alice alone with the clock. For instance, if you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice.', '2009-06-02', 3, 'Dolorum aut accusantium temporibus aut. Consequuntur non consequuntur voluptatum. Saepe eum quas qui optio et. Quasi quaerat explicabo quis consequatur enim veniam dolores.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(87, 'The Social Network', 'Alice went timidly up to the little thing howled so, that Alice had no idea what you\'re at!\" You know the meaning of half those long words, and, what\'s more, I don\'t like the tone of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, in a very respectful tone, but frowning and making quite a large one, but it is.\' \'Then you shouldn\'t talk,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that there was a good opportunity for croqueting one of them didn\'t know that cats COULD grin.\' \'They all can,\' said the Caterpillar. \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle. \'Hold your tongue!\' said the Cat, and vanished. Alice was rather doubtful whether she ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here with me! There are no mice in the world am I? Ah, THAT\'S the great hall, with the lobsters to the other two were using it as you are; secondly, because.', '1970-12-16', 3, 'Possimus consequatur qui similique magnam sed blanditiis eos. Et quia vitae dolor fuga tempora. Omnis ea esse qui ducimus et doloribus.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(88, 'Akira', 'Alice\'s, and they walked off together, Alice heard the Rabbit in a low, timid voice, \'If you can\'t swim, can you?\' he added, turning to Alice as he could go. Alice took up the other, saying, in a court of justice before, but she got used to say.\' \'So he did, so he did,\' said the Gryphon: \'I went to school in the sea. The master was an old.', '2009-07-21', 3, 'Ut rem reiciendis rerum aut veniam laborum. Facilis autem possimus odio asperiores sint consequatur qui qui.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(89, 'Snatch', 'Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder what Latitude was, or Longitude I\'ve got to?\' (Alice had been found and handed them round as prizes. There was a treacle-well.\' \'There\'s no such thing!\' Alice was beginning to grow up any more HERE.\' \'But then,\' thought she, \'if people had all to lie down upon her: she gave one sharp kick, and waited till the puppy\'s bark sounded quite faint in the sand with wooden spades, then a great hurry. \'You did!\' said the Cat. \'I said pig,\' replied Alice; \'and I do hope it\'ll make me smaller, I can remember feeling a little sharp bark just over her head struck against the door, and the Mock Turtle went on growing, and she jumped up and went to him,\' said Alice as it happens; and if I only wish they WOULD put their heads downward! The Antipathies, I.', '1981-10-20', 3, 'Consectetur praesentium aut recusandae doloribus. Quaerat id praesentium officiis est doloremque voluptatibus alias ad. Fuga qui natus vitae sequi eveniet aut voluptatem. Cum unde tempora ut consequatur rerum magnam.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(90, 'The Deer Hunter', 'Alice, and looking at the beginning,\' the King said, turning to the other, trying every door, she found a little bit, and said to a mouse: she had read several nice little histories about children who had been anything near the King said to Alice, they all cheered. Alice thought to herself. (Alice had been broken to.', '2000-11-09', 3, 'Velit ipsum nihil non doloremque quae. Est vel eum ut inventore aut nihil. Est a hic et vel. Amet et aut blanditiis voluptate amet expedita assumenda autem.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(91, 'Platoon', 'Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all seemed quite dull and stupid for life to go on crying in this way! Stop this moment, I tell you!\' said Alice. \'I don\'t much care where--\' said Alice. \'Exactly so,\' said the Caterpillar decidedly, and there she saw in my kitchen AT ALL. Soup does very well as she could do, lying down on her toes when they arrived, with a bound into the air off all its feet at the March Hare moved into the wood. \'If it had been. But her sister was reading, but it makes me grow larger, I can go back by railway,\' she said to herself, as well as she picked her way into a small passage, not much like keeping so close to them, and considered a little shriek, and went on: \'But why did they draw?\' said Alice, quite forgetting that she did.', '2000-08-04', 3, 'Est dolorem quas et dolor non dolor. Incidunt dolor qui consequatur necessitatibus velit culpa voluptatem. Consequatur iure assumenda aliquid aperiam quis qui.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(92, 'Rear Window', 'Tortoise--\' \'Why did they live at the Footman\'s head: it just grazed his nose, and broke off a head unless there was no one listening, this time, and was gone across to the conclusion that it might appear to others that what you mean,\' the March Hare. The Hatter looked at each other for some minutes. The Caterpillar and Alice looked down at them, and all sorts of things--I can\'t remember things as I was going on, as she could. \'No,\' said the King. \'Nothing whatever,\' said Alice. \'Oh, don\'t bother ME,\' said Alice to herself, and nibbled a little nervous about it in asking riddles that have no answers.\' \'If you can\'t help that,\' said Alice. \'You must be,\' said the King was the White Rabbit returning, splendidly dressed, with a round face, and was going a journey, I should think very likely it can be,\' said the Hatter. \'He won\'t stand beating. Now, if you cut.', '1977-01-25', 3, 'Nihil voluptatem qui nam iusto. Et quod ratione non reprehenderit ipsa rerum sunt. Nostrum nemo corrupti quo.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(93, 'Into the Wild', 'March Hare and the Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice replied in an undertone to the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most interesting, and perhaps as this before, never! And I declare it\'s too bad, that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the whole cause, and condemn you to sit down without being seen, when she had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole cause, and condemn you to get hold of anything, but she had never left off sneezing by this very sudden change, but she could see, when she went on \'And how did you begin?\' The Hatter was out of.', '2002-06-01', 3, 'Nulla et modi vel ea dolorem. Autem eaque dolor odit consectetur ea debitis. Facere iusto rerum est illum delectus aut sit. Quo alias blanditiis nesciunt quisquam assumenda.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(94, 'Room', 'Alice for some way, and nothing seems to be no chance of getting her hands up to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself that perhaps it was an old Crab took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could hear the name again!\' \'I won\'t indeed!\' said the Rabbit was no longer to be sure; but I think I may as well go back, and see after some executions I have ordered\'; and she looked at Alice, as she passed; it was only sobbing,\' she thought, and rightly too, that very few little girls of her going, though she felt that this could not be denied, so she sat down with wonder at the stick, running a very little! Besides.', '1987-04-13', 3, 'Pariatur esse voluptas molestiae quibusdam enim vitae id. Ipsa et ducimus laboriosam molestiae. Sint repellat in voluptatem id architecto in animi. Molestiae earum ipsum consequatur.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(95, 'Prisoners', 'The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done just as she could, for the pool a little girl,\' said Alice, \'how am I to do with this creature when I sleep\" is the reason of that?\' \'In my youth,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a little shriek, and went on: \'But why did they draw the treacle from?\' \'You can draw water out of.', '2005-04-17', 3, 'Incidunt fugiat non dolorem et quia. Ipsum quia aperiam consequatur ut nisi minima. Occaecati consequatur facilis modi omnis blanditiis et assumenda culpa.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(96, 'Creed', 'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice in a helpless sort of chance of getting up and say \"How doth the little--\"\' and she swam lazily about in the direction in which you usually see Shakespeare, in the long hall, and wander about among those beds of bright flowers and the other.', '2005-09-15', 3, 'Quis labore alias provident nemo consequatur dolores. Explicabo provident nisi consequatur blanditiis molestias ut unde. Error aspernatur quis omnis illo quam alias.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(97, 'The Lion King', 'The baby grunted again, so she sat down a jar from one of the day; and this Alice thought over all the things being alive; for instance, there\'s the arch I\'ve got to the beginning of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the house!\' (Which was very hot, she kept fanning herself all the things being alive.', '1985-07-04', 3, 'Vitae sint impedit sed in placeat quibusdam sed. Voluptatem qui praesentium natus blanditiis laboriosam.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(98, 'Carrie', 'SIT down,\' the King had said that day. \'No, no!\' said the Hatter said, turning to the door, and knocked. \'There\'s no such thing!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a great deal to come upon them THIS size: why, I should like to drop the jar for fear of their hearing her; and when she had known them all her wonderful Adventures, till she had got its head impatiently, and said, \'It WAS a curious feeling!\' said Alice; \'that\'s not at all a proper way of expecting nothing but out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the officers of the singers in the air. This time Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a Cheshire cat,\' said the Hatter. \'He won\'t stand beating.', '1972-04-23', 3, 'Modi suscipit laboriosam voluptatum earum aut autem. Quia sunt ipsum inventore fuga itaque. Iure dolorem nulla accusantium reiciendis officiis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(99, 'Ran', 'Hatter. This piece of rudeness was more than three.\' \'Your hair wants cutting,\' said the Mock Turtle replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance. Will you, won\'t you join the dance. Will you, won\'t you, won\'t you, will you, won\'t you join the dance. Would not, could not swim. He sent them word I had not got into it), and sometimes she scolded herself so severely as to the three gardeners instantly jumped up, and reduced the answer to it?\' said the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to a shriek, \'and just as if she had grown so large a.', '1996-07-27', 3, 'Dolores qui aut ut qui. Ipsa et iste tempore repellendus magnam. Labore consectetur non tempore aliquam aut aliquid voluptatum. Dicta enim ipsa veritatis cupiditate.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(100, 'Inglorious Basterds EDIT', 'Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I don\'t want YOU with us!\"\' \'They were obliged to write out a race-course, in a minute, while Alice thought she might as well say,\' added the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice sharply, for she was out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Hatter; \'so I can\'t put it more clearly,\' Alice replied very solemnly. Alice was silent. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King hastily said, and went stamping about, and crept a little shriek, and went on: \'--that begins with an important air, \'are you all ready? This is the use of a.', '2007-07-23', 3, 'Eum aut voluptatum corporis rerum quo animi dolor. Sed in rerum officiis nulla ipsum voluptatem delectus est. Rem eum impedit quos ullam quis iusto. Animi et non alias omnis.', NULL, '2020-09-21 20:39:48', '2020-09-21 20:55:49', NULL),
(101, 'Ghost In WireEDIT', 'Ghost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost IGhost In Wiren WireGhost In WireGhost In WirGhost In WireeGhost In WireGhost In Wire', '2020-09-22', 2, 'Ghost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost In WireGhost In Wire', 'Ghost In Wire.png', '2020-09-21 20:56:29', '2020-09-21 20:56:49', NULL),
(102, 'ROTOSCOPE', 'ROTOSCOPEROTOSCOPEROTOSCOPEROTOSCOPEROTOSCOPE', '2020-09-22', 1, 'ROTOSCOPEROTOSCOPEROTOSCOPEROTOSCOPEROTOSCOPE', 'ROTOSCOPE.PNG', '2020-09-21 20:58:34', '2020-09-21 20:58:34', NULL),
(103, 'HunterXHunter', 'Gon Freecss is a young boy living on Whale Island. He learns from \"Hunter\" Kite, that his father, who he was told was dead, is still alive somewhere as a top \"Hunter,\" risking his life to seek unknown items, such as hidden treasures, curiosa, exotic living creatures, etc. Gon decides to become a professional Hunter and leaves the island. To become a Hunter, he must pass the Hunter Examination, where he meets and befriends three other applicants: Kurapika, Leorio and Killua. Can Gon pass this formidable hurdle, the Hunter Examination, to become \"the Best Hunter in the World\" and eventually meet his father?', '2020-09-22', 10, 'Gon Freecss aspires to become a Hunter, an exceptional being capable of greatness. With his friends and his potential, he seeks for his father who left him when he was younger.', 'HunterXHunter.jpg', '2020-09-22 03:02:31', '2020-09-22 03:02:31', NULL),
(104, 'CodeGeass', 'The main lead of Code Geass is Lelouch—a prince of Britannia in hiding in Japan. His goals are simple: He wants to kill his father, the Emperor, for abandoning him and his crippled sister Nunnally after the assassination of their mother. Along the way, he plans to discover the identity of and then kill anyone involved with his mother’s murderer. If he has to overthrow the government of Britannia to do this, so be it.', '2020-09-22', 5, 'Of course, in typical anime fashion, they also soon end up going to high school with one another.', 'CodeGeass.jpg', '2020-09-22 03:04:40', '2020-09-22 03:04:40', NULL),
(105, 'TerrorInResonance', 'In an alternative iteration of the present, two teenage boys who go by the names Nine and Twelve, steal a prototype atomic bomb in an apparent terrorist attack. Calling themselves \"Sphinx\" (スピンクス, Supinkusu), they upload a video onto the Internet and threaten to destroy Tokyo city unless a cryptic riddle can be solved. They are survivors of a secret experiment by the Rising Peace Academy to develop orphaned children with Savant syndrome into human weapons. They befriend Lisa, a lonely schoolgirl, who becomes caught up in their plans to expose the nefarious activities of the organization.', '2020-09-22', 3, 'When a terrorist attack ravages Tokyo, a mysterious clue to the perpetrators\' identity confounds the police, and paranoia spreads like wildfire.', 'TerrorInResonance.jpg', '2020-09-22 03:07:13', '2020-09-22 03:07:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `film_actor_role`
--

CREATE TABLE `film_actor_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_actor_role`
--

INSERT INTO `film_actor_role` (`role_id`, `film_id`, `actor_id`) VALUES
(2, 101, 8),
(1, 102, 59),
(1, 103, 104),
(2, 104, 50),
(1, 105, 19);

-- --------------------------------------------------------

--
-- Table structure for table `film_genre`
--

CREATE TABLE `film_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_genre`
--

INSERT INTO `film_genre` (`genre_id`, `film_id`) VALUES
(19, 101),
(17, 102),
(15, 103),
(1, 104),
(3, 105);

-- --------------------------------------------------------

--
-- Table structure for table `film_producer`
--

CREATE TABLE `film_producer` (
  `producer_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_producer`
--

INSERT INTO `film_producer` (`producer_id`, `film_id`) VALUES
(15, 101),
(1, 102),
(15, 103),
(7, 104),
(18, 105);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `Genre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `Genre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'War', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(2, 'Biography', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(3, 'Crime', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(4, 'Western', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(5, 'Suspense', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(6, 'History', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(7, 'Drama', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(8, 'Romance', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(9, 'Mystery', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(10, 'Fantasy', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(11, 'Family', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(12, 'Music', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(13, 'Thriller', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(14, 'Horror', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(15, 'Adventure', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(16, 'TV Movie', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(17, 'Documentary', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(18, 'Animation', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(19, 'Action', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(20, 'Comedy', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL);

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
(4, '2020_08_17_083715_film', 1),
(5, '2020_08_17_085140_actor', 1),
(6, '2020_08_17_110405_create_actors_table', 1),
(7, '2020_08_18_071434_create_films_table', 1),
(8, '2020_09_15_091000_create_roles_table', 1),
(9, '2020_09_15_091216_create_genres_table', 1),
(10, '2020_09_15_091316_create_producers_table', 1),
(11, '2020_09_15_091342_create_ratings_table', 1),
(12, '2020_09_15_091811_create_certificates_table', 1),
(13, '2020_09_15_093406_relationship', 1);

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
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`, `email`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kelly Reichardt', 'xthiel@gmail.com', 'stark.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(2, 'Wim Wenders', 'thelma23@bailey.biz', 'bergnaum.org', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(3, 'Alex Garland', 'stiedemann.nicole@gmail.com', 'oconner.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(4, 'Wong Kar-Wai', 'jschroeder@hotmail.com', 'johnston.net', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(5, 'Denis Villeneuve', 'virginia.mcglynn@adams.com', 'schoen.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(6, 'Jennifer Kent', 'bayer.selina@yahoo.com', 'kub.biz', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(7, 'Olivia Wilde', 'jarrett31@gerlach.com', 'bosco.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(8, 'Kathryn Bigelow', 'yrutherford@hotmail.com', 'brown.info', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(9, 'Quentin Dupieux', 'colby76@yahoo.com', 'farrell.org', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(10, 'Luchino Visconti', 'zstreich@schowalter.com', 'dickinson.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(11, 'Michael Bay', 'columbus.stokes@cummings.com', 'bogisich.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(12, 'Oliver Stone', 'michel.dickens@gmail.com', 'johnston.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(13, 'Robert Wise', 'schmidt.adrain@bogisich.com', 'mertz.biz', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(14, 'Francis Ford Coppola', 'kennedi.hermiston@hotmail.com', 'fay.net', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(15, 'Agnès Varda', 'lakin.nestor@christiansen.com', 'medhurst.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(16, 'Joel Coen', 'sschuster@ledner.com', 'streich.org', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(17, 'Chloé Zhao', 'kaela.dickens@gmail.com', 'labadie.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(18, 'John Ford', 'gilberto.lindgren@gmail.com', 'durgan.biz', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(19, 'Robert Zemeckis', 'rcrooks@luettgen.com', 'ohara.com', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL),
(20, 'Nadine Labaki', 'montana37@torphy.net', 'stroman.org', '2020-09-21 20:39:48', '2020-09-21 20:39:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `film_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`film_id`, `user_id`, `rate`, `comment`, `created_at`, `updated_at`) VALUES
(100, 2, 1, 'Ako si Gunayon', '2020-09-21 20:41:42', '2020-09-21 20:41:42'),
(102, 2, 2, 'Wow ang ganda ng rotoscope FUCK!', '2020-09-21 21:04:52', '2020-09-21 21:04:52'),
(102, 4, 5, 'ANGAAAAAAAAAAAAAS', '2020-09-21 21:16:44', '2020-09-21 21:16:44'),
(105, 2, 5, 'Intense grabe', '2020-09-22 03:17:48', '2020-09-22 03:17:48'),
(104, 2, 5, 'Ganda ng twist', '2020-09-22 03:18:05', '2020-09-22 03:18:05'),
(103, 2, 5, 'Sana may animated na din na dark continent arc', '2020-09-22 03:18:25', '2020-09-22 03:18:25'),
(101, 2, 5, 'Kevin Mitnick the best', '2020-09-22 03:18:47', '2020-09-22 03:18:47'),
(105, 3, 5, 'oo nga ang ganda saka totoo ung pinag lalaban nila', '2020-09-22 03:19:36', '2020-09-22 03:19:36'),
(104, 3, 5, 'sana may madugtong pang series', '2020-09-22 03:20:24', '2020-09-22 03:20:24'),
(103, 3, NULL, 'FUCK! ganda shit', '2020-09-22 03:20:48', '2020-09-22 03:20:48'),
(102, 3, 5, 'oo nga no ang angas tangina', '2020-09-22 03:20:58', '2020-09-22 03:20:58'),
(101, 3, 5, 'gusto ko din maging hacker, tas ihahack ko ung planet', '2020-09-22 03:21:21', '2020-09-22 03:21:21'),
(105, 4, 4, 'maganda kaso Im not into violence', '2020-09-22 03:22:14', '2020-09-22 03:22:14'),
(104, 4, 5, 'somehow makabuluhan naman ung ipinag laban ng bida', '2020-09-22 03:22:41', '2020-09-22 03:22:41'),
(101, 4, 5, 'just wow', '2020-09-22 03:23:07', '2020-09-22 03:23:07'),
(105, 5, 5, 'yow! ang angas ng nangyayare', '2020-09-22 03:24:15', '2020-09-22 03:24:15'),
(104, 5, 5, 'bakit sya namatay', '2020-09-22 03:24:28', '2020-09-22 03:24:28'),
(103, 5, 5, 'nakakabitin', '2020-09-22 03:24:51', '2020-09-22 03:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Protagonist', NULL, NULL, NULL),
(2, 'Antagonist', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$w/TqbYET6UD7NXvNJepIUu63xf/ZhI54hqukmnafav0msfvp/ZUlS', NULL, '2020-09-21 20:38:07', '2020-09-21 20:38:07'),
(2, 'Gunayon', 'renegunayon@gmail.com', NULL, '$2y$10$m6s/VERhxPzVjg9HG2vsVudzXBjDM4g/ltiCvnSiL8F5.e0lhPbx2', NULL, '2020-09-21 20:39:00', '2020-09-21 20:39:00'),
(3, 'MANALO', 'julszxc@gmail.com', NULL, '$2y$10$BE20Iczc7jbuLXYUZc1.U.AgdmCIjiuhrvzDtbaKxcvzCrNe8ecCO', NULL, '2020-09-21 20:44:37', '2020-09-21 20:44:37'),
(4, 'Louise', 'lmml@gmail.com', NULL, '$2y$10$rl8KW73DvUhsFyteNiijnuNbay6eOjB1y8zdLtKWbqyzi.eTRVlSm', NULL, '2020-09-21 21:16:13', '2020-09-21 21:16:13'),
(5, 'TARGET', 'target@gmail.com', NULL, '$2y$10$HA08we0SsRem81.RhC5JM.ssC4R/aVM.nr2J1w8oF/w.gcldiZcwW', NULL, '2020-09-21 23:39:35', '2020-09-21 23:39:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_actor_role`
--
ALTER TABLE `film_actor_role`
  ADD KEY `film_actor_role_film_id_foreign` (`film_id`),
  ADD KEY `film_actor_role_role_id_index` (`role_id`),
  ADD KEY `film_actor_role_actor_id_index` (`actor_id`);

--
-- Indexes for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD KEY `film_genre_film_id_foreign` (`film_id`),
  ADD KEY `film_genre_genre_id_index` (`genre_id`);

--
-- Indexes for table `film_producer`
--
ALTER TABLE `film_producer`
  ADD KEY `film_producer_film_id_foreign` (`film_id`),
  ADD KEY `film_producer_producer_id_index` (`producer_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `ratings_film_id_foreign` (`film_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_actor_role`
--
ALTER TABLE `film_actor_role`
  ADD CONSTRAINT `film_actor_role_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_actor_role_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_actor_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `film_genre_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film_producer`
--
ALTER TABLE `film_producer`
  ADD CONSTRAINT `film_producer_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_producer_producer_id_foreign` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
