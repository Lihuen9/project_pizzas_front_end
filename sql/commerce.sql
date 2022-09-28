-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2022 a las 01:15:02
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `commerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `category_name`) VALUES
(1, 'pizzas'),
(2, 'hamburguesas'),
(3, 'picadas'),
(4, 'panchos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `price`, `start_date`, `image`, `id_category`, `description`) VALUES
(1, 'Especial Fugazzeta', '1400.00', '2022-08-29 22:25:11', 'images/fugazzeta.jpg', 1, ''),
(2, 'Especial 4 quesos', '1900.00', '2022-08-29 22:25:11', 'images/pizza-4-quesos.jpg', 1, ''),
(3, 'Especial Albahaca', '1700.00', '2022-08-29 22:25:11', 'images/pizza-de-albahaca.jpg', 1, ''),
(4, 'Especial Muzzarella', '1500.00', '2022-08-29 22:25:11', 'images/pizza-muzzarella.jpg', 1, ''),
(5, 'Especial Napolitana', '1900.00', '2022-08-29 22:25:11', 'images/pizza-napolitana.jpg', 1, ''),
(6, 'Especial Rucula y Jamón', '2500.00', '2022-08-29 22:25:11', 'images/pizza-rucula-y-jamon.jpg', 1, ''),
(7, 'Aros de cebolla', '800.00', '2022-09-07 22:19:11', 'images/aros.jpg', 3, '18 unidades, incluyen dip 330'),
(8, 'pancho carrera', '500.00', '2022-09-28 22:08:50', 'images/pancho_carrera.jpg', 4, ''),
(10, 'Pizza Especial Cannabis', '7900.00', '2022-09-28 22:53:12', 'images/pizza_verde.jpg', 1, ''),
(11, 'SUPER Milanga', '1009.00', '2022-09-28 23:06:02', 'images/milanga.jpg', 2, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `products_categories` (`id_category`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
