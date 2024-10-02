-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2024 às 21:25
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biodiversidademarinha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ameacas`
--

CREATE TABLE `ameacas` (
  `especie_ameacada` varchar(200) DEFAULT NULL,
  `tipo_da_caca` varchar(250) DEFAULT NULL,
  `informacao` varchar(700) DEFAULT NULL,
  `local` varchar(200) DEFAULT NULL,
  `ano_da_pesquisa` int(11) NOT NULL,
  `multa` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ameacas`
--

INSERT INTO `ameacas` (`especie_ameacada`, `tipo_da_caca`, `informacao`, `local`, `ano_da_pesquisa`, `multa`) VALUES
('Tubarao-galha-preta', 'Caca ilegal', 'Estima-se que 100.000 tubaroes são capturados anualmente', 'Estados Unidos', 2021, '100.000'),
('Tubarão-mako', 'Caça ilegal', 'População em declínio de até 50% em algumas áreas', 'Mediterrâneo', 2020, '200.000'),
('Tubarão-tigre', 'Caça ilegal', 'Aproximadamente 73 milhões de tubarões caçados anualmente, incluindo tigres', 'Global', 2019, '1000000'),
('Tubarão-martelo', 'Caça ilegal', 'Captura de 5.000 a 10.000 tubarões-martelo por ano', 'Caribe', 2022, '50000'),
('Tubarão-azul', 'Caça ilegal', 'Queda de 30% na população nos últimos 10 anos', 'Oceano Atlântico', 2018, '150000'),
('Baleia-japonesa', 'Caça ilegal', 'Aproximadamente 200 baleias caçadas anualmente', 'Japão', 2021, '1000000'),
('Baleia-de-bossa', 'Caça ilegal', 'Cerca de 100 baleias caçadas anualmente', 'Islândia', 2018, '250000'),
('Baleia-franca-do-sul', 'Caça ilegal', 'Captura ilegal em águas protegidas', 'Antártida', 2019, '500000'),
('Baleia-azul', 'Caça ilegal', 'Casos isolados de caça; população em risco', 'Global', 2020, '2000000'),
('Baleia-minke', 'Caça ilegal', 'Estima-se que centenas são capturadas anualmente', 'Noruega', 2022, '100000'),
('Peixe-lua (Mola mola)', 'Caça ilegal', 'Estima-se que 15.000 peixes-lua sejam capturados anualmente', 'Oceano Pacífico', 2021, '50000'),
('Peixe-palhaço', 'Caça ilegal', 'A pesca ilegal afeta a população, especialmente na Indonésia', 'Sudeste Asiático', 2020, '20000'),
('Peixe-espada tropical', 'Caça ilegal', 'Aproximadamente 50.000 peixes-espada capturados anualmente', 'Caribe', 2019, '100000'),
('Peixe-cirurgião', 'Caça ilegal', 'Crescente demanda leva à captura de 20.000 peixes-cirurgião por ano', 'Havai', 2022, '25000'),
('Peixe-anjo', 'Caça ilegal', 'Captura ilegal tem impactado 30% da população', 'Mar do Caribe', 2018, '30000'),
('Polvo-comum (Octopus vulgaris)', 'Caça ilegal', 'Estima-se que 10.000 toneladas são capturadas anualmente', 'Mediterrâneo', 2021, '50000'),
('Lulas (Loligo spp.)', 'Caça ilegal', 'Cerca de 30% das lulas são capturadas ilegalmente', 'Oceano Atlântico', 2020, '75000'),
('Choco (Sepia spp.)', 'Caça ilegal', 'Captura ilegal de até 5.000 toneladas por ano', 'Mar do Norte', 2019, '100000'),
('Polvo-gigante (Enteroctopus dofleini)', 'Caça ilegal', 'Aumento na captura ilegal em regiões costeiras', 'Alasca', 2022, '200000'),
('Lulas de profundidade', 'Caça ilegal', 'Crescente demanda leva à captura ilegal significativa', 'Oceano Pacífico', 2018, '150000'),
('Tartaruga-de-couro', 'Caça ilegal', 'Aproximadamente 2.000 tartarugas capturadas anualmente', 'Caribe', 2021, '100000'),
('Tartaruga-verde', 'Caça ilegal', 'Estima-se que 40.000 tartarugas são caçadas por ano', 'Oceano Pacífico', 2020, '50000'),
('Tartaruga-de-pente', 'Caça ilegal', 'Captura ilegal em algumas áreas costeiras, números desconhecidos', 'Sudeste Asiático', 2019, '200000'),
('Tartaruga-de-bico', 'Caça ilegal', 'Caça para uso em produtos tradicionais, número incerto', 'Brasil', 2022, '150000'),
('Tartaruga-loggerhead', 'Caça ilegal', 'Aproximadamente 5.000 tartarugas caçadas anualmente', 'Mediterrâneo', 2018, '75000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cetaceos`
--

CREATE TABLE `cetaceos` (
  `especies` varchar(250) NOT NULL,
  `tamanho` double NOT NULL,
  `habitat` varchar(100) NOT NULL,
  `alimentacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cetaceos`
--

INSERT INTO `cetaceos` (`especies`, `tamanho`, `habitat`, `alimentacao`) VALUES
('Golfinho-comum', 2.5, 'águas temperadas e tropicais', 'peixes, lulas'),
('Boto-cor-de-rosa', 2.53, 'rios e águas doces da Amazônia', 'peixes, crustáceos'),
('Boto-cinza', 2.8, 'águas costeiras e rios', 'peixes, crustáceos'),
('Cachalote-pigmeu', 3, 'águas profundas', 'lulas, crustáceos'),
('Golfinho-nariz-de-garrafa', 3.5, 'águas costeiras e oceano aberto', 'peixes, lulas'),
('Orca', 9, 'oceano aberto e águas costeiras', 'peixes, mamíferos marinhos'),
('Baleia-jubarte', 15, 'águas tropicais e temperadas', 'peixes, krill'),
('Baleia-cinzenta', 15.24, 'águas costeiras, migrações entre o Pacífico e a Califórnia', 'moluscos, crustáceos'),
('Cachalote', 18, 'águas profundas, oceano aberto', 'lulas, peixes'),
('Baleia-azul', 30, 'oceano aberto, águas profundas', 'krill, pequenos crustáceos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_ataques_tubaroes`
--

CREATE TABLE `dados_ataques_tubaroes` (
  `local` varchar(400) DEFAULT NULL,
  `descricao` varchar(400) DEFAULT NULL,
  `especies` varchar(400) DEFAULT NULL,
  `dados_de_ataques` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `peixes`
--

CREATE TABLE `peixes` (
  `especies` varchar(250) NOT NULL,
  `tamanho` double NOT NULL,
  `habitat` varchar(100) NOT NULL,
  `alimentacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `peixes`
--

INSERT INTO `peixes` (`especies`, `tamanho`, `habitat`, `alimentacao`) VALUES
('Peixe-Royal-Gramma', 0.075, 'águas rasas de recifes de coral', 'plâncton, pequenos crustáceos'),
('Peixe-Donzela-Dourado', 0.08, 'recifes de coral em águas tropicais', 'algas, pequenos invertebrados'),
('Peixe palhaço', 0.1, 'águas rasas de recifes de coral', 'anêmonas do mar, pequenos invertebrados'),
('Peixe Mandarim', 0.105, 'recifes de coral, águas rasas', 'pequenos crustáceos, algas'),
('Peixe borboleta Chelmon', 0.15, 'recifes de coral em águas tropicais', 'policardídeos, pequenos crustáceos'),
('Peixe Leão-Vermelho', 0.155, 'águas tropicais, recifes de coral', 'pequenos peixes, invertebrados'),
('Cirurgia Patela', 0.2, 'águas tropicais e subtropicais', 'algas, detritos'),
('Moorish Idol', 0.201, 'recifes de coral em águas tropicais', 'algas, pequenos invertebrados'),
('Cirurgião Amarelo', 0.25, 'águas rasas de recifes de coral', 'algas, plâncton'),
('Cirurgião Aquiles', 0.255, 'águas rasas de recifes', 'algas, pequenos crustáceos'),
('Peixe-Anjo-Rainha', 0.3, 'águas tropicais, recifes de coral', 'algas, corais, pequenos invertebrados'),
('Cirurgião-Cauda-de-Escova', 0.301, 'recifes de coral, águas rasas', 'algas, pequenos invertebrados'),
('Sailfin tang', 0.35, 'águas rasas de recifes de coral', 'algas, plâncton'),
('Cirurgião-Unicórnio', 0.4, 'águas tropicais, recifes de coral', 'algas, plâncton'),
('imperador trompeta', 1.2, 'águas rasas e costeiras', 'pequenos peixes crustáceos e moluscos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `polvos`
--

CREATE TABLE `polvos` (
  `especies` varchar(250) NOT NULL,
  `tamanho` double NOT NULL,
  `habitat` varchar(100) NOT NULL,
  `alimentacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `polvos`
--

INSERT INTO `polvos` (`especies`, `tamanho`, `habitat`, `alimentacao`) VALUES
('Sépia', 0.2, 'águas costeiras, fundos arenosos', 'moluscos, crustáceos'),
('Polvo-de-anéis-azuis', 0.25, 'águas rasas, recifes de coral', 'crustáceos, moluscos'),
('Argonauta', 0.3, 'águas abertas, oceano aberto', 'plâncton, pequenos invertebrados'),
('Polvo caribenho', 0.31, 'águas tropicais do Caribe', 'crustáceos, peixes'),
('Lulas', 0.4, 'águas temperadas e tropicais', 'peixes, crustáceos'),
('Polvo comum', 0.5, 'águas costeiras, fundos rochosos', 'crustáceos, peixes'),
('Polvo cabeçudo', 0.7, 'águas temperadas e tropicais', 'peixes, crustáceos'),
('Lula de Humbold', 2, 'águas costeiras do Pacífico', 'peixes, crustáceos'),
('Lula Gigante', 12, 'águas profundas de todos os oceanos', 'peixes, outros moluscos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `preservacao_ambiental`
--

CREATE TABLE `preservacao_ambiental` (
  `praia` varchar(400) DEFAULT NULL,
  `local` varchar(400) DEFAULT NULL,
  `tipo_de_protecao` varchar(400) DEFAULT NULL,
  `especies_protegidas` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `preservacao_ambiental`
--

INSERT INTO `preservacao_ambiental` (`praia`, `local`, `tipo_de_protecao`, `especies_protegidas`) VALUES
('Praia do Forte', 'Bahia, Brasil', 'Área de proteção ambiental', 'Tartarugas marinhas'),
('Tortuguero', 'Costa Rica', 'Parque Nacional', 'Tartarugas verdes e de couro'),
('Sian Ka\'an', 'México', 'Reserva da Biosfera', 'Diversas espécies marinhas'),
('East Coast Park', 'Cingapura', 'Parque nacional', 'Diversas espécies de peixes e aves'),
('Praia de Kuta', 'Bali, Indonésia', 'Área de conservação', 'Tartarugas e corais'),
('Great Barrier Reef', 'Austrália', 'Patrimônio da Humanidade', 'Tartarugas, peixes e corais'),
('La Jolla Cove', 'Califórnia, EUA', 'Área marinha protegida', 'Leões-marinhos e peixes tropicais'),
('Parque Nacional de Galápagos', 'Equador', 'Reserva Natural', 'Tartarugas, iguanas marinhas'),
('Praia de Manuel Antonio', 'Costa Rica', 'Parque Nacional', 'Tartarugas e fauna local'),
('Ilha de Sangalaki', 'Indonésia', 'Reserva Natural', 'Tartarugas e vida marinha');

-- --------------------------------------------------------

--
-- Estrutura para tabela `report_animals`
--

CREATE TABLE `report_animals` (
  `especie_reportada` varchar(500) NOT NULL,
  `data_reportada` date NOT NULL,
  `local_reportado` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `report_animals`
--

INSERT INTO `report_animals` (`especie_reportada`, `data_reportada`, `local_reportado`) VALUES
('tutu', '2024-10-23', 'aqui');

-- --------------------------------------------------------

--
-- Estrutura para tabela `risco_extincao`
--

CREATE TABLE `risco_extincao` (
  `especie` varchar(400) NOT NULL,
  `status_de_conservacao` varchar(500) NOT NULL,
  `risco_de_extincao` varchar(400) NOT NULL,
  `local` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `risco_extincao`
--

INSERT INTO `risco_extincao` (`especie`, `status_de_conservacao`, `risco_de_extincao`, `local`) VALUES
('Baleia-japonesa', 'Em perigo', 'Alta', 'Japão'),
('Baleia-de-bossa', 'Vulnerável', 'Moderado', 'Islândia'),
('Baleia-franca-do-sul', 'Criticamente em perigo', 'Muito alto', 'Antártida'),
('Baleia-azul', 'Em perigo', 'Alta', 'Global'),
('Baleia-minke', 'Menos preocupante', 'Baixo, mas em risco local', 'Noruega'),
('Tubarão-de-pontas-negras', 'Vulnerável', 'Moderado', 'Estados Unidos'),
('Tubarão-mako', 'Vulnerável', 'Moderado', 'Mediterrâneo'),
('Tubarão-tigre', 'Em perigo', 'Alta', 'Global'),
('Tubarão-martelo', 'Vulnerável', 'Moderado', 'Caribe'),
('Tubarão-azul', 'Vulnerável', 'Moderado', 'Oceano Atlântico'),
('Polvo-comum', 'Menos preocupante', 'Baixo', 'Mediterrâneo'),
('Lulas', 'Menos preocupante', 'Baixo', 'Oceano Atlântico'),
('Choco', 'Menos preocupante', 'Baixo', 'Mar do Norte'),
('Polvo-gigante', 'Em perigo', 'Alta', 'Alasca'),
('Lulas de profundidade', 'Menos preocupante', 'Baixo', 'Oceano Pacífico'),
('Tartaruga-de-couro', 'Criticamente em perigo', 'Muito alto', 'Caribe'),
('Tartaruga-verde', 'Vulnerável', 'Moderado', 'Oceano Pacífico'),
('Tartaruga-de-pente', 'Em perigo', 'Alta', 'Sudeste Asiático'),
('Tartaruga-de-bico', 'Vulnerável', 'Moderado', 'Brasil'),
('Tartaruga-loggerhead', 'Vulnerável', 'Moderado', 'Mediterrâneo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tartarugas`
--

CREATE TABLE `tartarugas` (
  `especies` varchar(250) NOT NULL,
  `tamanho` double NOT NULL,
  `habitat` varchar(100) NOT NULL,
  `alimentacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tartarugas`
--

INSERT INTO `tartarugas` (`especies`, `tamanho`, `habitat`, `alimentacao`) VALUES
('Tartaruga de Kemp', 0.6, 'águas costeiras do Atlântico', 'jellyfish, crustáceos'),
('Tartaruga oliva', 0.75, 'águas costeiras, praias para desova', 'plâncton, pequenos crustáceos'),
('Tartaruga de pente', 0.9, 'águas rasas, recifes de coral', 'crustáceos, moluscos'),
('Tartaruga verde', 1.2, 'águas tropicais e subtropicais, recifes de coral', 'algas, plantas marinhas'),
('Tartaruga de couro', 1.8, 'oceano aberto, águas tropicais e subtropicais', 'lulas, peixes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tubaroes`
--

CREATE TABLE `tubaroes` (
  `especies` varchar(250) NOT NULL,
  `tamanho` double NOT NULL,
  `habitat` varchar(100) NOT NULL,
  `alimentacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tubaroes`
--

INSERT INTO `tubaroes` (`especies`, `tamanho`, `habitat`, `alimentacao`) VALUES
('Swellshark manchado', 1.2, 'Águas profundas do Pacífico e Índico', 'peixes menores, invertebrados'),
('Tubarão bambu', 1.21, 'Águas rasas do Oceano Índico e Pacífico', 'peixes pequenos, crustáceos'),
('Tubarão-gato-listrado', 1.5, 'Costas do Oceano Índico e Pacífico', 'peixes, crustáceos'),
('Tubarão zebra', 1.51, 'Costas do Oceano Índico e Pacífico', 'peixes, invertebrados'),
('Galha branca oceânico', 1.7, 'Águas tropicais e subtropicais do Atlântico', 'peixes, lulas'),
('Tubarão anjo do pacífico', 1.8, 'Oceano Pacífico, águas rasas e recifes', 'peixes pequenos, invertebrados'),
('Tubarão-de-port-jackson', 2, 'Costas da Austrália e Nova Zelândia', 'peixes, invertebrados'),
('Galha preta', 2.53, 'Águas tropicais e subtropicais do Atlântico e Pacífico', 'peixes, crustáceos'),
('Tubarão lixa', 2.54, 'Costas do Atlântico e do Pacífico', 'peixes, crustáceos'),
('Tubarão azul', 2.55, 'Águas temperadas e tropicais de todos os oceanos', 'peixes, lulas'),
('Tubarao-Touro', 3.4, 'atlantico, pacifico e indico', 'peixes \r\nósseos, raias, outros tubarões menores, crustáceos'),
('Tubarão duende', 3.5, 'Águas profundas do Atlântico', 'plâncton, pequenos peixes'),
('Tubarão raposa', 3.51, 'Águas profundas de todos os oceanos', 'peixes, lulas'),
('Tubarão tigre', 4, 'Oceano Atlântico, principalmente em áreas tropicais', 'peixes, focas, aves marinhas'),
('Tubarão serra', 4.1, 'Águas costeiras tropicais e subtropicais', 'peixes, crustáceos'),
('Tubarão mako', 4.2, 'Oceano Atlântico e Pacífico, águas abertas', 'peixes rápidos, lulas'),
('Tubarão martelo', 4.5, 'Águas tropicais e subtropicais de todos os oceanos', 'peixes, lulas'),
('Tubarão branco', 5, 'Oceano Atlântico, Pacífico e Índico', 'focas, leões-marinhos, peixes'),
('Tubarão peregrino', 10, 'Oceano Atlântico e Pacífico, águas abertas', 'plâncton, pequenos peixes'),
('Tubarão baleia', 15, 'Oceano Índico, Pacífico e Atlântico, águas abertas', 'plâncton, pequenos peixes');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cetaceos`
--
ALTER TABLE `cetaceos`
  ADD PRIMARY KEY (`tamanho`);

--
-- Índices de tabela `peixes`
--
ALTER TABLE `peixes`
  ADD PRIMARY KEY (`tamanho`);

--
-- Índices de tabela `polvos`
--
ALTER TABLE `polvos`
  ADD PRIMARY KEY (`tamanho`);

--
-- Índices de tabela `report_animals`
--
ALTER TABLE `report_animals`
  ADD PRIMARY KEY (`especie_reportada`);

--
-- Índices de tabela `tartarugas`
--
ALTER TABLE `tartarugas`
  ADD PRIMARY KEY (`tamanho`);

--
-- Índices de tabela `tubaroes`
--
ALTER TABLE `tubaroes`
  ADD PRIMARY KEY (`tamanho`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
