-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2022 a las 17:16:54
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db-hospital-albania`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(12) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `date` date NOT NULL,
  `uid` int(11) NOT NULL,
  `cat` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `date`, `uid`, `cat`) VALUES
(4, 'Aquí el motivo por el que los mosquitos se sienten más atraídos por ciertas personas', '<p>Si siempre has sentido que eres un imán de mosquitos, los científicos ahora tienen evidencia importante para ti: los mosquitos se sienten más atraídos por ciertos humanos, según un nuevo estudio.</p><p><br></p><p>Un equipo de investigación dirigido por Leslie Vosshall, profesora de la Universidad Rockefeller y directora de su laboratorio de neurogenética y comportamiento, buscó identificar por qué ciertas personas parecen atraer más mosquitos que otras. Los resultados de la investigación se publicaron en la revista Cell el 18 de octubre.</p><p><br></p><p>En el transcurso de los últimos tres años, los investigadores pidieron a un grupo de 64 voluntarios que usaran medias de nailon en los brazos durante seis horas al día durante varios días. Maria Elena De Obaldia, la primera autora del estudio y ex becaria postdoctoral en la Universidad Rockefeller, construyó un \"ensayo de olfatómetro de dos opciones\": una cámara de vidrio acrílico en la que los investigadores colocaron dos de las me', '1666667969180mosquito.webp', '0000-00-00', 1, 'noticias'),
(5, 'Con tutela obligaron a un hospital a operar un migrante herido en accidente', '<p>Con una tutela que fue impetrada por el personero de Riohacha y la representante legal de una organización no gubernamental, el Hospital Nuestra Señora de los Remedios fue obligado a prestar atención que llegara más allá de una urgencia básica a un ciudadano extranjero&nbsp;cuya vida estaba en riesgo y necesitaba de manera urgente ser sometido a una intervención quirúrgica.</p><p><br></p><p>&nbsp;“A finales de septiembre se presentó a mi despacho un ciudadano que dijo llamarse Yovanis Martínez Díaz, quien añadió tener nacionalidad venezolana y estar padeciendo por las secuelas que le había dejado un accidente de tránsito. El reclamante se alzó la camisa y me mostró su espalda, su estado era tan deplorable que sin más pregunta salí con él y su esposa y me presenté al Hospital de Riohacha a pedir que lo atendieran otra vez de urgencia, pues había estado allí cuando se accidentó”, afirmó el personero Yeison Deluque.</p>', '1666668161000hospital_de_riohacha.jpg', '0000-00-00', 1, 'noticias'),
(6, 'Rendición de Cuentas', '<p>«En el marco de la democracia participativa, la rendición de cuentas a la comunidad es una práctica social y política de interlocución entre los gobiernos, la ciudadanía y sus organizaciones con la finalidad de generar transparencia, condiciones de confianza entre ciudadanos y gobernantes, y fortalecer el ejercicio del control social a la administración pública».</p>', '1666668345358INVITACION.jpeg', '0000-00-00', 1, 'informes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(1, 'kevinwebtarai', 'kevinwebtarai@hotmail.com', '$2a$10$c0Qe2y31cOUfK1fP5isGIubiIpPs/Y9uvyMjWPo0dnZxZJr1hcb26', ''),
(2, 'test', 'test@test.com', '$2a$10$2C5Xb/RHwRZx.pR05A9BxuiszjR2OtMzDWxlO1cq3RmBey2HbdCV2', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user` (`uid`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_user` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
