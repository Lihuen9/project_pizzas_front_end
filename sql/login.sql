-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2022 a las 01:21:10
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
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` char(64) NOT NULL,
  `email` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` enum('si','no') DEFAULT 'si'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `email`, `created_at`, `active`) VALUES
(1, 'maria', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'mariadb@gmail.com', '2022-07-06 23:05:38', 'si'),
(4, 'joel', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'joel@gmail.com', '2022-07-06 23:22:55', 'si'),
(5, 'pamela', 'd3a50c7f9a396c36afbcb87d0a3245b834f4c30dcfc3e67fdc428409fb264f40', 'pamela@gmail.com', '2022-07-06 23:23:42', 'si'),
(6, 'mario', 'e6160c42406f3dcc8ec709c36b6b0f1ba7f56e15', 'mario@gmail.com', '2022-07-06 23:05:38', 'si'),
(7, 'marta', 'd46064b67fa1be311183c7136b24d65fc53c26c0', 'marta@gmail.com', '2022-07-06 23:05:38', 'si'),
(8, 'pepe', '974a2be4c0f6db85c78778e367e905f6f4c1b3524505872ade3ddae1d9ef43b8', 'pepe@gmail.com', '2022-07-11 21:52:32', 'si'),
(9, 'pepito', '4a5afef9db5c9e17e4cb1bd88dd3a0fa9e7009fd54b58401c70de3ef1dd0cad0', 'pepito@gmail.com', '2022-07-11 22:01:26', 'si'),
(10, 'pepote', 'f5c0adc5484971f23411d0b4b7e6929293d22b31960c70e97bf18aa937095b36', 'pepote@gmail.com', '2022-07-11 22:01:26', 'si'),
(11, 'claudio', '8cface989a3a91edb14989e82ff3ab67cfd3046906d0cee828f8882a8e137823', 'claudio@gmail.com', '2022-08-03 23:11:45', 'si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
