-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2020 a las 11:50:13
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `misempleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `isOnline` tinyint(1) NOT NULL,
  `salary` double NOT NULL,
  `age` int(11) NOT NULL,
  `position` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `name` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `gender` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `phone` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `address` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `skills` varchar(255) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `isOnline`, `salary`, `age`, `position`, `name`, `gender`, `email`, `phone`, `address`, `skills`) VALUES
('574daa370866cd66710f5519', 0, 1393.47, 22, 'developer', 'Greta Mcfadden', 'female', 'gretamcfadden@fanfare.com', '+0511 (917) 441-3834', '497 Milford Street, Grimsley, Alaska, 9648', '{\r\n        \"skill\": \"C#\"\r\n      },\r\n      {\r\n        \"skill\": \"Ruby\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      }'),
('574daa37114b923fcb959533', 1, 1788.16, 70, 'developer', 'Bradley Kirk', 'male', 'bradleykirk@fanfare.com', '+0511 (971) 547-3430', '781 Randolph Street, Eagleville, Wisconsin, 3923', '{\r\n        \"skill\": \"NoSQL\"\r\n      },\r\n      {\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"CSS\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      }'),
('574daa3731aafea412b01231', 1, 3485.72, 23, 'developer', 'Brandy Everett', 'female', 'brandyeverett@fanfare.com', '+0511 (910) 414-2740', '895 Union Avenue, Catharine, Indiana, 3975', '{\r\n        \"skill\": \"JS\"\r\n      },\r\n      {\r\n        \"skill\": \"Java\"\r\n      },\r\n      {\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"SQL\"\r\n      }'),
('574daa3735fce3f5e9b0bdd9', 1, 2046.78, 51, 'developer', 'Dean Ramirez', 'male', 'deanramirez@fanfare.com', '+0511 (894) 463-3263', '184 Bleecker Street, Hannasville, Connecticut, 4908', '{\r\n        \"skill\": \"Ruby\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      },\r\n      {\r\n        \"skill\": \"NoSQL\"\r\n      },\r\n      {\r\n        \"skill\": \"HTML\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      }'),
('574daa374124bc8ac066e65e', 0, 2787.84, 43, 'developer', 'Casey Lang\",\r\n\r\n', 'male', 'caseylang@fanfare.com', '+0511 (839) 417-3910', '165 Tabor Court, Kidder, Louisiana, 1670', '{\r\n        \"skill\": \"SQL\"\r\n      },\r\n      {\r\n        \"skill\": \"Java\"\r\n      },\r\n      {\r\n        \"skill\": \"Lisp\"\r\n      },\r\n      {\r\n        \"skill\": \"Java\"\r\n      },\r\n      {\r\n        \"skill\": \"CSS\"\r\n      }'),
('574daa3788291a030a564e54', 0, 3872.94, 42, 'developer', 'Hayes Macias', 'male', 'hayesmacias@fanfare.com', '+0511 (815) 442-3884', '883 Pine Street, Zortman, Maryland, 9701', ' {\r\n        \"skill\": \"HTML\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      },\r\n      {\r\n        \"skill\": \"NoSQL\"\r\n      },\r\n      {\r\n        \"skill\": \"Lisp\"\r\n      },\r\n      {\r\n        \"skill\": \"NoSQL\"\r\n      }'),
('574daa378cb97f935a5c8e2e', 1, 1314.06, 21, 'developer', 'Chasity Carver', 'female', 'chasitycarver@fanfare.com', '+0511 (833) 412-3736', '218 Bulwer Place, Maybell, Utah, 4847', '{\r\n        \"skill\": \"C#\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      },\r\n      {\r\n        \"skill\": \"NoSQL\"\r\n      },\r\n      {\r\n        \"skill\": \"Java\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      }'),
('574daa379545e9af101c2731', 1, 1191.57, 63, 'developer', 'Foley Day', 'male', 'foleyday@fanfare.com', '+0511 (895) 577-2157', '850 Clara Street, Westmoreland, Kansas, 6963', '{\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"CSS\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      },\r\n      {\r\n        \"skill\": \"Lisp\"\r\n      }'),
('574daa37b6b60c495de67280', 1, 1282.14, 50, 'developer', 'Mckee Summers', 'male', 'mckeesummers@fanfare.com', '+0511 (873) 578-3997', '733 Everett Avenue, Centerville, Colorado, 6706', '{\r\n        \"skill\": \"Lisp\"\r\n      },\r\n      {\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      },\r\n      {\r\n        \"skill\": \"Java\"\r\n      }'),
('574daa37bc4712260e3415d5', 0, 3848.9, 65, 'developer', 'Alfreda Ortiz', 'female', 'alfredaortiz@fanfare.com', '+0511 (874) 515-3829', '921 Rutledge Street, Hampstead, Northern Mariana Islands, 9259', '{\r\n        \"skill\": \"Java\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      },\r\n      {\r\n        \"skill\": \"Ruby\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      }'),
('574daa37c0e6294de5987cb5', 1, 2893.52, 27, 'developer', 'Regina Berg', 'female', 'reginaberg@fanfare.com', '+0511 (843) 417-2788', '674 Claver Place, Dennard, Pennsylvania, 3998', '{\r\n        \"skill\": \"Java\"\r\n      },\r\n      {\r\n        \"skill\": \"HTML\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      },\r\n      {\r\n        \"skill\": \"JS\"\r\n      }'),
('574daa37c66e1e38eb4e05c2', 1, 2374.26, 43, 'developer', 'Miranda Gross', 'female', 'mirandagross@fanfare.com', '+0511 (986) 446-2789', '727 Pooles Lane, Boomer, Marshall Islands, 6052', '{\r\n        \"skill\": \"Python\"\r\n      },\r\n      {\r\n        \"skill\": \"HTML\"\r\n      },\r\n      {\r\n        \"skill\": \"Ruby\"\r\n      },\r\n      {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"Lisp\"\r\n      }'),
('574daa37d0ef76e417a4571b', 1, 1495.46, 51, 'developer', 'Joseph Calhoun', 'male', 'josephcalhoun@fanfare.com', '+0511 (886) 493-3295', '129 Tompkins Place, Succasunna, South Dakota, 603', ' {\r\n        \"skill\": \"PHP\"\r\n      },\r\n      {\r\n        \"skill\": \"HTML\"\r\n      },\r\n      {\r\n        \"skill\": \"SQL\"\r\n      },\r\n      {\r\n        \"skill\": \"SQL\"\r\n      },\r\n      {\r\n        \"skill\": \"C#\"\r\n      }');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
