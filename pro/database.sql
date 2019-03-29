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
INSERT INTO `student` VALUES (1,'Ali','Asad','dhfghg','ldkjhfgh','dhfhh','MALE','2019-03-26',1035,458,'2015','ghdgh','dgfgf','2019-03-13','dshg','Teacher','444','����\0JFIF\0\0\0\0\0\0��\0�\0	\r( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z+%%-------+---+--+-+-----.---------------------------��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0<\0	\0\0\0\0\0!1AQ\"aq�2�R���B��#3b�$Cr�������\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0,\0\0	\0\0\0\0\0\0\0!1AQa\"2�BRb�������\0\0\0?\0���=!`���I�`F�\r�U��D����K,6�6|��.���.N+]�c�&Ag�g�*%���jG�ǲ�`ڷ��ѡnr5}��]M��i��ƅ\Z<��k/U�5�鱴Ou�j|:=��G�Ӷ��,����cÜt�x���G\\>=�����=�/uy[���K_?�bp��M�d�e��o�{{���\n]?�B�E�%���f\r�Z�ӌ��e�)GL��]OJ�o�����\n�t�[?4p5�Z_.M��M���$��}J�6�V�a,�Y�o����1�pF9q)�]��\\�1��Q�N5\"�#��Ț\0�\00@0	!\0�\0\0\00�\0\008\043�9 t�C� ʰ �tp,��\0g�*�Ium}��G�+�����;�\\�i���?e�N��\']����M+JF�8�m�]��H��4`Z����Y�FM��d�J�G9�H�Z%*���YV�!�ыs��\\������.bbq�~h<z�)-m�v�gI��׿_��dp�\07�f��h�u�wpfU6F�\0��8@�@DD `B\0�`\"\0@hp�hh�\Zb\0�/���\0�AN9������\0ã���-g��KLE/_?�ڠܚ��o\'�Sw&wb_��jĻJ�Y�\n������ѻ��I�4nӑeH̶���.�h]6:s�k\\���\\hQ�w��E��WR[Ŏ�u%�����zu�V	���D�ѧ�Wfu�Ѯ���R���m�)b�x����_���W�)�Zk���?��I�8?!ş�H��S�\0�$���P��\0\0A\0&1�\09�`\n\"Z��80�\0Fw���R=�^�g�:��g;F���U��OU�.Y~m}��ښ�©ɞ�m$r��V������1��4���\\5���Գ�o��E*��sri�F����k\r����oJ��ˬZi��s��J_2곧��1r�i�ɦ��+�я��g��r�/Gii�\ZyY��f���B�i�1[E%���c-��F�\n��L|[)�G\nso	c�%�s_�(.Gȧ��Znu�F4��V�9<=�;)�I5���:���/J��T�Qt�}=7O8���e�L�ڨ�9ZU�o\'>IF5(���\Z��S�7����N��\r��+pO����Ɯd���3�o�ay}��v�g6��iJ5\'l�t�2��2n׉�{)(��߉��S	�id	Ϛ�������{����L咛P�S���|SK��:8?\n��F��v��z�\\jW�X��#���\"AZ#\r�\r\0\r[:i�/s2�ײ^�hΩX�Z�VD\0\0�@\0D0\0X��<p�� �)H���\0^��q����ja�U䗓X���Bx8�G���=2��\r�QDЦR���F�fk,tP�O�Ez���G�K�Z��)Λibpn2Mm�Z��u):n�H7�Jo��ڴ���_e�+�ٱc<����F��d�WD��a^i�)KN��k�eE�2�W*Cr�j1���.V?n��2�«&�ӎ���c9�/�ؼ���)��V3�}H��\\5�[嬬~��-KE�P�<�I%��\n���\Z���\'mG�o1�gcJf���9�t@OtT���%��B�x,�O$�i�L�g��JZK�A��7;�{����I�\0@A�L@`0\"�3�D��$	�@�KZ����V���2̮\'G��d��Rڦ�ռ�0io�V֩��c\"N$�U5^��Dc�A��F��9Sh�j�\0^�s���̚��M�z<�m�aq���\0g���Y�n����	�i�ҿ_&�IeR��Ͳ~��zuT��ȟTD��ej�H�Q^hT�]l��hW�t�-�(���%��J���E���F�\nQ�E�󅹬`峃.UĹOH��YZ��%2�i�+J��du&hp���Ȓξ$���7nYY�)gVG!�DUX�Ł�ڿ\Z$����Ui���ВkA�̺����K\\vЏ%8Y@\0@L`Hb( D\0y��R4 �䃁\0��ƨr�~[���]��F��T�J��U�\\3N��<>��R�����\r����M-r�k�gi§NS�IJ�nR���7��5�C�i�FZw)\\�H��\'��*�\r�>XF���9[^�8���JQq�K�z�I�]OE�YI�2l�\"���MGYDM�$�&�+��ȭ<{�����{�s*T�5Ya�u��f2ah�xj�r����yHǳ��:M���хO_��	*���	96�;�V��[+U.̨c,X�̳ج�{\nx�{��E2Y2)1�����z��`����GOo�,�\r�d00n�&�H�~6EQ�%Ȇ��ȓ�d\0vD����h9�\0�>C�AHЁ$OB���m��|/7��I�_f����\n����t�Ѣ�CR���vG�ɫl�B��i�3�ɯ8J�6�4h�Bq�<���їh���-�j6��\rg�s�	��]��~cQe���^|Iw	9��Ꮮ�\\\Z�Q����I��%*�R�V�rZ�/܇�6⼪�-֛:�wO��4a��4�r���-g7ݳ~��Ii�,i\r@�Y<\"���E�[\"�:d�&��YJv�B�Ӫ6�Hj�D��s����nF8X�T�J3R��܍b�Ӎ1�dra�#l��\r��G�d�-����IGMAhI!�����(G7�ߍ�ӑ\'~\"�&R!��F&��nt@	��\r�C�!��2��:(ЂՍ<���m��ep�}M�Q�㛹���(�-�hI(d��o�\03,�zegD1�L��c���)ĝ\r�P�1�ذ��]�6�����I�G��oi}����/�V:f�f�dպZ4���McL?�\\���)lN4Y@���d�.a�Z�^�u��F\\�f]>W�g�t�8�br\Z�g�6ls�l��g�����K-�A詂���ˇ�B9�+��V�-qO�Q�Ɖ�u0�ba���dfD�\0��:\rΠ����#Ȁg��9�avʎZl2O�(sF��0��O3�\"�j�+_n���;{#�WW���<�ф�z�Ŷ���)C.g�ܕ\"�,�c\\�R�N9Km��$4�.nE�y�oo!�p4�r�����ةR�r�¾��V��;M�	k�=�pM�5�B�}M�V�f��4��-��x\nH� ut�4�)$��&�N�*Q\"I�X�n��<�J!@6�}I�j��s��ZP#p\r��.�y����T�ٴ[���\ZEj�eȂ�2�\n���v�l���9�>�l�*L�x,qN>�.��kĊ��=]��0x��Ϥ�$e�cA\"�c�E;# v@�܁����r0`�g�@3��,+��^�>Ce�qJNN�FQT�K~*�k�:�)�^){/»����آ�w���D�|�G|h\nU��v{I=���N_��۱J��UM6���[/q�/�ͽ�v�ǿC7�q�T*R�9J]u��|�V�Z�q�-�K9Mj�9�#mJ4�Õs��)79>ϙ�D�Z6��#��71�����\0	%8�IGt�>�\'�R����9Mo������(�P��9^i��kfR�]\Z�+�{��\"�Yס����\\y�k���ӷ���9C^^yzk�޴T\"�g�W��Ym-Qj��0�wyM[k�ܲ�OS�IF�L���p�)R�Q��Ig�����}�\\j���hI�aZ^�cN���4R0�\\h�H�挕a�Q##�G�2u\0t|x^�o/\"��+k��>��R���{~���L�q&����������\"��8>.z�מ_�����4��K���g#.ŕ.%��}MoR��Fm�������V�BO���A���O{ũK<���L�w�t����RE<�n�b�0�0o�X��������I�܈ף��~���\Z�s���Jq�\0�O�+U��{U���/u\Z�C?-s�s1��WWZ�����/v/w���{�$u�B8�7�?����\0��?���G)~G�~�Fk��}~��\0���!��vEyv�so�������T�˒����^_3Z0RtRِ����jԮ�>_�|��^�Q[�W\\n�˚�qSz�-��\"��/�J���2���i��κ��:k���F�1,a黏QuT��-p��I�����[~G\r��S��i���I7�I\0D�hh�m���ӮˉS��d����)�g���z��+�S�u^L؇K\ZI�!˛;#�I.-��9�����R~�@����������\0�Kݰ;龉{CM���c�9uǢEjԤ�\0�^���l��7OD*���%�/�ͷ���m�@���\'Ao�p�*у_J�F����{�[\"���\0���\'A�:�!�s@��ԆF��!V���!���'),(2,'ali asas','ali','dhfgg','dgf','fhg','MALE','2019-03-14',1,12,'2015','gsfgf','ghdgfh','2019-03-20','dsgfg','Teacher','dshfgh','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z-&%-+/--/----+---------------------------------------��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0G\0	\0\0\0\0!1AQ\"aq2����BR��#3br��5���$4CScs�ET�����\0\0\0\0\0\0\0\0\0\0\0\0\0��\0,\0\0\0\0\0\0\0\0\0!1\"AQqa23�������\0\0\0?\0�cSR��W�ݷq麚�8�1F�$m̌���6T�>��w�4e:{�.lw���t�َ��ꙶ;�7�E��k�d3��$�z颢����^��g��&?),x�p\r����ap��4p��VqJ-�L��$�k�L$jv+A`�P{-gyJ�}���	6Sn	�&ܬ@˂E��HAJC�\Z	$\07$�|S8�|pFd���y�n&�jK�|,F��7D�e���D?�~��2�n��T\\_���W�����-I��tD�>��fP\0\r\r���l�ӣ�e����^���OC���72z�(r�����.�giul#��s�)����`���NCx�t픟\'\r��X�E��h�颛\"�M0�.5d��po\ZIGf>y�͗��\\>�9�l�89�؏�����Y�\"�!$��	)�HN�B\0n�ѣ@3��V�#xtN�<����3�)��	\\�#Zr��6�����,cL��t�GOL�mk��U�9ld�	o�J(�	{ck�,4����0ȣ��t\'3�n�\n�5T���%�Y����ǱLҼeG�ꇍ��R�+�Q9)�k���إItG�\\m�}V�V7حIK؀��%X�M�:Sn@\r9p⸌t�:i\r�߉\'@\0�޲�ձ�#�iў7���f���ކ��A�\'�����4{����CHIq\Z�iϭʑ�p�H�kk�z��7\r�`2�,|�,��F�Zg%fn�[��_�H�s����������������M�	�^��̢�24p����sH/�@����<���/�\\�Z��Ue����ܠ>\"�rWZ�>Bފ8�L\Z}U֦,�����V�i(d�<P���������*hnBᕖ��S�4�88�zF���F�cps^t)�]��9�J\'?i���>G�V�d�\r\r��Bt���6BA	�@\r�� �20Kq���g]S�ON�ٝy5�}��Uz�Mh���F�R�h\"�f�2��LQ��v�3��+\"nV�6��H��=�ᐊG�-29�3��VES�$��}v*Z��j%�L�+�b�VJ�M�T��*$��F��,h��jǷ�3�V�V�d�q�p^�*YQ��rt���z�Z��	��2�GTM4����joɾ��x�|�S�� z��0h|:m���%e�!��l��JK\0l��Cp�0�X��0ʗ2:��#�HlJT؅��Q;����Q3��Y&h�TM�Uh�d]\\*�e�p!A����tF��@K�oU`��(���[q�0�C\\-U�=ll;�-r��~K�Ay�e������^�����9�?\n�h�5C�I!9d�ʍ���! �4�*� Y��G�u�N�ݣEo�� �\0G�5��3s+8�d�#�q�6ű�]p^͏@>Z�ln%����p�\0~�瑐����0����h`?���]Ԏ2�nZCz]\n�fI�l� :�%�&%-�\n�C\\Zw��4Er����MƳ��,<\r6J�W[�\n��ɖ�t��[/M�n�|����Sd\'\nIU �v�@����a#�0��%0��h\'q~Z��օ�T�Z)���=[��;�X�}�,��Q5�UȱAM��Iê�y�y��*cn�h�?��$�:M���113H�(�^���	��XF�ޮ��H��ɓMB����뾥�ܬ�q:ƷS���\r�D=K\n��g�v��_�<�K�7W�)wB��X�5q��6��dr{��?�z+8e;�k�n��!q m}���,���Z֍�t���J��d\"�5�o��Q6�m��G;\'`�I	�\"!0P�	$\'\\A#vA)f����uI�IZ�4X��[$v��C!�+�����U0<RJ9�Qb��m�\\��Lb�CS<od�����j��,ߙ�m���7���o3��|��\0�O tNlVpa\"��E��x`��ŜN��E;�\\f����� �[�!)��R�Ƙ��L �_N���(x�N�\\����aQ�#�H>`m�y�e�\r,��L�s��ˢ]4�-fgF�H�tsO����扇�G�g�!��RSM(.Խ�v�4�p\n�`��#\rv`\Z\0wP9��[�\nYHr�6bU2�,����������A�#��asKr�p?u���W\rCs x���<_���K{��m��]k�خD�\'3;_N����t�������T`o-�Q;A:����\0%p�c�f�]fç3�)l��2��t�{��[J�ɉ˖gՑ���W���+NM�&����Q+�s�,\0qk�h�E��)�p-x#�ă����W�;\\0Ê�h��R��}�y�V�&W:��hx����k-�g�uH�c���\n�LŢWeis���9��=Tl�S:3��r��t�����F������Cv�y��P���v�ͯ��-QȒ�ٖX[v�+����jj�ĀH��SP\0��t]���D�amc-���×+���g44:o���Ħ������w�R�Ipq��<��y�ly�:t!���{a�B<N�5���o����\Z�vm�\"Jh�TD.��)$\'\nA#����-O-&Y�e��罕2,$�W�6E���ݻxE��e/O�\'Y���s�У��lߤ�O�G1�I[�0h�Z�]�$��=üj��#Ov�č�誸�6j\\K�М�����xᴔ��.\"�h�}���H�v�)���\ZH�ԍ�%-<M\r�G4{��^���f��9�5�$���d�gĹ,��.&���l�)��ȗnV���硅߸>��A�����%��B��K��C�\\��RܐB�=�̎h4��?���7��:�>V�Q��^��:��\0AW!�sC��9��kk.V�r�6E,?rb�ߢi�7��D������h��X4��Ԧ�U�٣N����Ŧrb��YĖp�Z.#��<�`-q#�\"�/.�;�`p�u�I\r�;�T&VZ�^~Ji�#P�\\2��&������j������*QI��!�w|4V��iL��\\4�<��\Zߙ?&�\0�Pl<��i����$��KbG�`�[�Ϫъ;����o�Y��Eo9Cd$��	\0\"�%Y��	OM2�E��uS<��Xf|�^�3[���[�Q���J��9���2�z)n��Q���Ĺ�wm$�\r��\'��R�=8d�1��-���U4E�\rh$�`䤾����F�$�R�}�S�jI������QB*�G�m.��$4\"�Cg���j�4M�kN�7?_�z���\'����ov�i��|,�r�Ī;�at���0��aa}6���/c�<�Yױ�P=��T��	l�5<2\"����ŔcV�&W#�kCI)e!��qmŊ���������:e���)�R\nV\\+%X�Y�;�\n���\\�ܮsz�eNV��Rv���[L�ǔ�	�2�ݍ��MU�5�8�^�9����u]�km��ݫϟ����nk�_�E1VL�Bc8��wom��5E}l��3���O�[Uvsæ ؎����CȰ�Z%d�y���\r���+c�>V>�uڐ8+��Hߠw�\r0RBj_k�\'n=WMC\r��xs55Q�Ⱥ��`��!oz�U�.n�e���J�9�{�ݻ+Χ0�-��{���0ơ��ɒS�H@��W �����	@tǩ�w�!f��U�[}�u���C!\Z��:��86�:����������{�ǐK�5��-\'8�����̕����sn��-�`�{~����ܷ�=������n�um�������.`�(0r���pN3zwҸ�n�C��]�榡�w����왻|�^�Q���W�\n�\Z^�V��E7�X��Զ\"��զ�����q^���������`�9��6V�ԙ��孳y���mj��\0�K{��4RR�\r��DV���R�J�\"�X���N>����.�?ٞ�6�\0;|쬕p�����%W�[����#PW/U�l����2n�{��Z�[!�rHa#}5�\\�c�,9�8��Xi�i\Z~~i���E��o��Z�4U)�#��\r��.��@T�2�w5���WZ�X.F�؅\\��1��M[QY[]�/�����)C�p\0�a�t��l��_Sg�M�H�I𐽵�d�0����W��p���T��O?���?�f�f���\\n��t[o��a���8�vs\r7��	_�)�hs�#U?/�2�-�\0�h�R\nYH(\0 �\Z\0ø�ER�3A��O%��Dw$z�������4�w�Gz�k6�rjG�<>8q�&5�O����Ѳ4v�c�M�\Zi�-��%m5�ƪ=��y�l�j�������߰�	Լy�>����S8Q֜l,o�Z�N���?x�ۇ�Ff�����䧱z�wS:���p��;��$��tl�9e�^Ƅ�^�Ngxے������[��z���T\\���:�cw�q�����(oԮ��;��j�慣���:d�3�1��J)�1�D�w��O]	}�)J+������G����\0=�IE�j�9�ڂt��ƻI��9����-<�q�����9�0�r裹��\0q�����\\/�ף�N��\ng�\\���Gݜܾ�i�0#p��\'*#�c�V��\'����@77*�`.U�7\"\"�;��e6	��ۛ�;5���M��Ri�	:;X4\\��RN���.ß�շ�a1Hۉ���ؑ溸?��ZyG��7���?���͈KMN���Y���\0���q�F�l�gʧ*]#_��d�l��9��pش���X�f�di�)\'w�$u���\0	��\0����̭�4Hi%R\nQH(\0#D�\0����1���2��$�O��T%Fa����Ӓa���&�+�>�(CQ�k�H��}�m�	�v�K�#�i%U�_��\\��C�WIN������d���k�3�������.��h��#�ԓއ��\rՆ^`�Ü��#m�8��p�<N���rĴ�wTu5���p���&���ȣ�n�3��sp}�f��l�{����w�h�i���dnsHknΜ�5+0i�e3 dO|�����h\r��t�E�5������{�O�W���\n�jZA��@w&7����ozɱ>�k�nN�F��c)�����ʬ�I$�u$��|��4QƻP��m,b1��������N!�M;��+�<���6��K��ՇE�H�>ܑ���\r�W�x���[#�F�s,��{��/?p�9���x��S��^���(qR�L�d�(��w^��*2����3o�:�wE#�0\Z)C\\?��w���9�ۺ4�A�tH��\rv\\���Tμf���S�aֹ�{��mP{ƺ+,��s�ɹ��);�d�!�qu����[�y�|i��Q\\�0W&Q0�!�;,m/wɣ�;~��d6|�|��[�:��e\r��hk~d�\'�I�Ytq�Q���n]C��s�N��^�Z	\'�RJ��7�\Z��*�6`���G�_z�v��e�R0��d�&�o�eЦHT��3�V��6����Q���\0q\"F��0:�T�]�2�\\��\r�}%p�L�?8��/�b�p�\'E!ii �A������j50Z:��ǵɴ�O�^����6�D`<OKX/���g� �a��4R����IA\0Q{L��Lh�\0N�<�U4͕�c�Á\rǰ�SN�O#v��;,\Z�t�#��&�|>��]|GWW����l-��V��/;��6\"�z�\'��+�e=;�Q�H\r��Ӹ�)�iq����\Z�����h|mŔ�e�ߚv�\"e��~�&�U�qi��>ȁ�Y���9��*S�I.$�u$��z�w(4-\'�9�ĹĒw$�O�:�hY\Z �0�rjPj0�K/f�g�i��%�>��߉�Q��%K��I?��~/sG��b�T�:y�\Z��~�s\'�VB���PGQ����x���������=TNF\rLW��ZFf7�����\n7��k��9�apl7p��Xr�s�����=4�bwg�,c���@�/�F�������NK��4�j,�0n�/�|����g̩��,׆��zYE\"��:ES{����ju�5Z�V�8�yz)�$��݉�E�V��_3�)95T�1,�������Ϲ�*�̫�+��>Bor~\n:��&���!#F�D���V@\\���j$z�5G����a���Mo�i�{��؄������\0�C������(��>ʓ�^�G�K������S�D%�=��g(�T�LѦ�,VE�y�g��w@���$�\'�~�Q4\\��>�U^\r�/6�M~)��dT����	�K\rK\rA8�dVJ�6FЌh\0����@\Z�a���U�<���aq�֗�c��	�4�����Q|�Ǐ�zr\n�9Գ����i����\'ѡ�{֓�tMLL��8�ؙұ�4�@-�h\'�\n���i �pA��#b�.0��}D�i-k�qb�5��+��[/�V�N(ZMI�7q���]]mN��x�9�ס*�ٗI#I1�\"6�[�M�����rY������|Dro0<��8c�⦌���\r(��6�䔝�Z|�+�N%�T��1s�n�?a�+c�i���\0�Il/a��[P���=��ԛ���\\�Ȭ�dvK4B	d$ qKD�)\0$�\'I($J �=9�x����c_U1%�vo�wR|/տ��-R��K�=�Lٯ�<�}=;�YC���Z�}H�ЅPcu?� ���\\؍Q�w���Z���Ji��\r#AA �@\Z �79�\nf�`���(nmd�B}�`�+�!T�!�g�669��C�Q=��d�)�Յ��q?�������Σ����nF�#�F�/��ۡSu�R��*��\"�$s��gn�1���.u��m�?�%����lo��{��\Z��@�z�ϡ*����uԸ�\rm�\n��x�y,M�l\rn+���\05m�+�A�(Ի:;\'�C�t�{ |N�f�j���&?�>�h�n1�;\0J�glx��iZt���~�YC���&z�%\'r@�\nU��@A\Z\n	Bn�>I���(��]�����IA)Y�����6 �=VÀ�_J��ls�<��H�,mt��.�������r?�v�u*�=o�`Y0���?��4��t����8���~��{N���q���tO\"<Q����$@��D���]�iúw����1��`���z���[^=�Eq���hk~�ܱ,K4tẗ�s8�I?RO�h���ꊪl>0NA�8���Ѡ��Qض\r0���k�Mz����K�P�݊���Ȇ����M�T��a�Ύٷ��ְ�뢀ŚCbp�u����|t��H�^���O�%��\Z��\0|qi;+�I�Eò:ܮ{�#�䭽�b���>\'�G�g\\�WNݻ�f�[n}w�\0�w�׊f���3;��?�vY/C2��ܺٲ�u���d�U�\0�x��\nx�;\\���.mˋ��>�M��tg� ���-���:�B�K���\0�Z�rnZ,4���\0��NK�NH��NĹ��R:��\r��X���	i!() �4D�F�\Z\0�9q�{ ��:�=�����̘��j.��ǂR($\"�PAQA\"9��ѥ�\0�Ϫ!v�[�\0�*�\0��0�>?�\0{���#A6?������P�������w�A���ꋮ��K�/�\0�K�?�)�#�\0D���k��%H($t\"( ��c�S0l�\n	C�)\nHDPA\0 �?��');
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
