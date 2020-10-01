-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 01 oct. 2020 à 06:53
-- Version du serveur :  10.3.23-MariaDB-0+deb10u1
-- Version de PHP : 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pgo-website`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `author_id`, `category_id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'PengolinCoin Mobile Wallet, News and More!', '<p>The PengolinCoin team is proud to release the PengolinCoin Mobile Wallet on Google Play! https://play.google.com/store/apps/details?id=com.pengolincoin.wallet.coin The PengolinCoin lead Developer, @Alonewolf has been working very hard and has completed the PengolinCoin Mobile Wallet. A mobile wallet is important for the PengolinCoin project because it helps fulfill our goal to be easy to use, and convenient. Furthermore, this will further our mission of real world utilization and adoption. We hope everyone enjoys using it! In other news, PengolinCoin is now listed on Altex Club Exchange! Altex Club has listed PengolinCoin for free and we appreciate that. A big thanks to Altex club! https://altex.club/exchange/pgo-btc Currently, deposits and withdrawals fees for Pengolincoin to ZERO. Only 0.00001 flat transaction fees will get charged when you process a withdrawal. No KYC! PengolinCoin has also been listed on Cryptocurrency tracking site, CryptoPrices123! https://cryptoprices123.com/cryptos/pgo-pengolincoin/ , Hosting and sharing Platform, LNONodes! https://lnopools.com/ The platform has NO FEES! Simply lock some LNO Coin for this benefit, and You can buy and host your PGO from your own account. PengolinCoin continues to develop partnerships and has added Vault Investments to its list! Vault Investments is a one stop shop to set up your masternodes or participate in a shared masternode. You can buy PGO right on the platform and quickly participate in a shared masternode or set up your own full PGO masternode. There is no minimum deposit for masternode shares and you can use reinvest to grow faster by compounding the interest. VAULT Investments was formed back in June 2019 as an investment platform offering instant masternode shares by using a pool of masternodes set up on the backend, which is the most fair way to ensure that everyone will receive a % of masternode rewards equal to their holding. We plan to take advantage of the growing list of services provided to us by VAULT which will include: Coin Packs Deposit BTC and choose an investment pack as the easiest way to invest and start earning straight away. There are packs to suit all budgets and you will be buying directly from and supporting PengolinCoin. Ice Drop These should give us more exposure to potential investors and act like an airdrop with an ingenious twist that reward real investors. Partner Discounts VAULT have been forming lucrative partnerships and will pass on all deals to give us a choice to add to our listings. Low Price Hosting Options With VAULT Coin or Prime Subscription Users can pay for Prime with VAULT coin and have free hosting on all holdings or alternatively pay in VAULT coin for half price hosting to ensure that they get maximum PGO rewards with no fees. VAULT has informed us that they are working on more deals and features and have their upcoming EUS partnership of which we could see more benefits from. Check Out VAULT to host and buy PGO Platform: https://my.vault.investments/coins/pgo/ Buy PGO https://my.vault.investments/coins/pgo/coin-packs/ Platform Guide: https://github.com/vault-investments/VAULT-Platform-Guide/blob/master/VAULT-Platform-Guide-English.pdf Finally, PengolinCoin has started a Holdex account https://holdex.io/x/pengolincoin to help spread PengolinCoin news and a Slack account https://join.slack.com/t/pengolincoinworkspace/shared_invite/zt-htuhp95c-scu3_cwoEjA7lgtxhnQ4zA as another means for our community to communicate. Wow! The news, partnerships and listing just keep rolling in! If you are not yet a part of the PengolinCoin team, we would love to have you! Please join our Discord https://discord.gg/245qeN5 and introduce yourself! Ask questions, read all our news and set up your tipbot for a chance to get some free PGO! What are you waiting for?! Become a Pengolonian today!</p>', 'https://cdn.pixabay.com/photo/2020/03/12/21/14/pangolin-4926259_960_720.jpg', '2020-09-17 18:02:00', '2020-09-30 11:05:56'),
(2, 1, 3, 'PengolinCoin Now Listed On Vault Investments!', '<p>Host and Buy PGO On VAULT Investments Platform Hello, @everyone We are very happy to announce, that PGO is now listed on VAULT.Investments. You can buy and host your PGO from your own account.There is no minimum deposit for masternode shares and you can use reinvest to grow faster by compounding the interest. VAULT Investments was formed back in June 2019 as an investment platform offering instant masternode shares by using a pool of masternodes set up on the backend, which is the most fair way to ensure that everyone will receive a % of masternode rewards equal to their holding. We plan to take advantage of the growing list of services provided to us by VAULT which will include: Coin Packs Deposit BTC and choose an investment pack as the easiest way to invest and start earning straight away. There are packs to suit all budgets and you will be buying directly from and supporting PengolinCoin. Ice Drop These should give us more exposure to potential investors and act like an airdrop with an ingenious twist that reward real investors. Partner Discounts VAULT have been forming lucrative partnerships and will pass on all deals to give us a choice to add to our listings. Low Price Hosting Options With VAULT Coin or Prime Subscription Users can pay for Prime with VAULT coin and have free hosting on all holdings or alternatively pay in VAULT coin for half price hosting to ensure that they get maximum PGO rewards with no fees. VAULT has informed us that they are working on more deals and features and have their upcoming EUS partnership of which we could see more benefits from. Check Out VAULT to host and buy PGO Platform: https://my.vault.investments/coins/pgo/ Buy PGO https://my.vault.investments/coins/pgo/coin-packs/ Platform Guide: https://github.com/vault-investments/VAULT-Platform-Guide/blob/master/VAULT-Platform-Guide-English.pdf VAULT: https://discord.gg/BEDSGCs</p>', 'https://cdn.pixabay.com/photo/2014/01/04/13/38/speak-238488_960_720.jpg', '2020-09-19 13:55:00', NULL),
(3, 1, 1, 'PengolinCoin Project Update!', '<p>Hello my fellow Pengolonians! Wow! A lot has been going on with PengolinCoin, it&rsquo;s hard to keep up! The PengolinCoin team has just finished another successful AMA with BCCore. The team plans on doing more AMAs so stay tuned! PengolinCoin had its second Youtube Crypto Influencer video done by Xperts Studio! Xperts Studio has over 37,000 subscribers and as of the writing of this video, 3,700 people have watched the PengolinCoin video! The team hopes that more Crypto Influencers will see how great our project is! We expect they will and PengolinCoin will get more exposure to the masses. Finally, PengolinCoin can now be used at the Crypto Marketplace https://cryptocurrencycheckout.com/marketplace PengolinCoin is now accepted as a payment option at the Crypto Marketplace! Buy gift cards (For use on USA websites) from Home Depot, Best Buy, Dominos Pizza, Starbucks, Amazon and many more with your PengolinCoins! Crypto Market place joins Orecoingames.com online casino as PengolinCoin&rsquo;s second use case! As you can see, PengolinCoin is growing! Our motto is, &ldquo;If you&rsquo;re not moving, you&rsquo;re not growing!&rdquo; The team is always working hard behind the scenes to grow PengolinCoin. We can&rsquo;t do it alone though, we also lean on our great, supportive community for help. Come and join us in Telegram or Discord, the links are located on our site, https://www.pengolincoin.xyz/ We look forward to seeing you there!</p>', 'https://cdn.pixabay.com/photo/2019/10/06/10/03/team-4529717_960_720.jpg', '2020-09-22 08:11:00', '2020-09-30 10:26:26'),
(4, 1, 1, 'PengolinCoin Lists on ZT Global Exchange and Bitsails P2P Exchange!', '<p>PengolinCoin lists on its sixth and seventh exchange! PGO keeps growing and just recently listed on ZT Global Exchange https://www.ztb.com/exchange?coin=PGO_USDT ! ZT Global is headquartered in the Cayman Islands, with R&amp;D and operation teams located in many parts of the world. It has completed global compliance layouts, including Korea, Japan, Singapore, Vietnam, Malaysia, Germany, America, Hong Kong, Estonia, Taiwan, Australia and other places. The team members have a significant international background. The founding team came from well-known Wall Street financial institutions such as Investopedia, Bank of America, Merrill Lynch, and core employees from Google, Moody&rsquo;s, Goldman Sachs, Shenzhen Stock Exchange, Tencent, Baidu and other well-known companies. Bitsails is a new P2P exchange https://www.bitsails.com/market?MarketName=BTC-PGO . We felt is was important to give the PengolinCoin community the option of trading PGO on a P2P exchange and Bitsails provided that opportunity. Since the early days we know that Exchanges are the most effective gateway to the cryptocurrencies &amp; blockchain economies. Built, based and operated in the European Union, BitSails is the ultimate generation crypto trading platform created by cryptocurrency professionals. Bitsails are a team of early adopters in blockchain technology and they decided to bring their skills and experience to the service of the global cryptocurrencies community, launching the safest Cryptocurrency Digital Exchange on the market. Given that cryptocurrencies are here to stay in the long term they aim to provide a secure, fast and clean gateway to cryptocurrencies field to everyone. BitSails is free to use, now and forever, for everyone, from everywhere. Bitsails is in its Alpha testing phase but we think it will be successful and grow and with it, increased volume. In other PengolinCoin news, PGO was just listed on My Masternode Host, https://www.mymasternodes.host/deployprep?ticker=PGO My Masternode Host is a masternode hosting site. Handling the technical aspect for those who need simplest, fastest, and safest way to activate and maintenance their masternodes. We are very excited about the new PengolinCoin and the future is bright! If you haven&rsquo;t already done so, check us out! https://www.pengolincoin.xyz/ We would love to have you in our community and become a Pengolonian!</p>', 'https://cdn.pixabay.com/photo/2014/09/07/21/52/urban-438393_960_720.jpg', '2020-09-24 15:12:00', '2020-09-30 18:14:38'),
(5, 1, 4, 'New PGO Android mobile wallet is out!', '<p>Have your PGOs always with you, in your pocket! You pay by quickly scanning a QR-code. As a merchant, you receive payments reliably and instantly. PGO Wallet is the first mobile PGO app, and arguably also the most secure! PengolinCoin is a Proof of Stake (PoS), an open-source, decentralized blockchain-based cryptocurrency focused on achieving fast transactions, an active and involved community, real-world utilization, network scalability, and fungibility. PengolinCoin&rsquo;s goal is to be accessible to everyone, everywhere. This is why we develop the most useful and accessible applications and means of communication. And the new version has an updated UI.</p>', 'https://cdn.pixabay.com/photo/2015/09/05/20/02/coding-924920_960_720.jpg', '2020-09-28 19:36:00', '2020-09-30 18:13:53'),
(6, 1, 4, 'Lorem ipsum dolor sit amet,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://cdn.pixabay.com/photo/2016/11/03/18/19/social-media-1795578_960_720.jpg', '2020-09-28 21:16:00', '2020-09-30 18:13:24'),
(7, 1, 2, 'Lorem ipsum dolor sit amet,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://cdn.pixabay.com/photo/2015/06/24/15/45/code-820275_960_720.jpg', '2020-09-28 21:17:00', NULL),
(8, 1, 5, 'Lorem ipsum dolor sit amet,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://cdn.pixabay.com/photo/2015/12/11/09/30/mobile-phone-1087845_960_720.jpg', '2020-09-28 21:19:00', NULL),
(9, 1, 5, 'Encore un titre d\'article', '<p>Jean-Michel Aulas veut en finir. Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts. <u><strong>Une fois cette date limite franchie,</strong></u> ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison. Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes). Jean-Michel Aulas veut en finir.</p>\r\n\r\n<p>Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts. Une fois cette date limite franchie, ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison. Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes). Jean-Michel Aulas veut en finir. Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts. Une fois cette date limite franchie, ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison. Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes). Jean-Michel Aulas veut en finir. Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts. Une fois cette date limite franchie, ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison. Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes).</p>\r\n\r\n<p>Jean-Michel Aulas veut en finir. Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts.</p>\r\n\r\n<p>Une fois cette date limite franchie, ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison. Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes). Jean-Michel Aulas veut en finir. Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts. Une fois cette date limite franchie, ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison. Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes). Jean-Michel Aulas veut en finir. Lass&eacute; par les atermoiements autour de certains dossiers au sein de son effectif, le boss de l&rsquo;OL a lanc&eacute; un ultimatum &agrave; ses joueurs avec une date butoir pour finaliser d&rsquo;&eacute;ventuels d&eacute;parts. Une fois cette date limite franchie, ceux qui ne seraient pas encore partis resteront &agrave; Lyon pour la saison.</p>\r\n\r\n<p>Un message qui va certainement parvenir aux oreilles des Houssem Aouar (notoirement courtis&eacute; par Arsenal), Memphis Depay (suivi par le Bar&ccedil;a) et autres Jeff Reine-Ad&eacute;la&iuml;de (appr&eacute;ci&eacute; notamment par Rennes).</p>', 'https://cdn.pixabay.com/photo/2016/03/09/09/17/computer-1245714_960_720.jpg', '2020-09-29 05:53:16', '2020-09-30 18:12:22'),
(10, 1, 3, 'Finibus Bonorum et Malorum', '<p>ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat...</p>', 'https://cdn.pixabay.com/photo/2015/05/26/23/52/technology-785742_960_720.jpg', '2020-09-30 11:17:37', '2020-09-30 18:11:57');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `content`) VALUES
(1, 'Announcements', 'Announcements'),
(2, 'Community', '<p style=\"text-align:justify\">Community is very important for PGO because it&rsquo;s the foundation of the project.</p>\r\n\r\n<p style=\"text-align:justify\">If you have any questions about PGO project, developement, leaders, etc. we&rsquo;ve made it very easy for you to get in touch with them. Feel free to join any of the channels listed below by clicking your preferred logo.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://discord.gg/XTk8u4w\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" src=\"https://www.iconfinder.com/data/icons/popular-services-brands-vol-2/512/discord-512.png\" style=\"height:100px; width:100px\" /></a><a href=\"https://t.me/pengolincoin\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" longdesc=\"PGO Telegram main channel\" src=\"https://www.iconfinder.com/data/icons/popular-services-brands-vol-2/512/telegram-512.png\" style=\"height:100px; width:100px\" /></a><a href=\"https://t.me/PengolinCoinNews\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" longdesc=\"PGO Telegram news channel\" src=\"https://www.iconfinder.com/data/icons/popular-services-brands-vol-2/512/telegram-512.png\" style=\"height:100px; width:100px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://twitter.com/PengolinC\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" src=\"https://cdn3.iconfinder.com/data/icons/inficons-round-brand-set-2/512/twitter-512.png\" style=\"height:100px; width:100px\" /></a><a href=\"https://www.facebook.com/PengolinCoin-105101314474751\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" src=\"https://www.iconfinder.com/data/icons/capsocial-round/500/facebook-512.png\" style=\"height:100px; width:100px\" /></a><a href=\"https://bitcointalk.org/index.php?topic=5234832.0\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/600px-Bitcoin.svg.png\" style=\"height:100px; width:100px\" /></a><a href=\"https://github.com/pengolincoin\" target=\"_blank\"><img alt=\"\" class=\"img-fluid mx-3\" src=\"https://www.iconfinder.com/data/icons/social-media-free-13/32/Github_social_media_logo-512.png\" style=\"height:100px; width:100px\" /></a></p>'),
(3, 'Partners', 'Partners'),
(4, 'Development', 'Development'),
(5, 'Crypto World', 'Crypto World');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200928044410', '2020-09-28 06:44:18', 101);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`) VALUES
(1, 'citizenz7', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$/Cp85GrOkeryLH/gv3+VXw$O0TJSLEmGZlLboUWvmgfXRWwxUD3XA08QVBOKOjXgX0', 'citizenz7@protonmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66F675F31B` (`author_id`),
  ADD KEY `IDX_23A0E6612469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
