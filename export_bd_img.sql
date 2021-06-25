-- phpMyAdmin SQL Dump
-- Версия сервера: 10.2.37-MariaDB
-- PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------


--
-- `markers_img`
--

CREATE TABLE `markers_img` (
  `id` int(11) NOT NULL,
  `latlng` varchar(4000) NOT NULL,
  `html` text NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- dump `markers_img`
--

INSERT INTO `markers_img` (`id`, `latlng`, `html`, `type`) VALUES
(365, '[[{\"lat\":1600,\"lng\":1050.6492669924478},{\"lat\":1457,\"lng\":1050.6492669924478},{\"lat\":1460.5,\"lng\":1102.6336180335622},{\"lat\":1601.5,\"lng\":1101.1340694458377}]]', '<h1>Budova №1</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Budova №1\" src=\"../vendor/tiny/images/1.jpg\" alt=\"Budova №1\" /></p>', 'Polygon'),
(366, '[[{\"lat\":772,\"lng\":1771.0725269056047},{\"lat\":638.5,\"lng\":1760.5756867915334},{\"lat\":636,\"lng\":1810.0607901864405},{\"lat\":723.5,\"lng\":1819.5579312420286},{\"lat\":720,\"lng\":1885.5380691019045},{\"lat\":761,\"lng\":1889.0370158065948}]]', '<h1>Budova №2</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Budova №2\" src=\"../vendor/tiny/images/2.jpg\" alt=\"Budova №2\" width=\"712\" height=\"559\" /></p>', 'Polygon'),
(367, '[[{\"lat\":1598,\"lng\":1410.0413794585918},{\"lat\":1603,\"lng\":1444.5309969762543},{\"lat\":1500.5,\"lng\":1464.0251286166722},{\"lat\":1455,\"lng\":1458.0269342657743},{\"lat\":1451,\"lng\":1561.4957868187616},{\"lat\":1400,\"lng\":1568.4936802281422},{\"lat\":1399.5,\"lng\":1416.539423338731},{\"lat\":1504.5,\"lng\":1423.537316748112}]]', '<h1>Budova №3</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Budova №3\" src=\"../vendor/tiny/images/3.jpg\" alt=\"Budova №3\" /></p>', 'Polygon'),
(368, '[[{\"lat\":817,\"lng\":1116.001203766068},{\"lat\":769.5,\"lng\":1112.0024075321362},{\"lat\":768.5,\"lng\":1049.0213668477093},{\"lat\":659.5,\"lng\":1042.0234734383284},{\"lat\":659.5,\"lng\":997.0370158065949},{\"lat\":820,\"lng\":1007.0340063914246}]]', '<h1>Budova №4</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Budova №4\" src=\"../vendor/tiny/images/blobid1624619300383.jpg\" alt=\"Budova №4\" width=\"682\" height=\"341\" /></p>', 'Polygon'),
(369, '[[{\"lat\":1430,\"lng\":2425.7520241899656},{\"lat\":1430,\"lng\":2459.7417921783863},{\"lat\":1331,\"lng\":2460.7414912368695},{\"lat\":1330,\"lng\":2475.736977114114},{\"lat\":1218,\"lng\":2478.736074289563},{\"lat\":1214,\"lng\":2421.7532279560337}]]', '<h1>Budova №5</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Budova №5\" src=\"../vendor/tiny/images/blobid1624619390943.jpg\" alt=\"Budova №5\" width=\"708\" height=\"531\" /></p>', 'Polygon'),
(370, '{\"lat\":982,\"lng\":1867.6394720625958}', '<h1>Označen&iacute; №1</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Označen&iacute; №1\" src=\"../vendor/tiny/images/blobid1624619578765.jpg\" alt=\"Označen&iacute; №1\" /></p>', 'Point'),
(371, '{\"lat\":950,\"lng\":2959.310843925997}', '<h1>Označen&iacute; №2</h1>\n<p>Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text. Zde může b&yacute;t popisn&yacute; text.</p>\n<p><img title=\"Označen&iacute; №2\" src=\"../vendor/tiny/images/blobid1624619675691.jpg\" alt=\"Označen&iacute; №2\" /></p>', 'Point');

-- --------------------------------------------------------

--
-- `users_img`
--

CREATE TABLE `users_img` (
  `id` int(11) NOT NULL,
  `log` varchar(20) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- dump `users_img`
--

INSERT INTO `users_img` (`id`, `log`, `pass`, `role`) VALUES
(1, 'admin', '$2y$10$nwMT2Vjtt2VRdgXS4Dqv4e3MjxolASjQ0a7bK9viEJ/5PZ5NBuWBO', 'admin_img'),
(2, 'redaktor', '$2y$10$IUy/KqeiaxcRCMNv6l1/yu4oqQRUmoE08mQmf/E2xub.SCHaVIDCC', 'redaktor_img'),
(3, 'admin2', '$2y$10$sWbYPIw9nkGqfNYqQEViIuVfAMPOUtB6fwbXwzECY8gCOx5kC.2gi', 'admin_img'),
(4, 'redaktor2', '$2y$10$unkoMgkMggz67iC2sOn0PO4zlcY3sa9Dra/iIqe6raI3ZYhgTrZTm', 'redaktor_img');

--
-- Table indexes
--

----
ALTER TABLE `markers_img`
  ADD PRIMARY KEY (`id`);

----
ALTER TABLE `users_img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT
-- AUTO_INCREMENT  `markers_img`
--
--

-- AUTO_INCREMENT  `users_img`
--
ALTER TABLE `users_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;
