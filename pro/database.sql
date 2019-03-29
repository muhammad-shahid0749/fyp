-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmanagement
-- ------------------------------------------------------
-- Server version	5.6.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `adminpassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `adminid_UNIQUE` (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `stuid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `session` varchar(45) NOT NULL,
  `term` varchar(45) NOT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(45) DEFAULT NULL,
  `depid` int(11) DEFAULT NULL,
  `semesters` int(11) DEFAULT NULL,
  PRIMARY KEY (`classid`),
  KEY `depid_idx` (`depid`),
  CONSTRAINT `depid` FOREIGN KEY (`depid`) REFERENCES `department` (`depid`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'BS',1,8),(12,'BS',NULL,8),(458,'MS',1035,4);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(40) NOT NULL,
  `credithours` int(11) NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'andriod',4),(2,'assembly',4),(3,'java',4),(4,'hrm',3),(5,'oop',4),(6,'c++',3),(345,'Discrete',4),(582,'DLD',3),(2031,'FM',3),(3524,'dsd',5),(8526,'jkjkk',3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursemapping`
--

DROP TABLE IF EXISTS `coursemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursemapping` (
  `courseid` int(11) NOT NULL,
  `classid` int(11) DEFAULT NULL,
  `depid` int(11) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `teachername` varchar(45) NOT NULL,
  `session` varchar(45) NOT NULL,
  KEY `depid_idx` (`depid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursemapping`
--

LOCK TABLES `coursemapping` WRITE;
/*!40000 ALTER TABLE `coursemapping` DISABLE KEYS */;
INSERT INTO `coursemapping` VALUES (1,458,1035,3,'sir asad','2015-16'),(1,12,1,1,'sir asad','2015'),(2,12,1,1,'sir asad','2015'),(3,12,1,1,'sir asad','2015'),(4,12,1,2,'sir asad','2016'),(4,12,1,1,'sir asad','2015'),(5,12,1,1,'sir asad','2015'),(6,12,1,1,'sir asad','2015');
/*!40000 ALTER TABLE `coursemapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `depid` int(11) NOT NULL,
  `depname` varchar(45) NOT NULL,
  PRIMARY KEY (`depid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science'),(258,'English'),(420,'LAW'),(852,'Chemistry cd'),(875,'Mathematics'),(1035,'Psychology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `stuid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `marks` int(11) NOT NULL,
  `semester` int(10) NOT NULL,
  KEY `courseid_idx` (`courseid`),
  KEY `stuid` (`stuid`),
  CONSTRAINT `courseid` FOREIGN KEY (`courseid`) REFERENCES `course` (`courseid`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `stuid` FOREIGN KEY (`stuid`) REFERENCES `student` (`stuid`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (2,1,78,1),(2,2,45,1),(2,3,25,1),(2,4,23,1),(2,5,89,1),(2,6,74,1);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stuid` int(11) NOT NULL DEFAULT '0',
  `stufname` varchar(45) NOT NULL,
  `stulname` varchar(45) NOT NULL,
  `stufathername` varchar(45) NOT NULL,
  `stuemail` varchar(45) NOT NULL,
  `stuaddress` varchar(45) NOT NULL,
  `stugender` varchar(45) NOT NULL,
  `sturegestration` date NOT NULL,
  `depid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `stusession` varchar(45) NOT NULL,
  `stuPhone` varchar(45) NOT NULL,
  `stuzip` varchar(45) NOT NULL,
  `studob` date NOT NULL,
  `stufatherphone` varchar(45) NOT NULL,
  `stufatheroccuption` varchar(45) NOT NULL,
  `stucnic` varchar(45) NOT NULL,
  `stuimage` blob NOT NULL,
  PRIMARY KEY (`stuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Ali','Asad','dhfghg','ldkjhfgh','dhfhh','MALE','2019-03-26',1035,458,'2015','ghdgh','dgfgf','2019-03-13','dshg','Teacher','444','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\r( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z+%%-------+---+--+-+-----.---------------------------ÿÀ\0\0¸\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0<\0	\0\0\0\0\0!1AQ\"aq2‘R¡±ÁBÑá#3b’$Cr‚¢ÂğñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0,\0\0	\0\0\0\0\0\0\0!1AQa\"2¡BRb‘±ÁáÿÚ\0\0\0?\0ÎÀ°=!`¡À°I`FÑ\rÍU—×D»²ÄÚK,6Ÿ6|Ò×.‹ÈË.N+]šc‡&AgÂgó*%®ÑìjG€Ç²û`Ú·¡ĞÑ¡nr5}Ë]MßÃiùöÆ…\Z<­á‹k/Uú5¹é±´Ou’j|:=„ñšGÓ¶”×,àä»ìĞcÃœtäxü½ÏG\\>=ˆªğåØ=¦/uy[„ÅıK_?ÇbpÕÍMødùeŸáoº{{ıÎò¿\n]?¡Bã„Eî—Ÿš%Á¡Úf\rZ–ÓŒ”œeœ)GL®Ò]OJøo«ˆòË\n¬t’[?4p5ìZ_.MËáMêñø$ûö}J¼6şVõa,âYåo¤¿ÊÍ1äpF9q)«]·\\©1ö×Q«N5\"ò¤“#¼óÈš\0æ\00@0	!\0€\0\0\00Â\0\008\043è9 t€C° Ê° àtp,À°\0gñ*˜Ium}îG–+»Õú½Ì;š\\õi®‰¹?eıNÆ\']ÌìÃùM+JF8•m¢]¦‰HÚË4`ZŒ¨¢ÌY¢FM‹”dàJäG9ŒH©Z%*ôËõYVª!¢Ñ‹sŒÑ\\­÷òëÜê.bbq›~h<z£)-müvÜgI½°×¿_Ôédpß\07ófŸáhî¤uàwpfU6FÀ\0ÔÈ8@À@DD `B\0Ñ`\"\0@hp€hhÜ\Zb\0€/ƒ‚€\0ìAN9©‘ëÿ\0Ã£°Øç-gš³KLE/_?ÌÚ Üš‚Ño\'ûSw&wb_…ÔjÄ»J¬Y‘\n†›¾­’Ñ»‹ÛIš4nÓ‘eHÌ¶¬¤·.Åh]6:sûk\\µ²Å\\hQ«wÊõEÀ’WR[Å…u%¦ıŠñâzuòV	ø££D´Ñ§WfuÛÑ®å÷–R¼††mƒ)bâxÛåçó_ÈìæWá)¥Zk«†ß?¹ÕI8?!ÅŸó‘HÓSà\0„$‚îPÑ¡\0\0A\0&1€\09 `\n\"Z€ó80Ø\0Fw©şõR=’^ígö:ŠÂg;FÁ«˜U‹ÒOU….Y~m}ÎÚšÁÂ©É„m$rµèVº¨éÁüª1úª4ù³ş\\5¯›ïÔ³ÃoéÃE*õ©sri©Fœ¤·åk\r­µÃèoJÑëË¬Zi­×s–áŸJ_2ê³§üº1rå‹iÅÉ¦ÚÏ+ÁÑ‡ög—İrü/Gii¦\ZyYÇôfå¡•B”iÆ1[E%®­ác-÷ÂF\nšÚL|[)İG\nso	cú%îs_İ(.GÈ§òåZnu¥F4é¤ñV¥9<=ò;)ÁI5„Óß:£ü/JïüTÛQtú}=7O8ËÁ¤e¶LÔÚ¨º9ZU©o\'>IF5(º¬\Z’æS¥7ªë£ìıNŞŞ\r¤ñº+pO…éÚÅÆœd“åÏ3æo•ay}»³v°g6›´iJ5\'lÎt´2ïŞ2n×‰‰{)(·„ß‰öS	ôid	Ïš³¨¾•ˆ¶ö{§‡ìÒLå’›P…S¤µú|SK§’:8?\nÎøFv¸˜z¬\\jWØX°Ë#“¤ã\"AZ#\r„\r\0\r[:iÃ/s2Ô×²^€hÎ©XÒZëVD\0\0ˆ@\0D0\0X€¢<p„˜ à)Hƒ€¤\0^±‚qó‹ü™¯jaÙUä—“X—¡¯Bx8òGŒ›ù=2ç¾\rŠQDĞ¦R·«“F‹fk,tP½O™Ez²ÊÛG©KŒZ¹å)Î›ibpn2Mm±ZâÂu):nµH7Jo’¦Ú´×Óí‚_eÂ+ŠÙ±c<ÉÅïºóF„¢dğ«WDœœa^i·)KN­îkÔeEº2œW*Crˆj1³™¦.V?nŠ÷2ÜÂ«&ëÓ‡‰Íc9Ù/ÜØ¼…ç)´”V3Ó}H–ô\\5³[å¬¬~§º-KE€Pñ<ôI%çæ\n¬èÅ\ZÙÃê\'mGào1¥gcJf­Œò‘ª9…t@OtT“Ô÷%¥¯B«x,ÚO$Ùi£L¹gÕ§JZK×AŠŠ7;²{¿©‘Iˆ\0@AÀL@`0\"Ï3ÀDä‹$	À@KZ™‰˜‹V“éö2Ì®\'G¥•d¯“RÚ¦¦Õ¼´0io“VÖ©ÅÏc\"N$·U5^¡DcüAÄãFœ9Shòjÿ\0^ÖsşÍãÌš©¯Môz<›môaq«“ÿ\0g»ÚÖYÁn¬ôÉæ	üiôÒ¿_&£ÂIeR›íÍ²~¬ôzuT££ÈŸTD£ÆejõHQ^hT•]lêãhWµtô-Ø(ü¤ò±%Ÿ¹JŞòÇE«ÎŞF­\nQEó…¹¬`å³ƒ.UÄ¹OHù½YZ´‰%2i+J·du&hpÚİ™È’Î¾$‚Äú7nYY’)gVG!°DUXÏÅ•Ú¿\Z$££¢´UiùŠ‚Ğ’kAˆÌº–¾¤«K\\vĞ%8Y@\0@L`Hb( D\0yºR4 Àäƒ\0Ü‹Æ¨rˆ~[ìÄÚ]•ïF…­TÍJæãUÃ\\3NÒı<>‡’RÑëãÈå\ré–øéM-rškºgiÂ§NSùIJ‹nR‚ú©7¾›5ŸCÑiÜFZw)\\ğHÍó\'Œö*ş\rı>XFÔ×õ9[^å8ª‘åJQq‹KšzåIö]OE¶YIõ2lø\"¦òŞMGYDM¿$çœ&×+ÇĞÈ­<{ëÔÉÎñ{És*T—5Yaãuçêf2ahèxjÄr÷–¾İyHÇ³¸:MõåĞÑ…O_±Õ	*£ËÉ	96Ñ;‘V¬‰[+U.Ì¨c,XĞÌ³Ø¬{\nx{´E2Y2)1ˆ† Û©z Ô`·ú—ªGOo±,‘\r‰d00n&ıHÓ~6EQ›%È† €È“‘d\0vDØÔÄÀh9Ñ\0Ï>C’AHĞ$OBƒ“Âmğë|/7¹–Iñ_f¸áÉı\n…‚ŠØtíÑ¢âCR™ÊövGàÉ«lŸB´­i­3öÉ¯8J‡6ä4h™BqÓ<²èÏÑ—hŞòé-™j6¼Ë\rgÔsá	­Ú]Ÿ‰~cQe¬‹É^|Iw	9ø¥áìš\\\ZÆQõäÏîIµ%*RÂ‡úVŸrZ“/Ü‡ƒ6â¼ªø-Ö›:­wOÄı4aÁÕ4÷r“Ìç-g7İ³~•ªIiè‘,i\r@ÊY<\"½’Eè[\"Å:dª&‰¹YJvë±BêÓª6ÜHjÓD½ösô©å¥ænF8XìTùJ3RéúÜbíÓ1²dra›#l¡›\rªñGÔdÙ-‚ÌãêIGMAhI!´–ƒ¦ô(G7ÄßÓ‘\'~\"½&R!–“F&€‡nt@	½ä\rèC²!‚œ2°:(Ğ‚Õ<ËĞèm¡„epº}MÚQĞã›¹ØãÆ(-ùhI(dŠİoÿ\03,ŠzegD1¤LØøc¨ÂØ)Ä\rŒPé1’Ø°”È]ì6æËòñÊI–G¢¤oi}µ¯Ã/ÈV:f„f’dÕºZ4ÚÃËMcL?è\\·­‘)lN4Y@˜“Ùd•.a¡Z•^u§·F\\ªf]>WŸgètÅ8ò‰br\ZÙg‘6ls‚l¹ÂgèŒùÈÓàK-¿Aè©‚®Á€Ë‡¡B9¾+¿¹V“-qOäQ¤Æ‰‘u0äbaÈÉ‘dfDØ\0üƒ:\rÎ æ¡ÜÂ#È€g‡Â9ĞavÊZl2OŠ(sF­Œ0‘­O3¨\"Åjê+_nïÈå;{#¥WWú–£<˜Ñ„›zòÅ¶ôßî)C.gç¿Ü•\"œ,Øc\\°R§N9KmÓß$4§.nEªyÃoo!Øp4çr¢²ı»·Ø©RîrÛÂ¾ïîV¬Ÿ;Mç	kÛ=‹pM¶5¶Bé¹}M¿VÙf¾4é¦É-ùx\nHÊ utı4«)$ÖÍ&½NÈ*Q\"IÇX¿n…Ù<‘J!@6}Iûj‰ãs×ï¡ZP#p\r’Ò.Íy™÷”ŞTšÙ´[¤¾â\ZEj½eÈ‚æ2÷\n†Ñvl‘âÃ9œ>÷lç*Lêx,qN>….ÉğkÄŠéè=]²ˆ0xÌÏ¤Í$eÒcA\"úc²E;# v@ØÜ°íêŒr0`‘gÌ@3¿’,+·‘^ì‚>CeîqJNNÏFQTK~*¶kı:—)æ^){/Â»”©ò¸¾ìØ¢ò½w±´—D—|­G|h\nU“v{I=âû•N_×ğ·Û±J¥ÔUM6’Ãõ[/q/’Í½ÂŒŞv’Ç¿C7ŠqÊT*Rç©9J]uÂ‹éö|£VZçqÖ-ÆK9Mj¶9î#mJ4êÃ•s¤ó)79>Ï™êD§Z6„—#±á71¯›Íëÿ\0	%8¼IGtŞ>ç\'ğR¢©¬æ9Mo¾¿¹ÑÚŞ(ÊP–9^i”škfR‹]\Z´+å{®¯\"šY×¡­âÆ\\ykñ¿«ØÓ·›ğÅ9C^^yzk¶Ş´T\"¯g¤W¿ŠYm-QjÂï0‡wyM[kúÜ²•OSäIF×L¿¹ÔpŞ)R›Q®¹IgÀıû™ò}\\j‘èêhI”aZ^ócNåø×4R0¦\\hŠH‹æŒ•aØQ##¨GÎ2u\0t|x^Ïo/\"£—+kíè>´²R¹«¦{~‚‹¦Láq&”²ÒîÒû³¸²\"—’8>.z´×_·ş£¼£4’ËKÕàèg#.Å•.%¸¥}MoRÇâFmÏ¢³š±üÙVBO¤ÊüA˜ôäO{Å©K<²æôLÉwét—åüÉRE<î³nÌb¶0¼0oÖXıˆåÅêô§õIÜˆ×£Êü~¨Şæ\Zæs²â•ßJqÿ\0¦Oõ+U»¹{UÂò„ì/u\Z¯C?-sªs1ÆÎWWZ§ß êç/v/wèÓö{ş$uîB8Ç7ø?îƒİúìÿ\0æı?é«¨éG)~GÖ~×Fk÷ª}~—ÿ\0‹ìÄ!¡¥vEyvÒso¹—ØÂâßÑTßË’”§îÔ^_3Z0RtRÙ¸¼­ùjÔ®ç>_¢|±^øQ[˜W\\nµËšŠqSzã-µØ\"Š«/“Jáª2µÍiµ•Îº¨÷:k«¨ÍF¤1,aé»QuTƒâ»-pÛèI·”ğôË[~G\rñ£Sˆ¼iÅéüI7úI\0D·hhím¦£²Ó®Ë‰S¨œdâÓ÷‡)´g™z”ß+ñSşu^LØ‡K\ZIú!Ë›;#é I.-…¥9¿±¸¼ºR~ò@ù°ö ¼‘‰Íÿ\0ÃKİ°;é¾‰{CMƒÇàc­9uÇ¢EjÔ¤ÿ\0^™À„l•˜7OD*œ¢ò¥%æ›/ØÍ·¬›õmˆ@–Í®\'AopÉ*Ñƒ_JûF§“¾Ì{Ú[\"ŸËô\0„‘·\'Aå:ê!Çs@Éé‘Ô†Fü¤!VÆü¤!ÙÿÙ'),(2,'ali asas','ali','dhfgg','dgf','fhg','MALE','2019-03-14',1,12,'2015','gsfgf','ghdgfh','2019-03-20','dsgfg','Teacher','dshfgh','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z-&%-+/--/----+---------------------------------------ÿÀ\0\0á\0á\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0G\0	\0\0\0\0!1AQ\"aq2‘¡±BRÁÑ#3br‚ğ5’²á$4CScs³ET¢ÂñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0,\0\0\0\0\0\0\0\0\0!1\"AQqa23‘á¡ÑğÿÚ\0\0\0?\0§cSRúŠW‡İ·qéºšÄ8Ò1FÈ$mÌŒ³òò6Tü> w‘4e:{ù.lwš™tÂÙ€ïê™¶;‹7åE›kãd3ıØ$€zé¢¢âí´¾§^ºî¥gÁç&?),xÍp\r‡ª‰ÄapÊâ4pĞõVqJ-”Lä‚$“kàL$jv+A`ÑP{-gyJÃ}¿ Ù	6Sn	×&Ü¬@Ë‚E“®HAJCŞ\Z	$\07$Ø|S8|pFd‘Öæyæ²n&â™jK˜|,F›îî¼”7D¥eÇíD?­~ÂÚ2şnçîT\\_êå¶Wˆ€äÁ¿-Iº„tDß>äí·šfP\0\r\r×ğül¾Ó£ıe¬×ı¦^¾ÙôOCÅõÍ72zÔ(rÃù¢¸è€.¸giul#½sÓ)·‘’»`½ ÒNCxœtí”Ÿ\'\r½öX“EïıhŒé¢›\"M0‚.5d¥Špo\ZIGf>ï„Ÿy³Í—åä¶\\>¶9ãl±89®Ø§ª›²­Y»\"²!$„é	)²HN’B\0nÈÑ£@3ÜáVù#xtN<»ğù¾3Ä)¥–	\\ó#Zr½6ä«Ôô•‹,cLÆıtİGOLòmk–êUÔ9ldŸ	oËJ(Û	{ckš,4¸ä³şĞ0È££¦t\'3¶n·\n³5T³–æ%ÄY­ü‚èÇ±LÒ¼eGÓê‡¨öRù+…Q9)‰k²ÆÅØ¥ItG÷\\må}V˜V7Ø­IKØ€²•%XÙM¹:Sn@\r9pâ¸Œtñ:i\ršß‰\'@\0ê»Ş²îÕ±ù#¥iÑ7ôÌïfş‚çŞ†è¶Añ\'º­ùœÛ4{¾ÃÏÍCHIq\Z›iÏ­Ê‘Âp§Hëkkêz«¥7\rÅ`2ì,|Ö,š…FÜZg%fnó¾›[ß×_‚H§s­Ö÷ü–ªÌıééä’ÜìÀãM¾	Š^ÃıÌ¢¢24p¶¦ş¡sH/Ë@´Úü<´¾Š/ı\\ŒZúïUeª‰ÑËÜ >\"°rWZì>BŞŠ8áL\Z}UÖ¦,£ÒÉà¸Vâi(dÌ<P¸ñœí÷›ÑÃæ¸*hnBá•–µ½S£4ú88özF‚­“FÙcps^t)ò]ØŞ9ûJ\'?ié÷Ú>GŞV§dÑ\r\r’Bt„‚6BA	Ò@\rÙ« €20Kq‘áØg]SüONìÙy5Í}²õUzçMhËÉÊF‰R¶h\"fÊ2ƒñLQò¿’óvÑ3‹ø+\"nV²6½¹HØê¯=£áŠGË-29£3ô¸VESü$’ì„}v*Z»‰j%ÎL‡+›bŞVJßMğT©¹*$—¥F’»,hŒËjÇ·ï3èVàVÙd¹q­p^€*YQ²›rt¦œ z©Zçš	ø¬2¦GTM4îæàûjoÉ¾à×xÚ|”S¬ zÌ0h|:m¨·ù%e•!¸£lŸáJK\0l­‘Cp¢0†XÏê¬0Ê—2:ğâ#¥HlJTØ…ÎæQ;ˆ©é÷Q3ÇÉY&hÊTMUhºd]\\*¢e©p!Aâ©ƒä‰tFÍ…@KİoU`™Ú(“¹õ[qº0æC\\-Uú=ll;À-r›ü~KÑAyÃe²½¼ïó^ŠÃå‰9­?\n×hÁ5C¶I!9d’Êà! „4*È YÔàG©ušN¶İ£EoÆè ÿ\0Gè‡5­»3s+8«dï—#‰q°6Å±‰]p^Í@>Z¦ln%äüÄÏpÿ\0~àç‘‚ÒåÇ0–ş”êh`?ªåá¬]Ô2€nZCz]\n¼fIålÏ :Ö%º&%-Å\nÕC\\Zwƒê4Er¿öõMÆ³ú—,<\r6JøW[â\nô‚óÉ–ªt‘¿[/MÆnĞ|‚´Š„Sd\'\nIU ¬v€@¢a#Ë0ê¨Ø%0‘h\'q~ZÃüÖ…ÆT¦Z)Øİò=[âü;Xç}¾,º§Q5éUÈ±AM”ÍIÃªãyÔy®È*cnîhõ?šç$Û:M¨£ 113HÑ(â±^ÙÛñ	©«XFŞ®âÑHÎØÉ“MB«¦Öë¾¥ÀÜ¬¹q:Æ·Sµ‚­\rİD=K\n†¯g’v»ˆ_Ä<¼KÈ7W)wB¥X‰5qÛÄ6æ•údr{¿—?‚z+8e;Õk±n¤¸!q m}¯øè,¶§„ZÖštğ…€JÑŞd\"ã5½o ÑQ6Ímå»G;\'`²I	Ë\"!0PÑ	$\'\\A#vA)f½ğøuIšIZç4XÇÏ[$v‚C!„+îéÀ“ÕU0<RJ9İQbãâmù\\ÛòLbÜCS<od’Øòò¢j„»,ß™šmÀê›7‰Ì‰o3¯æª|Âÿ\0¤O tNlVpa\"ÚßEÎÊx`‰ÄÅœN¹‡E;À\\föÈşıã À[í!)¤ÙR‰Æ˜¨êL ›_N†öú(xšNÁ\\øã¾aQ—#ƒH>`mıy«eØ\r,´ÒLğs°ßË¢]4ù-fgFëHÇtsOÀ…éúæ‰‡«GÑg¼!ÁÔRSM(.Ô½—và4‘p\n¾`–î#\rv`\Z\0wP9©‘[’\nYHr¨6bU2À,×ˆÜœÛØêÁóÕAğ­#¡ïasKrÉp?uÀø«W\rCs x·‰÷<_’åÄK{òÍmöä]kùØ®D§\'3;_NŸ•øõt­°´ Ÿ¢¯T`o-ÍQ;A:œÇğÿ\0%p¬c­fû]fÃ§3)l¤‚2Éì€t¸{Ìİ[JáÉ‰Ë–gÕ‘Ä•µWé”¬ü+NMš&¿­îš®áêQ+¤sÜ,\0qk´h³E†à)Œp-x#ÊÄƒ½õÛòWË;\\0ÃŠ¹h´ÖRş§}–y‹V“&W:ÍÙhxœ¶„k-ÅgÜuH‡c¤“\nŠLÅ¢Weis²š9›ì=TlğS:3ÙÚrºáštğ“ĞüŸ”F×æôˆØßCvìy®áP±ÙÙvïµÍ¯Òû-QÈ’¦Ù–X[v’+¢Íõjj‰Ä€H±üSP\0ìÍt]¡¶İDçamc-…ıóœÃ—+˜àëg44:oª› Ä¦§©§”ÈçwRâIpqµ‰<¼”yªlyï¹:t!ºû‚{aB<N5¾¤‚o•¡°Ç\Zåvm¤\"JhÓTD.‰Ç)$\'\nA#²“ÁÜ-O-&Y‹eñ“ç½•2,$ÔW¾6E•‘¸İ»xEÅÔe/O\'YÅÅÃs­Ğ£Æælß¤O´G1æŸI[Š0héZ×]Ï$È=Ã¼j©™#OvëœÄÛèª¸¶6j\\K€Ğœ§•¿„xá´”Ù.\"ÚhÕ}ª»ÙHâŠvÅ)Ì\ZHÍÔ×%-<M\rG4{¥Ï^«³Šfò9ñ‹5Î$Êú•dìgÄ¹,‰ª.&ªŠíl§)½ÛÈ—nVíÀ³ç¡…ß¸>‹ÎA¦ö²İû%¨ÍBÑ÷K‡ÍCè†\\œRÜB¡=êÌh4üÈ?‚¯Ñ7Äé:>VœQÀ^À‚:´ÿ\0AW!§sC¾é9›Ôkk.V¦r­6E,?rb®ß¢iº7ı¥D¸–¦¨™°h–ÕX4„ÖÔ¦ŸUœÙ£N¨“à˜Å¦rb»¡YÄ–póZ.#„‹<Å`-q#š\"¹/.¸;â`pÓuÓI\rô;ìT&VZì’^~JiÏ#P¦\\2«”&¾œ²‡˜©jº›£ê¡å*QIâï³!ëw|4V®ÏiLóÄ\\4‡<ı\Zß™?&Ş\0ã®Pl<÷İiœº$‚ÒKbGİ`ö[ë­ÏªÑŠ;¤„æÌoîY‘¤Eo9Cd$”á	\0\"È%YŒñ–	OM2ÈEÉØuS<Á†Xf|Í^Ë3[‘¾¾[…QÇøªJ¡İ9­ÊÒ2z)nâ÷QÓÎÜÄ¹Àwm$\rˆ÷\'í—ÓR=8d²1¦á-¿¡²U4EÎ\rh$“`ä¤¾¤È÷ÈF¯$ŸR¯}”SÄjI‘ ¼ÇŸ½QB*ÆGçm.ÅÄ$4\"¦Cgæ€›j«4M°kN–7?_Ézé»Ê\'¶İÀ¬ovçiéı|,òr•Äª;…at®•ò0¸“aa}6ºÕû/c’<¤Y×±õP=›âTô¾	l×5<îµ¶2\"Àøòë­Å”cV÷&W#ãkCI)e!ÉæqmÅŠ„¬Á¥„¸è:e÷¾Û)²R\nV\\+%XüY;¢\n™úÒ\\¹Ü®szÍeNVßÜRv«•ù[LëÇ”š	î2Éİ†®MUâ’5Æ8©^ò9‚ÁğÌu]økmÖÙİ«ÏŸİ÷©§nkØ_¯E1VL¤Bc8¹Ëwom¹ú5E}l“3›áêOĞ[UvsÃ¦ Ø‡ªƒÅCÈ°İZ%dÈy©Ø\rÚú+cĞ>V>£uÚ8+íºHß wÅ\r0RBj_k®\'n=WMC\rõêºxs55QÅÈºîò`Õß!oz¼Uô.n¹e³‡øJ 9®{™İ»+Î§0“-·å{­£º0Æ¡ÑÊÉ’SìH@ W ¤¥”‚€	@tÇ©ãw²!f´ÛUÌ[}éuµC!\Z¸ì:­‚86Ñ:ª¡ºÛÀÓËÌù­{¶ÇK“5¢£-\'8±Š˜ÂëÌ•»´ßÔsnã´-ª`Ô{~Š’¸™Ü·Û=†Ç´õònÕumš‹¼áÍâ°Î.`ı(0r³Š¾pN3zwÒ¸ìnßCıÃ]Áæ¦¡Ów€Øì™»|“^ÇQƒğò”Wş\nŒ\Z^éµVğE7ÁXœÑÔ¶\"çÈÕ¦ú“µ®ºq^®§­‰ÊŞ`ê9®¬6VÖÔ™–å­³y“Îê‰mj»ÿ\0¬K{“ö4RRƒ\rÚDVó’RŠJ\"±XìàîN>£ü¾Š.º?Ù’6ÿ\0;|ì¬•p°´û¼%W’[´ƒåî#PW/UlïÜêé2n…{íÆZğ[!ËrHa#}5ô\\òcä,9×8ŸÁXiâi\Z~~i‰ğæEºÛo‚¤Zõ4U)±#•Ï\rñî.ÒÁ@Tâ2“w5÷óñWZÙX.FûØ…\\­‹1½´M[QY[]/®›ßä»)CËp\0‘aêt‚ìl»è¹_Sg÷MıHÙIğ½µËd0ğ—µWËp¢ØßTáûO?„÷?•f‘f•ú\\nãĞt[oÕÆa‘š8Ùvs\r7Öæ	_¨)šhsğ#U?/É2‚-¦\0‘hŠR\nYH(\0 ‰\Z\0Ã¸ÑERÃ3AĞöO%¶âDw$zçøÖËÂŸé4€w³Gzk6îrjGÅ<>8qÇ&5ÇOı’ôÁÑ²4v…cœM…\Ziİ-Ûü%m5ñÆª=¨áy¢làjÃâş­¨†èß°	Ô¼y¶>¥ÇïèS8QÖœl,oòZâNä‰ƒ®?x¬Û‡ÄFf‰‰Öößä§±zªwS:ƒšë³pá­ô;¬¸$¢Ûtlñ¨9eŠ^Æ„É^ÉNgxÛ’®ñÈÜÚø[¥ÇzÑÒãT\\Šš†:šcwàqßĞù©Ê(oÔ®¹¸;ùİj¸æ…£…æÅ:d3ó1®ÀJ)Œ1¤DÀwßùO]	}‰)J+ª¥‘´¾Gµ¹Ä\0=åIEÕj¾9ÆÚ‚têİÂŠÆ»I¦Œ9´àÌû-<‰qÔû‚°â9¦0ãrè£¹êà\0qşº¬º¸\\/Ø×£N½Î\ngÜ\\©ã¦é—GİœÜ¾iÓ0#p¹É\'*#«cÓVıì\'••‚ª@77*¶`.U¨7\"\"®;’¢e6	úêÛ›Õ;5óş´MŠ¡Ri¾	:;X4\\“§RNÊÓÆ.ÃŸ‡Õ·Úa1HÛ‰À´õØ‘æº¸?‡òZyG‹ì7îùŸ?¢¯öÍˆKMN­‘ŞY¬Öÿ\0„­Øq¸FßlçgÊ§*]#_¤©d¬l±¸9ÍpØ´‹‚X¿fœdi)\'wê$u˜ãÿ\0	çÿ\0£ÀëÌ­4Hi%R\nQH(\0#D‚\0óëŸ1Ñê2¸ø$³O‘äT%Fa•ñì¸ÛÓ’a²ä&á+ö>‰(CQ‡kêHÛä}åm¶	üv”Kã#Úi%Uà¬_¾Œ\\İãCîWIN­ªš’³Âd„°åkÕ3áÁİÕ¼†å.‘Ìh¦ª#ŒÔ“Ş‡éá\rÕ†^`ÄÃœÛÇ#mË8·à¬pİ<NÎÈÀrÄ´òwTu5ÚÈÎpÉö¢&‡‡˜È£ªn“3Æësp}Êf­Îl¬{ÃÀ¿¢wÆhéiÜÙædnsHknÎœ˜5+0iíe3 dO|ïàÖØh\r…Üt·E«5¢º£‘’{îO³W¨µô\nâjZAúé@w&7Äóü£ozÉ±>ĞkænNôFßúc)·›ÍÏÂÊ¬÷I$’u$›’|Éİ4QÆ»P™×m,b1÷ßâ¹¾ÈùªN!‰M;³Ï+ä<³è6åÊK”Õ‡EHØ>Ü‘³ûÎ\rüW¤xšŒ˜[#ÌFäs,ÙÀ{µ÷/?pŒ9«©ÖxÉşS›ğ^ …·(qR‹Lœdš(À€w^üˆ*2¾‚Àº3oİ:wE#Ä0\Z)C\\?ÙåwêßÊ9½Ûº4êA÷tH™à\rv\\‰ÁÂTÎ¼f¦­ÌS½aÖ¹Ø{û”mP{Æº+,ôísËÉ¹ëĞ);„d¨!ï¼qu·‰Ã÷[Èy•|iÉÔQ\\0W&Q0ü!ò;,m/wÉ£©;~áîd6|–|Ÿü[è:ù«e\rîãhk~dõ\'™I˜YtqàQåòÎn]CŸ„sÔNØÚ^âZ	\'RJóş7‹\Zª©*Î6`èÁ£GÃ_z¿v«eŒR0êıd·&òo½eĞ¦HT©Ñ3´Vîí6¦‘­†QßÂİ\0q\"F0:ïT™]É2ª\\ôÇ\rñ}%pıL£?8Ÿá/Úbêp¯\'E!ii AÄ Š¿ğ¿j50Z:Ÿ×ÇµÉ´­Oû^ø Š6â‰D`<OKX/ »œgÃ õa×Ş4R¤ €ĞIA\0Q{LÀ´Lhÿ\0N«<ĞU4Í•c…Ã\rÇ°ÇSNøO#v­;,\Z¬t÷#Öø&¯|>Œ»]|GWWˆªÚÂl-ïä¶V›¸/;–Ê6\"Äz«\'ö+âe=;‹QßH\r¸Ó¸ó)Úiq´çø¾\Z—Õû×ğh|mÅ””e¹ßšvê\"e‹¬~÷&Ušqiµµ>È›Yš¼9Şë*SÜI.$’u$›’z’w(4-\'Å9åÄ¹Ä’w$’O©:”hY\Z º0¤rjPj0‚K/fĞgÅi€û%ï>ß‰ÒQ‚ö%K¾I?åÂ~/sGĞ¸b„Tñ:yœ\ZÆ’~€s\'VBäùŠPGQ¡™¡Ìx³éëÈù¬áø=TNF\rLWÊÉZFf7’·Ş\n7âùkØ÷9™apl7pÎËXr‘s¹¶Úí¥Ï=4ğbwgÃ,cÂĞò@è/–Fšû»ªçÀšNKúƒ4“j,Ğ0n/¶|›Ûì´ùgÌ©·¼,×†ø¶zYE\"ìÍ:ES{ƒÈ›juî5ZæV†8Áyz)“$¤üİ‰E‹VØç_3È)95TÓ1,¹ ïàÄíÏ¹·*ÂÌ«ˆ+Œó>Bor~\n:éÇ&ÜØô!#F‚DµÆéV@\\Ò×¸j$z‚5GàîÓäa×ìØMoŒi¾{ú¬Ø„”èßõËÿ\0ŞCıôœ‘¨²(õ­>Ê“Ú^ŞGúK‰›ù·šºS¿D%ˆ=¥‡g(œTãLÑ¦Ï,VEèyªgÙÎw@¢ˆ¹$«\'Ğ~Q4\\ƒ¼>‡U^\rÕ/6®M~)ŸêdTø«şª	­K\rK\rA8ædVJ²6FĞŒh\0‘¢ã¡@\Z¯a‘µ‘UÕ<€ÜÌaqèÖ—ñc’±	›4€²„÷Q|»Ç¼zr\n±9Ô³´‘i©‘Âî\'Ñ¡ {Ö“³tMLL•³8âØ™Ò±€4³@-©h\'ê³\n»‡æi ƒpA±¨#bµ.0ï}D­i-k€qbÖ5¤Ÿ+Ö[/´V‹N(ZMIÙ7q©Œ²]]mNšôxœ9ò×¡*ëÙ—I#I1Ì\"6Š[ûMû‡­¹šrY¦¥•´ì½Ü|Dro0<ÊÛ8c†â¦Œ¶ÆÉ\r(ğ†6Úä”ùZ|–+ÚN%ŞTÒ1sün±?aï+câiÛ™Ä\0ĞIl/aæ¼å[Pééí=ÅÇÔ›ªÉğ\\œÈ¬•dvK4B	d$ qKDÕ)\0$¤\'I($J €=9ÃxˆÊŞc_U1%”vowR|/Õ¿ÅÌ-R™÷KÅ=ÑLÙ¯Ó<œ}=;µYC±öZĞ}H¿Ğ…Pcu?× §¸î\\ØQÜw–şëZßÀ¨Ji»\r#AA @\Z ¹79ğ§\nf«`ïØÕ(nmd–B}Ö`ú+!TÈ!’g›669ÄúC™Q=œÓdÃ)›Õ…ßŞq?Š¨öƒÄİôÎ£Œş¦înFê#¿F/çè›Û¡SuÉRŸ*èÚ\"»$sî÷gn£1½®Ò.uùém—?á%±²¡Ílo‘­{˜İ\Z…Ã@äzÛÏ¡*´¨¨ÌuÔ¸ú\rmô\nÛÇxy,MÄl\rn+ò°ÿ\05m·+A¹(Ô»:;\'ÃCæt¤{ |N«f§jÎû§&?¾>Ñhõn1Ï;\0J glxÕËiZtİŞí~¶YC”Çâ&z‰%\'r@ô\nU—@A\Z\n	BnÖ>Iä—„‚(÷²]”€’œ²IA)Y¡”µÁÍ6 ‚=VÃ€ñ_JêŸùls<ÚÒHù,mtÒã.Š¢´ÍËér?®vu*÷=o‹`Y0îõ?·©4Åïtöç8ú¸’~©†{N‰À™q´¡tO\"<Q„”€$@ˆ£D ›˜]ÍiÃºw‡¼©†1ö¤`øzÄÑØ[^=¶Eqúhk~çÜ±,K4táº—Ês8îI?ROÕhı¨ÎêŠªl>0NAŞ8¼ë†ßÑ ŸæQØ¶\r0İûkÛMz»ÛîKÓPİŠÚäşÈ†àŒ´°MˆTÚìaÈÎÙ·êüÖ°åë¢€ÅšCbpÁußÄ‹¦|tÃÃH³^§«¬O§%ÍÄ\Z¾İ\0|qi;+’IµEÃ²:Ü®{Û#âä­½ªbÅ€>\'øG½g\\ÙWNİ»×f[n}wÿ\0õwö×Šf¨œ3;Ôè?™vY/C2¡ÜºÙ²›u±·Çd‚Uÿ\0…xª’\nxá“;\\ÜÅÎ.mË‹…€>‰MÒîtgÍ §¦û-Œñú:ŠBØK…ìÿ\0†ZûrnZ,4¶üÕ\0ªÆNK”NH¨ºNÄ¹¶üR:ÉÂ\rÔİXª¶	i!() Š4D F‰\Z\0°9qÔ{ ¹˜:ù=§ˆş„şÌ˜ŸÛj.¡âÇ‚R($\"ƒPAQA\"9©şÑ¥ÿ\0ºÏª!v£[ÿ\0×*ÿ\0í·ü0¨>?ÿ\0{§şò#A6?¬¾ËôŸÉP‹ıïù‘ã´w©A«ÜÍê‹®ı­Kü/ÿ\0ÆKµ?í)ı#ÿ\0D‚Ãèk˜§%H($t\"( €“cèS0l‚\n	C¡)\nHDPA\0 €?ÿÙ');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacherid` int(11) NOT NULL,
  `teacherfname` varchar(45) NOT NULL,
  `teachercnic` varchar(45) NOT NULL,
  `teacheremail` varchar(45) NOT NULL,
  `teacherphone` varchar(45) NOT NULL,
  `teacheraddress` varchar(45) NOT NULL,
  `teacherdob` date NOT NULL,
  `teachersex` varchar(45) NOT NULL,
  `teachereducation` varchar(45) NOT NULL,
  `teacherdesignation` varchar(45) NOT NULL,
  `teacherdepartment` varchar(45) NOT NULL,
  `teachertype` varchar(45) NOT NULL,
  `teacherhiredate` varchar(45) NOT NULL,
  `teacherlname` varchar(45) NOT NULL,
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'sir ali','3254','dgfh@gmail.com','458777','dfghfgh','2019-03-13','MALE','Post Doctrate','Professor','Computer Science','Permanent Faculty','2019-03-03','asad'),(2,'hhg','gh','ghf','jghf','jh','2019-03-02','FEMALE','PhD','Associate Professor','LAW','Permanent Faculty','2019-03-27','fgh');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-29 21:15:06
