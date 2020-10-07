-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 07 oct. 2020 à 19:11
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `featured` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `author_id`, `category_id`, `title`, `content`, `image`, `created_at`, `updated_at`, `views`, `featured`, `slug`) VALUES
(19, 1, 10, 'PengolinCoin Has Partnered with Cryptwerk! Another Step Towards Mass Adoption!', '<p>In our continuing efforts to achieve mass adoption PengolinCoin has partnered with Cryptwerk! https://cryptwerk.com/ Cryptwerk is an online directory with hand-picked companies, websites, shops, and services accepting Bitcoin and other popular cryptocurrencies, including PengolinCoin! Cryptwerk&rsquo;s database consists of 4000+ different companies. Cryptwerk is useful for people who wants to spend cryptocurrency directly, without exchanges or banking cards. So, check it out and use your PengolinCoin at participating merchants. Sign up, registration is free! If your merchant doesn&rsquo;t have a PengolinCoin payment gateway set up, request it! And remember, all your transactions will be quick, inexpensive and cryptographically protected.</p>', 'crypt-coin-5f7d66184261c.png', '2020-07-28 09:54:16', NULL, 2, 'no', 'pengolincoin-has-partnered-with-cryptwerk-another-step-towards-mass-adoption'),
(20, 1, 10, 'New PengolinCoin Partners and Mobile Wallet!', '<p>Since PengolinCoin has become Proof of Stake (PoS) it already has several new partners. PengolinCoin has partnered with</p>\r\n\r\n<ul>\r\n	<li>Shared Masternode <a class=\"bq eu gf gg gh gi\" href=\"https://discord.gg/NCMGXfw\" rel=\"noopener nofollow\">https://discord.gg/NCMGXfw</a></li>\r\n	<li>Trittium <a class=\"bq eu gf gg gh gi\" href=\"https://discord.gg/B3ESPc5\" rel=\"noopener nofollow\">https://discord.gg/B3ESPc5</a></li>\r\n	<li>Blockchain Infinity <a class=\"bq eu gf gg gh gi\" href=\"https://t.me/Blockchaininfinitychat\" rel=\"noopener nofollow\">https://t.me/Blockchaininfinitychat</a></li>\r\n	<li>Zcore <a class=\"bq eu gf gg gh gi\" href=\"https://zcore.app/pgo\" rel=\"noopener nofollow\">https://zcore.app/pgo</a></li>\r\n	<li>and listed on masternide tracking site, Pecunia! <a class=\"bq eu gf gg gh gi\" href=\"https://pecuniaplatform.io/coin-details/PengolinCoin\" rel=\"noopener nofollow\">https://pecuniaplatform.io/coin-details/PengolinCoin</a></li>\r\n</ul>\r\n\r\n<p>We are always looking for new partners so stay tuned!</p>\r\n\r\n<p>The PengolinCoin community wanted a mobile app they could hot stake their coins on and the PengolinCoin team listened! PENGOLINCOIN -PGO- is now available on the Trittium Mobile apps. IOS and Android access are ready!!!!</p>\r\n\r\n<p>Also PGO STAKES FOR FREE at the trttNodes wallet! Links to wallets:</p>\r\n\r\n<ul>\r\n	<li>IOS: <a class=\"bq eu gf gg gh gi\" href=\"https://apps.apple.com/us/app/trittium-wallet/id1446206807\" rel=\"noopener nofollow\">https://apps.apple.com/us/app/trittium-wallet/id1446206807</a></li>\r\n	<li>Android: <a class=\"bq eu gf gg gh gi\" href=\"https://play.google.com/store/apps/details?id=com.megano.trittium_wallet&amp;hl=en_US\" rel=\"noopener nofollow\">https://play.google.com/store/apps/details?id=com.megano.trittium_wallet&amp;hl=en_US</a></li>\r\n</ul>\r\n\r\n<p>Finally, the PengolinCoin team had two successful AMA (ask me anything) sessions. One with Bkex Exchange and one with BlockChain Infinity. The recap of the Blockchain Infinity AMA will be posted on their Medium account. More AMAs are planned!</p>\r\n\r\n<p>Stay tuned for more news and announcements on PengolinCoin&rsquo;s Discord Server <a class=\"bq eu gf gg gh gi\" href=\"https://discord.gg/245qeN5\" rel=\"noopener nofollow\">https://discord.gg/245qeN5</a></p>', 'mobile-336371_960_720-5f7d6778aef82.webp', '2020-08-06 14:50:08', NULL, 1, 'yes', 'new-pengolincoin-partners-and-mobile-wallet'),
(21, 1, 11, 'Exchange News! PengolinCoin to be Listed on ZT Global Exchange!', '<p>Exchange News! PengolinCoin to be Listed on ZT Global Exchange!</p>\r\n\r\n<p><a class=\"bq eu gf gg gh gi\" href=\"https://www.ztb.com/\" rel=\"noopener nofollow\">https://www.ztb.com/</a></p>\r\n\r\n<p>Announcement on PGO Depositing Online ZT &amp; Net Depositing to Share 50,000 PGOs</p>\r\n\r\n<p>ZT Global</p>\r\n\r\n<p>2 hours ago Updated on</p>\r\n\r\n<p>Dear ZT user:</p>\r\n\r\n<p>ZT opened PGO recharge online, and held a net recharge event to share 50,000 PGO</p>\r\n\r\n<p>Project name: PengolinCoin (PGO)</p>\r\n\r\n<p>Project official website: <a class=\"bq eu gf gg gh gi\" href=\"https://www.pengolincoin.xyz/\" rel=\"noopener nofollow\">https://www.pengolincoin.xyz/</a> (https://www.pengolincoin.xyz/)</p>\r\n\r\n<p>White paper: <a class=\"bq eu gf gg gh gi\" href=\"https://pengolincoin.s2ii.xyz/PGO-white-paper-v1.pdf\" rel=\"noopener nofollow\">https://pengolincoin.s2ii.xyz/PGO-white-paper-v1.pdf</a> (https://pengolincoin.s2ii.xyz/PGO-white-paper-v1.pdf)</p>\r\n\r\n<p>Blockchain browser: <a class=\"bq eu gf gg gh gi\" href=\"http://peng-explorer.s2ii.xyz/\" rel=\"noopener nofollow\">http://peng-explorer.s2ii.xyz/</a> (http://peng-explorer.s2ii.xyz/)</p>\r\n\r\n<p>rule of activity</p>\r\n\r\n<p>Activity 1: Recharge online</p>\r\n\r\n<p>&bull; During the designated inspection time, users deposit PGO to the ZT platform. When the number of PGO deposits reaches the corresponding requirements, ZT will go online and open PGO/USDT transactions</p>\r\n\r\n<p>&bull; Investigation time: August 14, 2020-August 18, 12:00 (GMT 8)</p>\r\n\r\n<p>&bull; Number of recharges: 1,000</p>\r\n\r\n<p>&bull; Recharge/Withdrawal: Opened</p>\r\n\r\n<p>Activity 2: Net deposit to share 50,000 PGO</p>\r\n\r\n<p>&bull; During the event period, users participate in recharging PGO, and share 50,000 PGO according to the net recharge quantity, net recharge = recharge quantity-withdrawal quantity;</p>\r\n\r\n<p>&bull; Event time: August 14, 2020-August 18, 12:00 (GMT 8).</p>', 'stock-1863880_960_720-5f7d6a19d78bc.webp', '2020-08-20 09:11:21', '2020-08-23 17:44:09', 3, 'no', 'exchange-news-pengolincoin-to-be-listed-on-zt-global-exchange'),
(22, 1, 7, 'PengolinCoin Lists on ZT Global Exchange and Bitsails P2P Exchange!', '<p>PengolinCoin lists on its sixth and seventh exchange! PGO keeps growing and just recently listed on ZT Global Exchange <a class=\"bq eu gf gg gh gi\" href=\"https://www.ztb.com/exchange?coin=PGO_USDT\" rel=\"noopener nofollow\">https://www.ztb.com/exchange?coin=PGO_USDT</a> ! ZT Global is headquartered in the Cayman Islands, with R&amp;D and operation teams located in many parts of the world. It has completed global compliance layouts, including Korea, Japan, Singapore, Vietnam, Malaysia, Germany, America, Hong Kong, Estonia, Taiwan, Australia and other places. The team members have a significant international background. The founding team came from well-known Wall Street financial institutions such as Investopedia, Bank of America, Merrill Lynch, and core employees from Google, Moody&rsquo;s, Goldman Sachs, Shenzhen Stock Exchange, Tencent, Baidu and other well-known companies.</p>\r\n\r\n<p>Bitsails is a new P2P exchange <a class=\"bq eu gf gg gh gi\" href=\"https://www.bitsails.com/market?MarketName=BTC-PGO\" rel=\"noopener nofollow\">https://www.bitsails.com/market?MarketName=BTC-PGO</a> . We felt is was important to give the PengolinCoin community the option of trading PGO on a P2P exchange and Bitsails provided that opportunity. Since the early days we know that Exchanges are the most effective gateway to the cryptocurrencies &amp; blockchain economies. Built, based and operated in the European Union, BitSails is the ultimate generation crypto trading platform created by cryptocurrency professionals. Bitsails are a team of early adopters in blockchain technology and they decided to bring their skills and experience to the service of the global cryptocurrencies community, launching the safest Cryptocurrency Digital Exchange on the market. Given that cryptocurrencies are here to stay in the long term they aim to provide a secure, fast and clean gateway to cryptocurrencies field to everyone. BitSails is free to use, now and forever, for everyone, from everywhere. Bitsails is in its Alpha testing phase but we think it will be successful and grow and with it, increased volume.</p>\r\n\r\n<p>In other PengolinCoin news, PGO was just listed on My Masternode Host, <a class=\"bq eu gf gg gh gi\" href=\"https://www.mymasternodes.host/deployprep?ticker=PGO\" rel=\"noopener nofollow\">https://www.mymasternodes.host/deployprep?ticker=PGO</a> My Masternode Host is a masternode hosting site. Handling the technical aspect for those who need simplest, fastest, and safest way to activate and maintenance their masternodes.</p>\r\n\r\n<p>We are very excited about the new PengolinCoin and the future is bright! If you haven&rsquo;t already done so, check us out! <a class=\"bq eu gf gg gh gi\" href=\"https://www.pengolincoin.xyz/\" rel=\"noopener nofollow\">https://www.pengolincoin.xyz/</a> We would love to have you in our community and become a Pengolonian!</p>', 'stock-market-2616931_960_720-5f7d6b58afcd5.webp', '2020-08-20 11:52:21', NULL, 1, 'yes', 'pengolincoin-lists-on-zt-global-exchange-and-bitsails-p2p-exchange'),
(23, 1, 7, 'PengolinCoin Project Update!', '<p>Hello my fellow Pengolonians! Wow! A lot has been going on with PengolinCoin, it&rsquo;s hard to keep up! The PengolinCoin team has just finished another successful AMA with BCCore. The team plans on doing more AMAs so stay tuned!</p>\r\n\r\n<p>PengolinCoin had its second Youtube Crypto Influencer video done by Xperts Studio! Xperts Studio has over 37,000 subscribers and as of the writing of this video, 3,700 people have watched the PengolinCoin video! The team hopes that more Crypto Influencers will see how great our project is! We expect they will and PengolinCoin will get more exposure to the masses.</p>\r\n\r\n<p>Finally, PengolinCoin can now be used at the Crypto Marketplace <a class=\"bq eu gf gg gh gi\" href=\"https://cryptocurrencycheckout.com/marketplace\" rel=\"noopener nofollow\">https://cryptocurrencycheckout.com/marketplace</a> PengolinCoin is now accepted as a payment option at the Crypto Marketplace! Buy gift cards (For use on USA websites) from Home Depot, Best Buy, Dominos Pizza, Starbucks, Amazon and many more with your PengolinCoins! Crypto Market place joins Orecoingames.com online casino as PengolinCoin&rsquo;s second use case!</p>\r\n\r\n<p>As you can see, PengolinCoin is growing! Our motto is, &ldquo;If you&rsquo;re not moving, you&rsquo;re not growing!&rdquo; The team is always working hard behind the scenes to grow PengolinCoin. We can&rsquo;t do it alone though, we also lean on our great, supportive community for help. Come and join us in Telegram or Discord, the links are located on our site, <a class=\"bq eu gf gg gh gi\" href=\"https://www.pengolincoin.xyz/\" rel=\"noopener nofollow\">https://www.pengolincoin.xyz/</a> We look forward to seeing you there!</p>', 'social-media-419944_960_720-5f7d6d8697965.webp', '2020-09-01 22:25:58', NULL, 1, 'yes', 'pengolincoin-project-update'),
(24, 1, 11, 'PengolinCoin Now Listed On Vault Investments!', '<p><strong>Host and Buy PGO On VAULT Investments Platform</strong> Hello, @everyone We are very happy to announce, that <strong>PGO</strong> is now listed on VAULT.Investments. You can <strong>buy and host your PGO</strong> from your own account.There is no minimum deposit for masternode shares and you can use reinvest to grow faster by compounding the interest.</p>\r\n\r\n<p><strong>We plan to take advantage of the growing list of services provided to us by VAULT which will include:</strong> <strong>Coin Packs</strong> Deposit BTC and choose an investment pack as the easiest way to invest and start earning straight away. There are packs to suit all budgets and you will be buying directly from and supporting PengolinCoin. <strong>Ice Drop</strong> These should give us more exposure to potential investors and act like an airdrop with an ingenious twist that reward real investors.</p>\r\n\r\n<p><strong>Partner Discounts</strong> VAULT have been forming lucrative partnerships and will pass on all deals to give us a choice to add to our listings.</p>\r\n\r\n<p><strong>Low Price Hosting Options With VAULT Coin or Prime Subscription</strong> Users can pay for Prime with VAULT coin and have free hosting on all holdings or alternatively pay in VAULT coin for half price hosting to ensure that they get maximum PGO rewards with no fees.</p>\r\n\r\n<p>VAULT has informed us that they are working on more deals and features and have their upcoming EUS partnership of which we could see more benefits from.</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">VAULT Investments was formed back in June 2019 as an investment platform offering instant masternode shares by using a pool of masternodes set up on the backend, which is the most fair way to ensure that everyone will receive a % of masternode rewards equal to their holding.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Check Out VAULT to host and buy PGO</strong> <strong>Platform: </strong><a class=\"bq eu gu gv gw gx\" href=\"https://my.vault.investments/coins/pgo/\" rel=\"noopener nofollow\">https://my.vault.investments/coins/pgo/</a></li>\r\n	<li><strong>Buy PGO</strong> <a class=\"bq eu gu gv gw gx\" href=\"https://my.vault.investments/coins/pgo/coin-packs/\" rel=\"noopener nofollow\">https://my.vault.investments/coins/pgo/coin-packs/</a></li>\r\n	<li><strong>Platform Guide:</strong> <a class=\"bq eu gu gv gw gx\" href=\"https://github.com/vault-investments/VAULT-Platform-Guide/blob/master/VAULT-Platform-Guide-English.pdf\" rel=\"noopener nofollow\">https://github.com/vault-investments/VAULT-Platform-Guide/blob/master/VAULT-Platform-Guide-English.pdf</a></li>\r\n	<li><strong>VAULT:</strong> <a class=\"bq eu gu gv gw gx\" href=\"https://discord.gg/BEDSGCs\" rel=\"noopener nofollow\">https://discord.gg/BEDSGCs</a></li>\r\n</ul>\r\n\r\n<p><img alt=\"\" class=\"img-fluid\" src=\"https://images-ext-2.discordapp.net/external/Ppk5M1tuHidcDv_wyj3-f2_2UI1VYCM9fhIFpSx4-VQ/https/miro.medium.com/max/729/1%2AUlHFPLa_oKYD6k3yBjmj7g.png\" style=\"height:263px; width:469px\" /></p>', 'analysis-1841158_960_720-5f7d6fd18c71f.webp', '2020-09-16 19:08:38', NULL, 8, 'yes', 'pengolincoin-now-listed-on-vault-investments'),
(25, 1, 7, 'PengolinCoin Mobile Wallet, News and More!', '<p>The PengolinCoin team is proud to release the PengolinCoin Mobile Wallet on Google Play! <a class=\"bq eu gf gg gh gi\" href=\"https://play.google.com/store/apps/details?id=com.pengolincoin.wallet.coin\" rel=\"noopener nofollow\">https://play.google.com/store/apps/details?id=com.pengolincoin.wallet.coin</a> The PengolinCoin lead Developer, @Alonewolf has been working very hard and has completed the PengolinCoin Mobile Wallet. A mobile wallet is important for the PengolinCoin project because it helps fulfill our goal to be easy to use, and convenient. Furthermore, this will further our mission of real world utilization and adoption. We hope everyone enjoys using it!</p>\r\n\r\n<p>In other news, PengolinCoin is now listed on Altex Club Exchange! Altex Club has listed PengolinCoin for free and we appreciate that. A big thanks to Altex club! <a class=\"bq eu gf gg gh gi\" href=\"https://altex.club/exchange/pgo-btc\" rel=\"noopener nofollow\">https://altex.club/exchange/pgo-btc</a> Currently, deposits and withdrawals fees for Pengolincoin to ZERO. Only 0.00001 flat transaction fees will get charged when you process a withdrawal. No KYC!</p>\r\n\r\n<p>PengolinCoin has also been listed on Cryptocurrency tracking site, CryptoPrices123! <a class=\"bq eu gf gg gh gi\" href=\"https://cryptoprices123.com/cryptos/pgo-pengolincoin/\" rel=\"noopener nofollow\">https://cryptoprices123.com/cryptos/pgo-pengolincoin/</a> , Hosting and sharing Platform, LNONodes! <a class=\"bq eu gf gg gh gi\" href=\"https://lnopools.com/\" rel=\"noopener nofollow\">https://lnopools.com/</a> The platform has NO FEES! Simply lock some LNO Coin for this benefit, and You can buy and host your PGO from your own account.</p>\r\n\r\n<p>PengolinCoin continues to develop partnerships and has added Vault Investments to its list! Vault Investments is a one stop shop to set up your masternodes or participate in a shared masternode. You can buy PGO right on the platform and quickly participate in a shared masternode or set up your own full PGO masternode. There is no minimum deposit for masternode shares and you can use reinvest to grow faster by compounding the interest. VAULT Investments was formed back in June 2019 as an investment platform offering instant masternode shares by using a pool of masternodes set up on the backend, which is the most fair way to ensure that everyone will receive a % of masternode rewards equal to their holding. We plan to take advantage of the growing list of services provided to us by VAULT which will include: Coin Packs Deposit BTC and choose an investment pack as the easiest way to invest and start earning straight away. There are packs to suit all budgets and you will be buying directly from and supporting PengolinCoin. Ice Drop These should give us more exposure to potential investors and act like an airdrop with an ingenious twist that reward real investors. Partner Discounts VAULT have been forming lucrative partnerships and will pass on all deals to give us a choice to add to our listings. Low Price Hosting Options With VAULT Coin or Prime Subscription Users can pay for Prime with VAULT coin and have free hosting on all holdings or alternatively pay in VAULT coin for half price hosting to ensure that they get maximum PGO rewards with no fees. VAULT has informed us that they are working on more deals and features and have their upcoming EUS partnership of which we could see more benefits from. Check Out VAULT to host and buy PGO Platform: <a class=\"bq eu gf gg gh gi\" href=\"https://my.vault.investments/coins/pgo/\" rel=\"noopener nofollow\">https://my.vault.investments/coins/pgo/</a> Buy PGO <a class=\"bq eu gf gg gh gi\" href=\"https://my.vault.investments/coins/pgo/coin-packs/\" rel=\"noopener nofollow\">https://my.vault.investments/coins/pgo/coin-packs/</a> Platform Guide: <a class=\"bq eu gf gg gh gi\" href=\"https://github.com/vault-investments/VAULT-Platform-Guide/blob/master/VAULT-Platform-Guide-English.pdf\" rel=\"noopener nofollow\">https://github.com/vault-investments/VAULT-Platform-Guide/blob/master/VAULT-Platform-Guide-English.pdf</a></p>\r\n\r\n<p>Finally, PengolinCoin has started a Holdex account <a class=\"bq eu gf gg gh gi\" href=\"https://holdex.io/x/pengolincoin\" rel=\"noopener nofollow\">https://holdex.io/x/pengolincoin</a> to help spread PengolinCoin news and a Slack account <a class=\"bq eu gf gg gh gi\" href=\"https://join.slack.com/t/pengolincoinworkspace/shared_invite/zt-htuhp95c-scu3_cwoEjA7lgtxhnQ4zA\" rel=\"noopener nofollow\">https://join.slack.com/t/pengolincoinworkspace/shared_invite/zt-htuhp95c-scu3_cwoEjA7lgtxhnQ4zA</a> as another means for our community to communicate.</p>\r\n\r\n<p>Wow! The news, partnerships and listing just keep rolling in! If you are not yet a part of the PengolinCoin team, we would love to have you! Please join our Discord <a class=\"bq eu gf gg gh gi\" href=\"https://discord.gg/245qeN5\" rel=\"noopener nofollow\">https://discord.gg/245qeN5</a> and introduce yourself! Ask questions, read all our news and set up your tipbot for a chance to get some free PGO! What are you waiting for?! Become a Pengolonian today!</p>', 'smartphone-1701086_960_720-5f7d70c4d1a1a.jpeg', '2020-09-20 16:39:48', NULL, 28, 'yes', 'pengolincoin-mobile-wallet-news-and-more');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `content`, `slug`) VALUES
(7, 'Announcements', '<p>Information, new applications, updates, news, events, partnerships, exchanges, etc. you will learn everything about PengolinCoin :)</p>', 'announcements'),
(8, 'Community', '<p>Community is very important for PGO because it&#39;s the foundation of the project.</p>\r\n\r\n<p>If you have any questions about PGO project, developement, leaders, etc. we&#39;ve made it very easy for you to get in touch with them. Feel free to join any of the channels listed below by clicking your preferred logo.</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://discord.gg/XTk8u4w\" target=\"_blank\"><img alt=\"Discord\" class=\"img-fluid mx-3\" src=\"https://www.iconfinder.com/data/icons/popular-services-brands-vol-2/512/discord-512.png\" style=\"height:100px; width:100px\" /></a> <a href=\"https://t.me/pengolincoin\" target=\"_blank\"><img alt=\"Telegram\" class=\"img-fluid mx-3\" longdesc=\"PGO Telegram main channel\" src=\"https://www.iconfinder.com/data/icons/popular-services-brands-vol-2/512/telegram-512.png\" style=\"height:100px; width:100px\" /></a> <a href=\"https://t.me/PengolinCoinNews\" target=\"_blank\"><img alt=\"Telegram News\" class=\"img-fluid mx-3\" longdesc=\"PGO Telegram news channel\" src=\"https://www.iconfinder.com/data/icons/popular-services-brands-vol-2/512/telegram-512.png\" style=\"height:100px; width:100px\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://twitter.com/PengolinC\" target=\"_blank\"><img alt=\"Twitter\" class=\"img-fluid mx-3\" src=\"https://cdn3.iconfinder.com/data/icons/inficons-round-brand-set-2/512/twitter-512.png\" style=\"height:100px; width:100px\" /></a> <a href=\"https://www.facebook.com/PengolinCoin-105101314474751\" target=\"_blank\"><img alt=\"Facebook\" class=\"img-fluid mx-3\" src=\"https://www.iconfinder.com/data/icons/capsocial-round/500/facebook-512.png\" style=\"height:100px; width:100px\" /></a> <a href=\"https://bitcointalk.org/index.php?topic=5234832.0\" target=\"_blank\"><img alt=\"Bitcointalk\" class=\"img-fluid mx-3\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/600px-Bitcoin.svg.png\" style=\"height:100px; width:100px\" /></a>\r\n<a href=\"https://github.com/pengolincoin\" target=\"_blank\"><img alt=\"Github\" class=\"img-fluid mx-3\" src=\"https://www.iconfinder.com/data/icons/social-media-free-13/32/Github_social_media_logo-512.png\" style=\"height:100px; width:100px\" /></a>\r\n</p>', 'community'),
(9, 'Crypto World', '<p>The world of cryptocurrency is a vast world full of surprising projects ... Something happens every day. Let&#39;s discover this whole universe together.</p>', 'crypto-world'),
(10, 'Partners', '<p>PengolinCoin has many partners that allow it to develop, innovate and grow ...</p>', 'partners'),
(11, 'Exchanges', '<p>PengolinCoin is listed on several exchnages. You&#39;ll find news &amp; updates about PGO markets in this category.</p>', 'exchanges');

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
('DoctrineMigrations\\Version20200928044410', '2020-10-05 18:08:49', 94),
('DoctrineMigrations\\Version20201003184812', '2020-10-05 18:08:49', 4),
('DoctrineMigrations\\Version20201004080728', '2020-10-05 18:08:49', 3),
('DoctrineMigrations\\Version20201005160738', '2020-10-05 18:08:49', 20),
('DoctrineMigrations\\Version20201005191416', '2020-10-05 21:14:22', 13),
('DoctrineMigrations\\Version20201006081442', '2020-10-06 10:14:48', 57);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'citizenz7', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$lAJHkgjB5R0ZI2EFjU9lGg$W63FI/KgHYY7QDJ00Dm/VoquZPbsfYNIzfUOZR+SN3I', 'citizenz7@protonmail.com'),
(2, 'olivier', '[]', '$argon2id$v=19$m=65536,t=4,p=1$+QM1SUxm1VAkGoTXvs3a3A$CGhNvRVoh5aNGIoIWNa8J1dRWCSBE6UTNorjYYB0vts', 'oprieur@protonmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23A0E66989D9B62` (`slug`),
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
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
