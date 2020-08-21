/*
MySQL Data Transfer
Source Host: localhost
Source Database: plantomatic
Target Host: localhost
Target Database: plantomatic
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `Item`;
CREATE TABLE `Item` (
  `ItemID` int(11) NOT NULL auto_increment,
  `ShipmentID` int(11) NOT NULL,
  `PlantID` int(11) NOT NULL,
  `DateAvailable` datetime NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Size` varchar(50) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for plant
-- ----------------------------
DROP TABLE IF EXISTS `Plant`;
CREATE TABLE `Plant` (
  `PlantID` int(11) NOT NULL auto_increment,
  `Symbol` varchar(20) collate utf8_unicode_ci NOT NULL,
  `SynonymSymbol` varchar(20) collate utf8_unicode_ci default NULL,
  `ScientificNameWithAuthor` varchar(250) collate utf8_unicode_ci NOT NULL,
  `CommonName` varchar(150) collate utf8_unicode_ci default NULL,
  `Family` varchar(150) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`PlantID`)
) ENGINE=InnoDB AUTO_INCREMENT=52815 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for shipment
-- ----------------------------
DROP TABLE IF EXISTS `Shipment`;
CREATE TABLE `Shipment` (
  `ShipmentID` int(11) NOT NULL auto_increment,
  `Name` varchar(200) collate utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateDate` datetime default NULL,
  `Active` tinyint(4) NOT NULL,
  `Status` varchar(50) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`ShipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for workflow
-- ----------------------------
DROP TABLE IF EXISTS `Workflow`;
CREATE TABLE `Workflow` (
  `WorkflowID` int(11) NOT NULL auto_increment,
  `ShipmentID` int(11) NOT NULL,
  `Workflow` varchar(300) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`WorkflowID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `Item` VALUES ('1', '1', '11', '2009-10-13 17:04:12', '100', '1 Gal');
INSERT INTO `Plant` VALUES ('11', 'ABIES', '', 'Abies Mill.', 'fir', 'Pinaceae');
INSERT INTO `Plant` VALUES ('512', 'ACSH', '', 'Acamptopappus shockleyi A. Gray', 'Shockley\'s goldenhead', 'Asteraceae');
INSERT INTO `Plant` VALUES ('546', 'ACARO2', '', 'Acarospora A. Massal.', 'cracked lichen', 'Acarosporaceae');
INSERT INTO `Plant` VALUES ('771', 'ACSAS', '', 'Acer saccharum Marsh. var. saccharum', 'sugar maple', 'Aceraceae');
INSERT INTO `Plant` VALUES ('882', 'ACHLY', '', 'Achlys DC.', 'achlys', 'Berberidaceae');
INSERT INTO `Plant` VALUES ('1024', 'ACSPS', '', 'Achyranthes splendens Mart. ex Moq. var. splendens', 'Maui chaff flower', 'Amaranthaceae');
INSERT INTO `Plant` VALUES ('1026', 'ACHYR3', '', 'Achyronychia Torr. & A. Gray', 'achyronychia', 'Caryophyllaceae');
INSERT INTO `Plant` VALUES ('1028', 'ACICA', '', 'Acicarpha Juss.', 'acicarpha', 'Calyceraceae');
INSERT INTO `Plant` VALUES ('1030', 'ACIDA', '', 'Acidanthera Hochst.', 'acidanthera', 'Iridaceae');
INSERT INTO `Plant` VALUES ('1039', 'ACISA', '', 'Acisanthera P. Br.', 'acisanthera', 'Melastomataceae');
INSERT INTO `Plant` VALUES ('1042', 'ACLEI', '', 'Acleisanthes A. Gray', 'trumpets', 'Nyctaginaceae');
INSERT INTO `Plant` VALUES ('1116', 'ACORU', '', 'Acorus L.', 'sweetflag', 'Acoraceae');
INSERT INTO `Plant` VALUES ('1163', 'ACROP2', '', 'Acroporium Mitt.', 'acroporium moss', 'Sematophyllaceae');
INSERT INTO `Plant` VALUES ('1210', 'ACTIN3', '', 'Actinidia Lindl.', 'actinidia', 'Actinidiaceae');
INSERT INTO `Plant` VALUES ('1214', 'ACTIN', '', 'Actinostachys Wall.', 'actinostachys', 'Schizaeaceae');
INSERT INTO `Plant` VALUES ('1351', 'ADOXA', '', 'Adoxa L.', 'adoxa', 'Adoxaceae');
INSERT INTO `Plant` VALUES ('1444', 'AESCU', '', 'Aesculus L.', 'buckeye', 'Hippocastanaceae');
INSERT INTO `Plant` VALUES ('1694', 'AGATH2', '', 'Agathis Salisb.', 'agathis', 'Araucariaceae');
INSERT INTO `Plant` VALUES ('2097', 'AGYRI', '', 'Agyrium Fr.', 'agyrium lichen', 'Agyriaceae');
INSERT INTO `Plant` VALUES ('2111', 'AILAN', '', 'Ailanthus Desf.', 'ailanthus', 'Simaroubaceae');
INSERT INTO `Plant` VALUES ('2142', 'AKEBI', '', 'Akebia Decne.', 'chocolate vine', 'Lardizabalaceae');
INSERT INTO `Plant` VALUES ('2204', 'ALECT3', '', 'Alectoria Ach.', 'witch\'s hair lichen', 'Alectoriaceae');
INSERT INTO `Plant` VALUES ('2314', 'ALISM', '', 'Alisma L.', 'water plantain', 'Alismataceae');
INSERT INTO `Plant` VALUES ('2560', 'ALOD2', '', 'Allium odorum L.', 'Chinese chives', 'Liliaceae');
INSERT INTO `Plant` VALUES ('2785', 'ALOE', '', 'Aloe L.', 'aloe', 'Aloaceae');
INSERT INTO `Plant` VALUES ('2900', 'ALSOP', '', 'Alsophila R. Br.', 'alsophila', 'Cyatheaceae');
INSERT INTO `Plant` VALUES ('3165', 'AMBLY3', '', 'Amblyodon P. Beauv.', 'amblyodon moss', 'Meesiaceae');
INSERT INTO `Plant` VALUES ('3329', 'AMUTU', '', 'Amelanchier utahensis Koehne var. utahensis', 'Utah serviceberry', 'Rosaceae');
INSERT INTO `Plant` VALUES ('3348', 'AMMAN', '', 'Ammannia L.', 'redstem', 'Lythraceae');
INSERT INTO `Plant` VALUES ('3387', 'AMORE', '', 'Amoreuxia Moc. & Sessé ex DC.', 'yellowshow', 'Bixaceae');
INSERT INTO `Plant` VALUES ('3584', 'AMTH', '', 'Amsonia tharpii Woodson', 'feltleaf bluestar', 'Apocynaceae');
INSERT INTO `Plant` VALUES ('3591', 'AMYGD2', '', 'Amygdalaria Norman', 'amygdalaria lichen', 'Porpidiaceae');
INSERT INTO `Plant` VALUES ('3606', 'AMYRI', '', 'Amyris P. Br.', 'torchwood', 'Rutaceae');
INSERT INTO `Plant` VALUES ('3612', 'ANACA2', '', 'Anacamptodon Brid.', 'anacamptodon moss', 'Fabroniaceae');
INSERT INTO `Plant` VALUES ('3616', 'ANACA', '', 'Anacardium L.', 'anacardium', 'Anacardiaceae');
INSERT INTO `Plant` VALUES ('3706', 'ANDRE2', '', 'Andreaea Hedw.', 'andreaea moss', 'Andreaeaceae');
INSERT INTO `Plant` VALUES ('3745', 'ANDRE3', '', 'Andreaeobryum Steere & B.M. Murray', 'andreaeobryum moss', 'Andreaeobryaceae');
INSERT INTO `Plant` VALUES ('3843', 'ANSEG2', '', 'Androsace septentrionalis L. ssp. glandulosa (Woot. & Standl.) G.T. Robbins', 'pygmyflower rockjasmine', 'Primulaceae');
INSERT INTO `Plant` VALUES ('3863', 'ANEIL2', '', 'Aneilema R. Br.', 'aneilema', 'Commelinaceae');
INSERT INTO `Plant` VALUES ('3869', 'ANEMA', '', 'Anema Nyl. ex Forss.', 'anema lichen', 'Lichinaceae');
INSERT INTO `Plant` VALUES ('3871', 'ANEMI', '', 'Anemia Sw.', 'anemia fern', 'Anemiaceae');
INSERT INTO `Plant` VALUES ('4099', 'ANDI9', '', 'Anisomeridium distans (Willey) R.C. Harris', 'anisomeridium lichen', 'Monoblastiaceae');
INSERT INTO `Plant` VALUES ('4180', 'ANOMO', '', 'Anomodon Hook. & Taylor', 'anomodon moss', 'Anomodontaceae');
INSERT INTO `Plant` VALUES ('4608', 'ANSC13', '', 'Anthoceros scariosus Austin', 'hornwort', 'Anthocerotaceae');
INSERT INTO `Plant` VALUES ('4634', 'ANTHR2', '', 'Anthracothecium Hampe ex A. Massal.', 'anthracothecium lichen', 'Pyrenulaceae');
INSERT INTO `Plant` VALUES ('4673', 'ANTID2', '', 'Antidaphne Poepp. & Endl.', 'antidaphne', 'Eremolepidaceae');
INSERT INTO `Plant` VALUES ('4826', 'APLOD2', '', 'Aplodon R. Br.', 'aplodon moss', 'Splachnaceae');
INSERT INTO `Plant` VALUES ('4873', 'APONO', '', 'Aponogeton L. f.', 'aponogeton', 'Aponogetonaceae');
INSERT INTO `Plant` VALUES ('4880', 'APTER', '', 'Apteria Nutt.', 'apteria', 'Burmanniaceae');
INSERT INTO `Plant` VALUES ('5120', 'ARLED', '', 'Arabis lemmonii S. Watson var. depauperata (A. Nelson & Kennedy) Rollins', 'soldier rockcress', 'Brassicaceae');
INSERT INTO `Plant` VALUES ('5377', 'ARVA', '', 'Arceuthobium vaginatum (Willd.) J. Presl', 'pineland dwarf mistletoe', 'Viscaceae');
INSERT INTO `Plant` VALUES ('5378', 'ARCHI6', '', 'Archidium Brid.', 'archidium moss', 'Archidiaceae');
INSERT INTO `Plant` VALUES ('5435', 'ARCTO7', '', 'Arctomia Th. Fr.', 'arctomia lichen', 'Arctomiaceae');
INSERT INTO `Plant` VALUES ('5632', 'ARRE7', '', 'Arctostaphylos regismontana Eastw.', 'Kings Mountain manzanita', 'Ericaceae');
INSERT INTO `Plant` VALUES ('5888', 'ARMUR2', '', 'Argemone munita Durand & Hilg. ssp. robusta G.B. Ownbey', 'flatbud pricklypoppy', 'Papaveraceae');
INSERT INTO `Plant` VALUES ('6197', 'ARIST2', '', 'Aristolochia L.', 'dutchman\'s pipe', 'Aristolochiaceae');
INSERT INTO `Plant` VALUES ('6763', 'ARTHO', '', 'Arthonia Ach.', 'dot lichen', 'Arthoniaceae');
INSERT INTO `Plant` VALUES ('6913', 'ARTE12', '', 'Arthopyrenia texensis (Cooke) D. Hawksw.', 'Texas shell lichen', 'Arthopyreniaceae');
INSERT INTO `Plant` VALUES ('6914', 'ARTHO3', '', 'Arthothelium A. Massal.', 'arthothelium lichen', 'Uncertain Lichen Family');
INSERT INTO `Plant` VALUES ('6945', 'ARTHR5', '', 'Arthrorhaphis Th. Fr.', 'arthrorhaphis lichen', 'Arthrorhaphidaceae');
INSERT INTO `Plant` VALUES ('7168', 'ASSP2', '', 'Asclepias sperryi Woodson', 'Sperry\'s milkweed', 'Asclepiadaceae');
INSERT INTO `Plant` VALUES ('7263', 'ASPIC2', '', 'Aspicilia A. Massal.', 'rimmed lichen', 'Hymeneliaceae');
INSERT INTO `Plant` VALUES ('7426', 'ASER9', '', 'Asplenium erosum L.', 'eared spleenwort', 'Aspleniaceae');
INSERT INTO `Plant` VALUES ('8448', 'ASPUC', '', 'Astragalus purshii Douglas ex Hook. var. concinnus Barneby', 'woollypod milkvetch', 'Fabaceae');
INSERT INTO `Plant` VALUES ('8705', 'ASSIM2', '', 'Astrolepis sinuata (Lag. ex Sw.) Benham & Windham ssp. mexicana Benham', 'Mexican scaly cloakfern', 'Pteridaceae');
INSERT INTO `Plant` VALUES ('8720', 'ASTRO3', '', 'Astrothelium Eschw.', 'astrothelium lichen', 'Trypetheliaceae');
INSERT INTO `Plant` VALUES ('8737', 'ATAMI', '', 'Atamisquea Miers ex Hook. & Arn.', 'atamisquea', 'Capparaceae');
INSERT INTO `Plant` VALUES ('8745', 'ATHEL', '', 'Athelia Pers.', 'athelia lichen', 'Atheliaceae');
INSERT INTO `Plant` VALUES ('8960', 'ATLO3', '', 'Atriplex longitrichoma Stutz, G.L. Chu & S.C. Sand.', 'long-hair silverscale', 'Chenopodiaceae');
INSERT INTO `Plant` VALUES ('9068', 'AULAC2', '', 'Aulacomnium Schwägr.', 'aulacomnium moss', 'Aulacomniaceae');
INSERT INTO `Plant` VALUES ('9216', 'AVBI', '', 'Averrhoa bilimbi L.', 'bilimbi', 'Oxalidaceae');
INSERT INTO `Plant` VALUES ('9218', 'AVICE', '', 'Avicennia L.', 'mangrove', 'Verbenaceae');
INSERT INTO `Plant` VALUES ('9256', 'AZADI2', '', 'Azadirachta A. Juss.', 'azadirachta', 'Meliaceae');
INSERT INTO `Plant` VALUES ('9260', 'AZOLL', '', 'Azolla Lam.', 'mosquitofern', 'Azollaceae');
INSERT INTO `Plant` VALUES ('9306', 'BACID', '', 'Bacidia De Not.', 'dotted lichen', 'Bacidiaceae');
INSERT INTO `Plant` VALUES ('9475', 'BAILL', '', 'Baillonella Pierre', 'baillonella', 'Sapotaceae');
INSERT INTO `Plant` VALUES ('9477', 'BALAN', '', 'Balanites Delile', 'balanites', 'Zygophyllaceae');
INSERT INTO `Plant` VALUES ('9662', 'BARBE', '', 'Barbella Fleisch.', 'barbella moss', 'Meteoriaceae');
INSERT INTO `Plant` VALUES ('9743', 'BARTR2', '', 'Bartramia Hedw.', 'bartramia moss', 'Bartramiaceae');
INSERT INTO `Plant` VALUES ('9771', 'BASEL', '', 'Basella L.', 'basella', 'Basellaceae');
INSERT INTO `Plant` VALUES ('9826', 'BATIS', '', 'Batis P. Br.', 'turtleweed', 'Bataceae');
INSERT INTO `Plant` VALUES ('10196', 'BIATO3', '', 'Biatorella De Not.', 'biatorella lichen', 'Biatorellaceae');
INSERT INTO `Plant` VALUES ('10496', 'BLTR', '', 'Blepharoneuron tricholepis (Torr.) Nash', 'pine dropseed', 'Poaceae');
INSERT INTO `Plant` VALUES ('10520', 'BLIND2', '', 'Blindia Bruch & Schimp.', 'blindia moss', 'Seligeriaceae');
INSERT INTO `Plant` VALUES ('10682', 'BONTI', '', 'Bontia L.', 'bontia', 'Myoporaceae');
INSERT INTO `Plant` VALUES ('11008', 'BRSY2', '', 'Brachymenium systylium (Müll. Hal.) A. Jaeger', 'brachymenium moss', 'Bryaceae');
INSERT INTO `Plant` VALUES ('11029', 'BRACH10', '', 'Brachythecium Schimp.', 'brachythecium moss', 'Brachytheciaceae');
INSERT INTO `Plant` VALUES ('11400', 'BRIGA', '', 'Brigantiaea Trevis.', 'brigantiaea lichen', 'Brigantiaceae');
INSERT INTO `Plant` VALUES ('11755', 'BRUCH', '', 'Bruchia Schwägr.', 'bruchia moss', 'Bruchiaceae');
INSERT INTO `Plant` VALUES ('11777', 'BRSU3', '', 'Brugmansia suaveolens (Humb. & Bonpl. ex Willd.) Bercht. & C. Presl', 'angel\'s-tears', 'Solanaceae');
INSERT INTO `Plant` VALUES ('11780', 'BRUGU', '', 'Bruguiera Savigny', 'bruguiera', 'Rhizophoraceae');
INSERT INTO `Plant` VALUES ('11786', 'BRUNE', '', 'Brunellia Ruiz & Pav.', 'brunellia', 'Brunelliaceae');
INSERT INTO `Plant` VALUES ('11823', 'BRYOB', '', 'Bryobrittonia R.S. Williams', 'bryobrittonia moss', 'Encalyptaceae');
INSERT INTO `Plant` VALUES ('11946', 'BRYOX', '', 'Bryoxiphium Mitt.', 'bryoxiphium moss', 'Bryoxiphiaceae');
INSERT INTO `Plant` VALUES ('12106', 'BUDDL2', '', 'Buddleja L.', 'butterflybush', 'Buddlejaceae');
INSERT INTO `Plant` VALUES ('12293', 'BULLA', '', 'Bullatina Vezda & Poelt', 'bullatina lichen', 'Gomphillaceae');
INSERT INTO `Plant` VALUES ('12299', 'BUNCH', '', 'Bunchosia Rich. ex Kunth', 'woodland coffee', 'Malpighiaceae');
INSERT INTO `Plant` VALUES ('12344', 'BUTOM', '', 'Butomus L.', 'butomus', 'Butomaceae');
INSERT INTO `Plant` VALUES ('12348', 'BUXBA2', '', 'Buxbaumia Hedw.', 'buxbaumia moss', 'Buxbaumiaceae');
INSERT INTO `Plant` VALUES ('12355', 'BUXUS', '', 'Buxus L.', 'boxwood', 'Buxaceae');
INSERT INTO `Plant` VALUES ('12388', 'CABOM', '', 'Cabomba Aubl.', 'fanwort', 'Cabombaceae');
INSERT INTO `Plant` VALUES ('12665', 'CALAT', '', 'Calathea G. Mey.', 'calathea', 'Marantaceae');
INSERT INTO `Plant` VALUES ('12685', 'CALIC', '', 'Calicium Pers.', 'spike lichen', 'Caliciaceae');
INSERT INTO `Plant` VALUES ('12879', 'CALLI6', '', 'Callitriche L.', 'water-starwort', 'Callitrichaceae');
INSERT INTO `Plant` VALUES ('13056', 'CALOP', '', 'Calophyllum L.', 'calophyllum', 'Clusiaceae');
INSERT INTO `Plant` VALUES ('13063', 'CALOP7', '', 'Caloplaca Th. Fr.', 'orange lichen', 'Teloschistaceae');
INSERT INTO `Plant` VALUES ('13350', 'CALYC5', '', 'Calycanthus L.', 'sweetshrub', 'Calycanthaceae');
INSERT INTO `Plant` VALUES ('13439', 'CALYM', '', 'Calymperes Sw.', 'calymperes moss', 'Calymperaceae');
INSERT INTO `Plant` VALUES ('13569', 'CAPUP2', '', 'Calystegia purpurata (Greene) Brummitt ssp. purpurata', 'Pacific false bindweed', 'Convolvulaceae');
INSERT INTO `Plant` VALUES ('14080', 'CAATC3', '', 'Campylopus atrovirens De Not. var. cucullatifolius J.-P. Frahm', 'campylopus moss', 'Dicranaceae');
INSERT INTO `Plant` VALUES ('14106', 'CAMPY5', '', 'Campylostelium Bruch & Schimp.', 'campylostelium moss', 'Ptychomitriaceae');
INSERT INTO `Plant` VALUES ('14120', 'CANAR2', '', 'Canarium L.', 'olive', 'Burseraceae');
INSERT INTO `Plant` VALUES ('14167', 'CANDE2', '', 'Candelaria A. Massal.', 'lemon lichen', 'Candelariaceae');
INSERT INTO `Plant` VALUES ('14206', 'CANEL', '', 'Canella P. Br.', 'wild cinnamon', 'Canellaceae');
INSERT INTO `Plant` VALUES ('14210', 'CANNA2', '', 'Canna L.', 'canna', 'Cannaceae');
INSERT INTO `Plant` VALUES ('14592', 'CAAM10', '', 'Carex amplifolia Boott', 'bigleaf sedge', 'Cyperaceae');
INSERT INTO `Plant` VALUES ('15829', 'CARLU', '', 'Carludovica Ruiz & Pav.', 'carludovica', 'Cyclanthaceae');
INSERT INTO `Plant` VALUES ('15872', 'CAED3', '', 'Carpobrotus edulis (L.) L. Bolus', 'hottentot fig', 'Aizoaceae');
INSERT INTO `Plant` VALUES ('15963', 'CARYO2', '', 'Caryocar F. Allam. ex L.', 'caryocar', 'Caryocaraceae');
INSERT INTO `Plant` VALUES ('16128', 'CAAPP4', '', 'Castilleja applegatei Fernald ssp. pinetorum (Fernald) T.I. Chuang & Heckard', 'wavyleaf Indian paintbrush', 'Scrophulariaceae');
INSERT INTO `Plant` VALUES ('16387', 'CASUA', '', 'Casuarina Rumph. ex L.', 'sheoak', 'Casuarinaceae');
INSERT INTO `Plant` VALUES ('16416', 'CATAP2', '', 'Catapyrenium Flotow', 'earth lichen', 'Verrucariaceae');
INSERT INTO `Plant` VALUES ('16508', 'CATOL', '', 'Catolechia Flotow', 'catolechia lichen', 'Rhizocarpaceae');
INSERT INTO `Plant` VALUES ('16520', 'CATOS2', '', 'Catoscopium Brid.', 'golf club moss', 'Catoscopiaceae');
INSERT INTO `Plant` VALUES ('16572', 'CAULE', '', 'Caulerpa J.V.F. Lamouroux', 'caulerpa', 'Caulerpaceae');
INSERT INTO `Plant` VALUES ('16744', 'CECRO', '', 'Cecropia Loefl.', 'pumpwood', 'Cecropiaceae');
INSERT INTO `Plant` VALUES ('16783', 'CELTI', '', 'Celtis L.', 'hackberry', 'Ulmaceae');
INSERT INTO `Plant` VALUES ('16977', 'CENTR', '', 'Centranthus Neck. ex Lam. & DC.', 'centranthus', 'Valerianaceae');
INSERT INTO `Plant` VALUES ('17041', 'CEPHA4', '', 'Cephalaria Schrad. ex Roem. & Schult.', 'cephalaria', 'Dipsacaceae');
INSERT INTO `Plant` VALUES ('17049', 'CEPHA8', '', 'Cephalotaxus Siebold & Zucc. ex Endl.', 'cephalotaxus', 'Cephalotaxaceae');
INSERT INTO `Plant` VALUES ('17285', 'CERAT', '', 'Ceratophyllum L.', 'hornwort', 'Ceratophyllaceae');
INSERT INTO `Plant` VALUES ('17302', 'CERAT2', '', 'Ceratopteris Brongn.', 'antlerfern', 'Parkeriaceae');
INSERT INTO `Plant` VALUES ('17318', 'CERCI3', '', 'Cercidiphyllum Siebold & Zucc.', 'katsura tree', 'Cercidiphyllaceae');
INSERT INTO `Plant` VALUES ('17408', 'CEAR7', '', 'Cetraria arenaria Karnefelt', 'sandwort cetraria lichen', 'Parmeliaceae');
INSERT INTO `Plant` VALUES ('17550', 'CHAEN5', '', 'Chaenothecopsis Vain.', 'chaenothecopsis lichen', 'Mycocaliciaceae');
INSERT INTO `Plant` VALUES ('17920', 'CHCES', '', 'Chamaesyce celastroides (Boiss.) Croizat & O. Deg. var. stokesii (Forbes) O. Deg. & I. Deg.', 'ekoko', 'Euphorbiaceae');
INSERT INTO `Plant` VALUES ('18636', 'CHIMA', '', 'Chimaphila Pursh', 'prince\'s pine', 'Pyrolaceae');
INSERT INTO `Plant` VALUES ('18692', 'CHIRA', '', 'Chiranthodendron Cerv. ex Cav.', 'chiranthodendron', 'Sterculiaceae');
INSERT INTO `Plant` VALUES ('18954', 'CHRYS15', '', 'Chrysolepis Hjelmquist', 'chinquapin', 'Fagaceae');
INSERT INTO `Plant` VALUES ('19118', 'CHRYS12', '', 'Chrysothrix Mont.', 'dust lichen', 'Chrysotrichaceae');
INSERT INTO `Plant` VALUES ('19200', 'CIEL2', '', 'Cinnamomum elongatum (Vahl ex Nees) Kosterm.', 'laurel avispillo', 'Lauraceae');
INSERT INTO `Plant` VALUES ('19536', 'CISSU', '', 'Cissus L.', 'treebine', 'Vitaceae');
INSERT INTO `Plant` VALUES ('19714', 'CLSA6', '', 'Cladina sandstedei (Abbayes) Ahti', 'Sandstede\'s reindeer lichen', 'Cladoniaceae');
INSERT INTO `Plant` VALUES ('19968', 'CLPO8', '', 'Clappertonia polyandra (K. Schum. ex Sprague) Bech.', 'clappertonia', 'Tiliaceae');
INSERT INTO `Plant` VALUES ('20092', 'CLATH', '', 'Clathroporina Müll. Arg.', 'clathroporina lichen', 'Trichotheliaceae');
INSERT INTO `Plant` VALUES ('20480', 'CLCLR', '', 'Clermontia clermontioides (Gaudich.) A. Heller ssp. rockiana (E. Wimm.) Lammers', 'Kauai clermontia', 'Campanulaceae');
INSERT INTO `Plant` VALUES ('20581', 'CLETH', '', 'Clethra L.', 'sweetpepperbush', 'Clethraceae');
INSERT INTO `Plant` VALUES ('20609', 'CLIMA2', '', 'Climacium F. Weber & D. Mohr ex Mohr', 'climacium moss', 'Climaciaceae');
INSERT INTO `Plant` VALUES ('20709', 'CLYPE', '', 'Clypeococcum D. Hawksw.', 'clypeococcum lichen', 'Dacampiaceae');
INSERT INTO `Plant` VALUES ('20748', 'COCCO4', '', 'Coccocarpia Pers.', 'coccocarpia lichen', 'Coccocarpiaceae');
INSERT INTO `Plant` VALUES ('20793', 'COCCO5', '', 'Coccotrema Müll. Arg.', 'coccotrema lichen', 'Coccotremataceae');
INSERT INTO `Plant` VALUES ('20992', 'COUNG', '', 'Collema undulatum Laurer ex Flotow var. granulosum Degel.', 'undulate jelly lichen', 'Collemataceae');
INSERT INTO `Plant` VALUES ('21230', 'COMPT', '', 'Comptonia L\'Hér. ex Aiton', 'sweet fern', 'Myricaceae');
INSERT INTO `Plant` VALUES ('21248', 'COHOE', '', 'Condalia hookeri M.C. Johnst. var. edwardsiana (Cory) M.C. Johnst.', 'Edwards\' bluewood', 'Rhamnaceae');
INSERT INTO `Plant` VALUES ('21266', 'CONIM', '', 'Conimitella Rydb.', 'conimitella', 'Saxifragaceae');
INSERT INTO `Plant` VALUES ('21268', 'CONIO3', '', 'Coniocybe Ach.', 'pin lichen', 'Coniocybaceae');
INSERT INTO `Plant` VALUES ('21285', 'CONOC', '', 'Conocarpus L.', 'mangrove', 'Combretaceae');
INSERT INTO `Plant` VALUES ('21297', 'CONOP', '', 'Conopholis Wallr.', 'cancer-root', 'Orobanchaceae');
INSERT INTO `Plant` VALUES ('21312', 'CONOT', '', 'Conotrema Tuck.', 'conotrema lichen', 'Stictidaceae');
INSERT INTO `Plant` VALUES ('21839', 'CORNU', '', 'Cornus L.', 'dogwood', 'Cornaceae');
INSERT INTO `Plant` VALUES ('22016', 'COMIT2', '', 'Corydalis micrantha (Engelm. ex A. Gray) A. Gray ssp. texensis G.B. Ownbey', 'Texan fumewort', 'Fumariaceae');
INSERT INTO `Plant` VALUES ('22027', 'CORYL2', '', 'Corylopsis Siebold & Zucc.', 'winter hazel', 'Hamamelidaceae');
INSERT INTO `Plant` VALUES ('22029', 'CORYL', '', 'Corylus L.', 'hazelnut', 'Betulaceae');
INSERT INTO `Plant` VALUES ('22087', 'CORYN2', '', 'Corynocarpus J.R. Forst. & G. Forst.', 'corynocarpus', 'Corynocarpaceae');
INSERT INTO `Plant` VALUES ('22140', 'COSTU', '', 'Costus L.', 'costus', 'Costaceae');
INSERT INTO `Plant` VALUES ('22300', 'CRANI2', '', 'Craniolaria L.', 'craniolaria', 'Pedaliaceae');
INSERT INTO `Plant` VALUES ('23189', 'CROCY', '', 'Crocynia (Ach.) A. Massal.', 'crocynia lichen', 'Crocyniaceae');
INSERT INTO `Plant` VALUES ('23192', 'CROOM', '', 'Croomia Torr.', 'croomia', 'Stemonaceae');
INSERT INTO `Plant` VALUES ('23456', 'CRYPH', '', 'Cryphaea F. Weber', 'cryphaea moss', 'Cryphaeaceae');
INSERT INTO `Plant` VALUES ('23553', 'CRDE', '', 'Cryptantha decipiens (M.E. Jones) A. Heller', 'gravelbar cryptantha', 'Boraginaceae');
INSERT INTO `Plant` VALUES ('23808', 'CUFI', '', 'Cucumis ficifolius A. Rich.', 'cucumis', 'Cucurbitaceae');
INSERT INTO `Plant` VALUES ('24064', 'CUWA2', '', 'Cuscuta warneri Yunck.', 'Warner\'s dodder', 'Cuscutaceae');
INSERT INTO `Plant` VALUES ('24322', 'CYBIA', '', 'Cybianthus Mart.', 'cybianthus', 'Myrsinaceae');
INSERT INTO `Plant` VALUES ('24325', 'CYCAS', '', 'Cycas L.', 'cycad', 'Cycadaceae');
INSERT INTO `Plant` VALUES ('24349', 'CYCLO3', '', 'Cyclodictyon Mitt.', 'cyclodictyon moss', 'Callicostaceae');
INSERT INTO `Plant` VALUES ('25118', 'CYRIL', '', 'Cyrilla Garden ex L.', 'titi', 'Cyrillaceae');
INSERT INTO `Plant` VALUES ('25344', 'CYWA4', '', 'Cyrtandra waiolani Wawra', 'fuzzyflower cyrtandra', 'Gesneriaceae');
INSERT INTO `Plant` VALUES ('25348', 'CYRTO5', '', 'Cyrto-hypnum (Hampe) Hampe & Lor.', 'cyrto-hypnum moss', 'Thuidiaceae');
INSERT INTO `Plant` VALUES ('25365', 'CYRTO3', '', 'Cyrtomnium Holmen', 'cyrtomnium moss', 'Mniaceae');
INSERT INTO `Plant` VALUES ('25376', 'CYRTO4', '', 'Cyrtosperma Griffith', 'cyrtosperma', 'Araceae');
INSERT INTO `Plant` VALUES ('25432', 'DACRY2', '', 'Dacrycarpus (Endl.) Laubenf.', 'dacrycarpus', 'Podocarpaceae');
INSERT INTO `Plant` VALUES ('25493', 'DACTY5', '', 'Dactylospora Körb.', 'dactylospora lichen', 'Dactylosporaceae');
INSERT INTO `Plant` VALUES ('25720', 'DALTO', '', 'Daltonia Hook. & Taylor', 'daltonia moss', 'Daltoniaceae');
INSERT INTO `Plant` VALUES ('25727', 'DANAE', '', 'Danaea Sm.', 'danafern', 'Marattiaceae');
INSERT INTO `Plant` VALUES ('25776', 'DARLI', '', 'Darlingtonia Torr.', 'California pitcherplant', 'Sarraceniaceae');
INSERT INTO `Plant` VALUES ('25815', 'DATIS', '', 'Datisca L.', 'datisca', 'Datiscaceae');
INSERT INTO `Plant` VALUES ('25856', 'DEEU', '', 'Dedeckera eurekensis Reveal & J.T. Howell', 'July gold', 'Polygonaceae');
INSERT INTO `Plant` VALUES ('25859', 'DEERI', '', 'Deeringothamnus Small', 'false pawpaw', 'Annonaceae');
INSERT INTO `Plant` VALUES ('25864', 'DEGEL', '', 'Degelia Arv. & D.J. Galloway', 'degelia lichen', 'Pannariaceae');
INSERT INTO `Plant` VALUES ('26112', 'DERE2', '', 'Delphinium recurvatum Greene', 'Byron larkspur', 'Ranunculaceae');
INSERT INTO `Plant` VALUES ('26147', 'DENDR9', '', 'Dendriscocaulon Nyl.', 'dendriscocaulon lichen', 'Lobariaceae');
INSERT INTO `Plant` VALUES ('26153', 'DENDR8', '', 'Dendroalsia E. Britton', 'dendroalsia moss', 'Leucodontaceae');
INSERT INTO `Plant` VALUES ('26170', 'DENDR10', '', 'Dendrographa Darbish.', 'dendrographa lichen', 'Roccellaceae');
INSERT INTO `Plant` VALUES ('26185', 'DENDR2', '', 'Dendropanax Decne. & Planch.', 'dendropanax', 'Araliaceae');
INSERT INTO `Plant` VALUES ('26188', 'DENDR3', '', 'Dendropemon (Blume) Schult. & Schult. f.', 'leechbush', 'Loranthaceae');
INSERT INTO `Plant` VALUES ('26206', 'DENNS', '', 'Dennstaedtia Bernh.', 'hayscented fern', 'Dennstaedtiaceae');
INSERT INTO `Plant` VALUES ('26753', 'DIAPE', '', 'Diapensia L.', 'diapensia', 'Diapensiaceae');
INSERT INTO `Plant` VALUES ('27239', 'DICHE3', '', 'Dichelyma Myr.', 'dichelyma moss', 'Fontinalaceae');
INSERT INTO `Plant` VALUES ('27271', 'DICKS', '', 'Dicksonia L\'Hér.', 'tree fern', 'Dicksoniaceae');
INSERT INTO `Plant` VALUES ('27429', 'DICTY', '', 'Dictyonema C. Agardh', 'dictyonema lichen', 'Corticiaceae');
INSERT INTO `Plant` VALUES ('27704', 'DILLE2', '', 'Dillenia L.', 'dillenia', 'Dilleniaceae');
INSERT INTO `Plant` VALUES ('27715', 'DIMEL', '', 'Dimelaena Norman', 'mountain lichen', 'Physciaceae');
INSERT INTO `Plant` VALUES ('27799', 'DIOSC', '', 'Dioscorea L.', 'yam', 'Dioscoreaceae');
INSERT INTO `Plant` VALUES ('27841', 'DIOSP', '', 'Diospyros L.', 'diospyros', 'Ebenaceae');
INSERT INTO `Plant` VALUES ('27998', 'DIPLO2', '', 'Diplopterygium (Diels) Nakai', 'diplopterygium', 'Gleicheniaceae');
INSERT INTO `Plant` VALUES ('28001', 'DIPLO5', '', 'Diploschistes Norman', 'crater lichen', 'Thelotremataceae');
INSERT INTO `Plant` VALUES ('28085', 'DISCE', '', 'Discelium Brid.', 'discelium moss', 'Disceliaceae');
INSERT INTO `Plant` VALUES ('28350', 'DOODI', '', 'Doodia R. Br.', 'hacksaw fern', 'Blechnaceae');
INSERT INTO `Plant` VALUES ('28721', 'DRACA', '', 'Dracaena L.', 'dracaena', 'Agavaceae');
INSERT INTO `Plant` VALUES ('28771', 'DRIMY', '', 'Drimys J.R. Forst. & G. Forst.', 'drimys', 'Winteraceae');
INSERT INTO `Plant` VALUES ('28779', 'DROSE', '', 'Drosera L.', 'sundew', 'Droseraceae');
INSERT INTO `Plant` VALUES ('28928', 'DRSA', '', 'Dryopteris sandwicensis (Hook. & Arn.) C. Chr.', 'Pacific woodfern', 'Dryopteridaceae');
INSERT INTO `Plant` VALUES ('29185', 'DUST', '', 'Dudleya stolonifera Moran', 'Laguna Beach liveforever', 'Crassulaceae');
INSERT INTO `Plant` VALUES ('29226', 'DURIO', '', 'Durio Adanson', 'durio', 'Bombacaceae');
INSERT INTO `Plant` VALUES ('29228', 'DYCKI', '', 'Dyckia Schult. f.', 'dyckia', 'Bromeliaceae');
INSERT INTO `Plant` VALUES ('29285', 'ECCRE', '', 'Eccremidium Wilson', 'eccremidium moss', 'Ditrichaceae');
INSERT INTO `Plant` VALUES ('29442', 'ECREB2', '', 'Echinocereus reichenbachii (Terscheck ex Walp.) hort ex Haage ssp. baileyi (Rose) N.P. Taylor', 'Bailey\'s hedgehog cactus', 'Cactaceae');
INSERT INTO `Plant` VALUES ('29631', 'ECHIN10', '', 'Echinothecium Zopf', 'echinothecium lichen', 'Capnodiaceae');
INSERT INTO `Plant` VALUES ('29697', 'EIPA', '', 'Eichhornia paniculata (Spreng.) Solms', 'Brazilian water hyacinth', 'Pontederiaceae');
INSERT INTO `Plant` VALUES ('29699', 'EIGLE', '', 'Eiglera Hafellner', 'eiglera lichen', 'Eigleraceae');
INSERT INTO `Plant` VALUES ('29703', 'ELAEA', '', 'Elaeagnus L.', 'oleaster', 'Elaeagnaceae');
INSERT INTO `Plant` VALUES ('29718', 'ELAEO', '', 'Elaeocarpus L.', 'elaeocarpus', 'Elaeocarpaceae');
INSERT INTO `Plant` VALUES ('29771', 'ELATI', '', 'Elatine L.', 'waterwort', 'Elatinaceae');
INSERT INTO `Plant` VALUES ('30539', 'EMBOT', '', 'Embothrium J.R. Forst. & G. Forst.', 'Chilean firebush', 'Proteaceae');
INSERT INTO `Plant` VALUES ('30561', 'EMPET', '', 'Empetrum L.', 'crowberry', 'Empetraceae');
INSERT INTO `Plant` VALUES ('30725', 'ENSET', '', 'Ensete Horan.', 'ensete', 'Musaceae');
INSERT INTO `Plant` VALUES ('30742', 'ENTER4', '', 'Enterographa Fée', 'enterographa lichen', 'Opegraphaceae');
INSERT INTO `Plant` VALUES ('30765', 'ENTER3', '', 'Enterosora Baker', 'threefork polypody', 'Grammitidaceae');
INSERT INTO `Plant` VALUES ('30769', 'ENTOD2', '', 'Entodon Müll. Hal.', 'entodon moss', 'Entodontaceae');
INSERT INTO `Plant` VALUES ('30789', 'ENTOD3', '', 'Entodontopsis Broth.', 'entodontopsis moss', 'Stereophyllaceae');
INSERT INTO `Plant` VALUES ('30796', 'ENTOS', '', 'Entosthodon Schwägr.', 'entosthodon moss', 'Funariaceae');
INSERT INTO `Plant` VALUES ('30817', 'EOPYR', '', 'Eopyrenula R.C. Harris', 'eopyrenula lichen', 'Pleomassariaceae');
INSERT INTO `Plant` VALUES ('30831', 'EPHED', '', 'Ephedra L.', 'jointfir', 'Ephedraceae');
INSERT INTO `Plant` VALUES ('30863', 'EPHEM', '', 'Ephemerum Hampe', 'ephemerum moss', 'Ephemeraceae');
INSERT INTO `Plant` VALUES ('30977', 'EPCA3', '', 'Epilobium canum (Greene) P.H. Raven', 'hummingbird trumpet', 'Onagraceae');
INSERT INTO `Plant` VALUES ('31159', 'EQUIS', '', 'Equisetum L.', 'horsetail', 'Equisetaceae');
INSERT INTO `Plant` VALUES ('31488', 'ERSPS2', '', 'Eriastrum sparsiflorum (Eastw.) H. Mason ssp. sparsiflorum', 'Great Basin woollystar', 'Polemoniaceae');
INSERT INTO `Plant` VALUES ('32256', 'ERCA7', '', 'Eriodictyon capitatum Eastw.', 'Lompoc yerba santa', 'Hydrophyllaceae');
INSERT INTO `Plant` VALUES ('33218', 'ERPOD', '', 'Erpodium (Brid.) Brid.', 'erpodium moss', 'Erpodiaceae');
INSERT INTO `Plant` VALUES ('33280', 'ERPH3', '', 'Eryngium phyteumae Delar. f.', 'Huachuca Mountain eryngo', 'Apiaceae');
INSERT INTO `Plant` VALUES ('33469', 'ERYTH5', '', 'Erythroxylum P. Br.', 'coca', 'Erythroxylaceae');
INSERT INTO `Plant` VALUES ('33794', 'EUGR16', '', 'Eucalyptus grossa F. Muell. ex Benth.', 'coarse-leaf mallee', 'Myrtaceae');
INSERT INTO `Plant` VALUES ('34049', 'EUCNI', '', 'Eucnide Zucc.', 'stingbush', 'Loasaceae');
INSERT INTO `Plant` VALUES ('34056', 'EUCRY2', '', 'Eucryphia Cav.', 'ulmo', 'Cunoniaceae');
INSERT INTO `Plant` VALUES ('34649', 'EURYA', '', 'Eurya Thunb.', 'eurya', 'Theaceae');
INSERT INTO `Plant` VALUES ('34654', 'EURYA2', '', 'Euryale Salisb.', 'euryale', 'Nymphaeaceae');
INSERT INTO `Plant` VALUES ('35057', 'FAYOD', '', 'Fayodia Kuhner', 'fayodia lichen', 'Tricholomataceae');
INSERT INTO `Plant` VALUES ('35073', 'FEBO', '', 'Fellhanera bouteillei (Desmaz.) Vezda', 'Bouteille\'s fellhanera lichen', 'Pilocarpaceae');
INSERT INTO `Plant` VALUES ('35078', 'FENDL', '', 'Fendlera Engelm. & A. Gray', 'fendlerbush', 'Hydrangeaceae');
INSERT INTO `Plant` VALUES ('35361', 'FIBRA', '', 'Fibraurea Lour.', 'fibraurea', 'Menispermaceae');
INSERT INTO `Plant` VALUES ('35363', 'FICUS', '', 'Ficus L.', 'fig', 'Moraceae');
INSERT INTO `Plant` VALUES ('35507', 'FISSI2', '', 'Fissidens Hedw.', 'fissidens moss', 'Fissidentaceae');
INSERT INTO `Plant` VALUES ('35585', 'FICU2', '', 'Fitzroya cupressoides (Molina) I.M. Johnst.', 'Patagonian cypress', 'Cupressaceae');
INSERT INTO `Plant` VALUES ('35586', 'FLACO', '', 'Flacourtia Comm. ex L\'Hér.', 'flacourtia', 'Flacourtiaceae');
INSERT INTO `Plant` VALUES ('35818', 'FOUQU', '', 'Fouquieria Kunth', 'ocotillo', 'Fouquieriaceae');
INSERT INTO `Plant` VALUES ('35933', 'FRANK', '', 'Frankenia L.', 'seaheath', 'Frankeniaceae');
INSERT INTO `Plant` VALUES ('36112', 'FREYC', '', 'Freycinetia Gaudich.', 'freycinetia', 'Pandanaceae');
INSERT INTO `Plant` VALUES ('36352', 'FUKO', '', 'Fuscidea kochiana (Hepp) V. Wirth & Vezda', 'fuscidea lichen', 'Fuscideaceae');
INSERT INTO `Plant` VALUES ('36865', 'GATRT5', '', 'Galium trifidum L. ssp. trifidum', 'threepetal bedstraw', 'Rubiaceae');
INSERT INTO `Plant` VALUES ('36971', 'GARRY', '', 'Garrya Douglas ex Lindl.', 'silktassel', 'Garryaceae');
INSERT INTO `Plant` VALUES ('37120', 'GEGI', '', 'Geheebia gigantea (Funck) Boul.', 'giant geheebia moss', 'Pottiaceae');
INSERT INTO `Plant` VALUES ('37122', 'GELSE', '', 'Gelsemium Juss.', 'trumpetflower', 'Loganiaceae');
INSERT INTO `Plant` VALUES ('37379', 'GEVIV2', '', 'Gentianopsis virgata (Raf.) Holub ssp. victorinii (Fernald) Lammers', 'Victorins gentian', 'Gentianaceae');
INSERT INTO `Plant` VALUES ('37393', 'GEOCA', '', 'Geocaulon Fernald', 'false toadflax', 'Santalaceae');
INSERT INTO `Plant` VALUES ('37412', 'GERAN', '', 'Geranium L.', 'geranium', 'Geraniaceae');
INSERT INTO `Plant` VALUES ('37755', 'GINKG', '', 'Ginkgo L.', 'ginkgo', 'Ginkgoaceae');
INSERT INTO `Plant` VALUES ('37759', 'GISEK', '', 'Gisekia L.', 'gisekia', 'Phytolaccaceae');
INSERT INTO `Plant` VALUES ('37929', 'GLINU', '', 'Glinus L.', 'sweetjuice', 'Molluginaceae');
INSERT INTO `Plant` VALUES ('37948', 'GLOSS', '', 'Glossopetalon A. Gray', 'greasebush', 'Crossosomataceae');
INSERT INTO `Plant` VALUES ('38074', 'GNETU', '', 'Gnetum L.', 'jointfir', 'Gnetaceae');
INSERT INTO `Plant` VALUES ('38375', 'GREYI', '', 'Greyia Hook. & Harv.', 'Natal bottlebrush', 'Greyiaceae');
INSERT INTO `Plant` VALUES ('38401', 'GRMO5', '', 'Grimmia montana Bruch & Schimp.', 'montane dry rock moss', 'Grimmiaceae');
INSERT INTO `Plant` VALUES ('38656', 'GUNNE', '', 'Gunnera L.', 'gunnera', 'Gunneraceae');
INSERT INTO `Plant` VALUES ('38719', 'GYALE2', '', 'Gyalecta Ach.', 'dimple lichen', 'Gyalectaceae');
INSERT INTO `Plant` VALUES ('38733', 'GYALI', '', 'Gyalidea Lettau ex Vezda', 'gyalidea lichen', 'Solorinellaceae');
INSERT INTO `Plant` VALUES ('38864', 'GYPSO2', '', 'Gypsoplaca Timdal', 'gypsoplaca lichen', 'Gypsoplaceae');
INSERT INTO `Plant` VALUES ('38965', 'HAEMA3', '', 'Haematomma A. Massal.', 'bloodstain lichen', 'Haematommataceae');
INSERT INTO `Plant` VALUES ('38979', 'HAENI', '', 'Haenianthus Griseb.', 'haenianthus', 'Oleaceae');
INSERT INTO `Plant` VALUES ('39007', 'HALEC', '', 'Halecania M. Mayrh.', 'halecania lichen', 'Catillariaceae');
INSERT INTO `Plant` VALUES ('39017', 'HALES', '', 'Halesia Ellis ex L.', 'silverbell', 'Styracaceae');
INSERT INTO `Plant` VALUES ('39052', 'HALOD', '', 'Halodule Endl.', 'halodule', 'Cymodoceaceae');
INSERT INTO `Plant` VALUES ('39071', 'HALOR', '', 'Haloragis J.R. Forst. & G. Forst.', 'seaberry', 'Haloragaceae');
INSERT INTO `Plant` VALUES ('39261', 'HECIS', '', 'Hecistopteris J. Sm.', 'hecistopteris', 'Vittariaceae');
INSERT INTO `Plant` VALUES ('39321', 'HEDWI', '', 'Hedwigia P. Beauv.', 'hedwigia moss', 'Hedwigiaceae');
INSERT INTO `Plant` VALUES ('39330', 'HEDYO', '', 'Hedyosmum Sw.', 'hedyosmum', 'Chloranthaceae');
INSERT INTO `Plant` VALUES ('39797', 'HELIC2', '', 'Heliconia L.', 'heliconia', 'Heliconiaceae');
INSERT INTO `Plant` VALUES ('39936', 'HELLE2', '', 'Helleriella A.D. Hawkes', 'helleriella', 'Orchidaceae');
INSERT INTO `Plant` VALUES ('39938', 'HELMI', '', 'Helminthocarpon Fée', 'helminthocarpon lichen', 'Graphidaceae');
INSERT INTO `Plant` VALUES ('39940', 'HELMI2', '', 'Helminthostachys Kaulf.', 'helminthostachys', 'Ophioglossaceae');
INSERT INTO `Plant` VALUES ('39942', 'HELOC2', '', 'Helocarpon Th. Fr.', 'helocarpon lichen', 'Micareaceae');
INSERT INTO `Plant` VALUES ('39946', 'HELOD', '', 'Helodium Warnst.', 'helodium moss', 'Helodiaceae');
INSERT INTO `Plant` VALUES ('39983', 'HEMIT', '', 'Hemitomes A. Gray', 'coneplant', 'Monotropaceae');
INSERT INTO `Plant` VALUES ('40023', 'HENIC2', '', 'Henicodium (Müll. Hal.) Kindb.', 'henicodium moss', 'Pterobryaceae');
INSERT INTO `Plant` VALUES ('40055', 'HEPPI', '', 'Heppia Nageli', 'heppia lichen', 'Heppiaceae');
INSERT INTO `Plant` VALUES ('40106', 'HERNA', '', 'Hernandia L.', 'hernandia', 'Hernandiaceae');
INSERT INTO `Plant` VALUES ('40192', 'HEAD', '', 'Hesperolinon adenophyllum (A. Gray) Small', 'glandular dwarf-flax', 'Linaceae');
INSERT INTO `Plant` VALUES ('40704', 'HIBIS', '', 'Hibiscadelphus Rock', 'hibiscadelphus', 'Malvaceae');
INSERT INTO `Plant` VALUES ('40996', 'HILLE', '', 'Hillebrandia Oliv.', 'hillebrandia', 'Begoniaceae');
INSERT INTO `Plant` VALUES ('41014', 'HIPPO2', '', 'Hippocratea L.', 'hippocratea', 'Hippocrateaceae');
INSERT INTO `Plant` VALUES ('41033', 'HIPPU', '', 'Hippuris L.', 'mare\'s-tail', 'Hippuridaceae');
INSERT INTO `Plant` VALUES ('41166', 'HOMAL3', '', 'Homalia (Brid.) Schimp.', 'homalia moss', 'Neckeraceae');
INSERT INTO `Plant` VALUES ('41216', 'HOAD', '', 'Homomallium adnatum (Hedw.) Broth.', 'homomallium moss', 'Hypnaceae');
INSERT INTO `Plant` VALUES ('41244', 'HOOKE', '', 'Hookeria Sm.', 'hookeria moss', 'Hookeriaceae');
INSERT INTO `Plant` VALUES ('41247', 'HOPEA', '', 'Hopea Roxb.', 'hopea', 'Dipterocarpaceae');
INSERT INTO `Plant` VALUES ('41498', 'HOUTT', '', 'Houttuynia Thunb.', 'houttuynia', 'Saururaceae');
INSERT INTO `Plant` VALUES ('41555', 'HUMUL', '', 'Humulus L.', 'hop', 'Cannabaceae');
INSERT INTO `Plant` VALUES ('41716', 'HYBAN', '', 'Hybanthus Jacq.', 'greenviolet', 'Violaceae');
INSERT INTO `Plant` VALUES ('41812', 'HYDRO9', '', 'Hydrothyria J.L. Russell', 'hydrothyria lichen', 'Peltigeraceae');
INSERT INTO `Plant` VALUES ('42063', 'HYMEN5', '', 'Hymenophyllum Sm.', 'filmy fern', 'Hymenophyllaceae');
INSERT INTO `Plant` VALUES ('42486', 'HYPOP3', '', 'Hypopterygium Brid.', 'hypopterygium moss', 'Hypopterygiaceae');
INSERT INTO `Plant` VALUES ('42595', 'ICACI', '', 'Icacina A. Juss.', 'icacina', 'Icacinaceae');
INSERT INTO `Plant` VALUES ('42608', 'ICMAD', '', 'Icmadophila Trevis.', 'peppermint drop lichen', 'Baeomycetaceae');
INSERT INTO `Plant` VALUES ('42612', 'ILEX', '', 'Ilex L.', 'holly', 'Aquifoliaceae');
INSERT INTO `Plant` VALUES ('42709', 'ILLIC', '', 'Illicium L.', 'anisetree', 'Illiciaceae');
INSERT INTO `Plant` VALUES ('42718', 'IMPAT', '', 'Impatiens L.', 'touch-me-not', 'Balsaminaceae');
INSERT INTO `Plant` VALUES ('42754', 'INCAR', '', 'Incarvillea Juss.', 'incarvillea', 'Bignoniaceae');
INSERT INTO `Plant` VALUES ('43525', 'ISOET', '', 'Isoetes L.', 'quillwort', 'Isoetaceae');
INSERT INTO `Plant` VALUES ('43713', 'ITEA', '', 'Itea L.', 'sweetspire', 'Grossulariaceae');
INSERT INTO `Plant` VALUES ('43806', 'IWATS', '', 'Iwatsukiella W.R. Buck & H.A. Crum', 'iwatsukiella moss', 'Pterigynandraceae');
INSERT INTO `Plant` VALUES ('43867', 'JACQU2', '', 'Jacquinia L.', 'jacquinia', 'Theophrastaceae');
INSERT INTO `Plant` VALUES ('43926', 'JARIL', '', 'Jarilla Rusby', 'jarilla', 'Caricaceae');
INSERT INTO `Plant` VALUES ('44010', 'JOINV', '', 'Joinvillea Gaudich. ex Brongn. & Gris', 'joinvillea', 'Joinvilleaceae');
INSERT INTO `Plant` VALUES ('44032', 'JUJA', '', 'Juglans jamaicensis C. DC.', 'West Indian walnut', 'Juglandaceae');
INSERT INTO `Plant` VALUES ('44049', 'JULEL2', '', 'Julella J.H.C. Fabre', 'julella lichen', 'Thelenellaceae');
INSERT INTO `Plant` VALUES ('44288', 'JUPHP', '', 'Juncus phaeocephalus Engelm. var. paniculatus Engelm.', 'brownhead rush', 'Juncaceae');
INSERT INTO `Plant` VALUES ('44544', 'JUOVO', '', 'Justicia ovata (Walter) Lindau var. ovata', 'looseflower water-willow', 'Acanthaceae');
INSERT INTO `Plant` VALUES ('44565', 'KAEMP2', '', 'Kaempferia L.', 'kaempferia', 'Zingiberaceae');
INSERT INTO `Plant` VALUES ('44740', 'KIRSC', '', 'Kirschsteiniothelia D. Hawksw.', 'kirschsteiniothelia lichen', 'Pleosporaceae');
INSERT INTO `Plant` VALUES ('44811', 'KOELR', '', 'Koelreuteria Laxm.', 'koelreuteria', 'Sapindaceae');
INSERT INTO `Plant` VALUES ('44822', 'KOERB', '', 'Koerberia A. Massal.', 'koerberia lichen', 'Placynthiaceae');
INSERT INTO `Plant` VALUES ('44830', 'KOHLM', '', 'Kohlmeyera Schatz', 'kohlmeyera lichen', 'Mastodiaceae');
INSERT INTO `Plant` VALUES ('44861', 'KRAME', '', 'Krameria L.', 'ratany', 'Krameriaceae');
INSERT INTO `Plant` VALUES ('45065', 'LACHN2', '', 'Lachnanthes Elliot', 'lachnanthes', 'Haemodoraceae');
INSERT INTO `Plant` VALUES ('45071', 'LACHN', '', 'Lachnocaulon Kunth', 'bogbutton', 'Eriocaulaceae');
INSERT INTO `Plant` VALUES ('45176', 'LAGET', '', 'Lagetta Juss.', 'lagetta', 'Thymelaeaceae');
INSERT INTO `Plant` VALUES ('45314', 'LAIN4', '', 'Laportea interrupta (L.) Chew', 'Hawai\'i woodnettle', 'Urticaceae');
INSERT INTO `Plant` VALUES ('45370', 'LASAL2', '', 'Lasallia Mérat', 'blistered navel lichen', 'Umbilicariaceae');
INSERT INTO `Plant` VALUES ('45824', 'LEAP3', '', 'Lecanora applegatei Herre', 'Applegate\'s rim lichen', 'Lecanoraceae');
INSERT INTO `Plant` VALUES ('46081', 'LEMAV', '', 'Lechea maritima Leggett ex Britton, Sterns & Poggenb. var. virginica Hodgdon', 'Virginia pinweed', 'Cistaceae');
INSERT INTO `Plant` VALUES ('46109', 'LECID2', '', 'Lecidea Ach.', 'lecidea lichen', 'Lecideaceae');
INSERT INTO `Plant` VALUES ('46331', 'LECID4', '', 'Lecidoma Gotth. Schneid. & Hertel', 'lecidoma lichen', 'Psoraceae');
INSERT INTO `Plant` VALUES ('46339', 'LECYT', '', 'Lecythis Loefl.', 'lecythis', 'Lecythidaceae');
INSERT INTO `Plant` VALUES ('46396', 'LEITN', '', 'Leitneria Chapm.', 'corkwood', 'Leitneriaceae');
INSERT INTO `Plant` VALUES ('46446', 'LEMNA', '', 'Lemna L.', 'duckweed', 'Lemnaceae');
INSERT INTO `Plant` VALUES ('46546', 'LEPIA', '', 'Lepianthes Raf.', 'lepianthes', 'Piperaceae');
INSERT INTO `Plant` VALUES ('46710', 'LEPIS', '', 'Lepisorus (J. Sm.) Ching', 'lepisorus', 'Polypodiaceae');
INSERT INTO `Plant` VALUES ('46855', 'LERI6', '', 'Leptodictyum riparium (Hedw.) Warnst.', 'streamside leptodictyum moss', 'Amblystegiaceae');
INSERT INTO `Plant` VALUES ('46879', 'LEPTO17', '', 'Leptodon D. Mohr', 'leptodon moss', 'Leptodontaceae');
INSERT INTO `Plant` VALUES ('47150', 'LESCU', '', 'Lescuraea Schimp.', 'lescuraea moss', 'Leskeaceae');
INSERT INTO `Plant` VALUES ('47465', 'LETHA2', '', 'Lethariicola Grummann', 'lethariicola lichen', 'Odontotremataceae');
INSERT INTO `Plant` VALUES ('47468', 'LETRO', '', 'Letrouitia Hafellner & Bellem.', 'letrouitia lichen', 'Letrouitiaceae');
INSERT INTO `Plant` VALUES ('47515', 'LEUCO9', '', 'Leucobryum Hampe', 'leucobryum moss', 'Leucobryaceae');
INSERT INTO `Plant` VALUES ('47561', 'LEPA39', '', 'Leucopogon parviflorus (Andrews) Lindl.', 'coast beard-heath', 'Epacridaceae');
INSERT INTO `Plant` VALUES ('47618', 'LEOP', '', 'Lewisia oppositifolia (S. Watson) B.L. Rob.', 'oppositeleaf lewisia', 'Portulacaceae');
INSERT INTO `Plant` VALUES ('47890', 'LICAN', '', 'Licania Aubl.', 'licania', 'Chrysobalanaceae');
INSERT INTO `Plant` VALUES ('47908', 'LICHE', '', 'Lichenochora Hafellner', 'lichenochora lichen', 'Phyllachoraceae');
INSERT INTO `Plant` VALUES ('47924', 'LICHE4', '', 'Lichenostigma Hafellner', 'lichenostigma lichen', 'Lichenotheliaceae');
INSERT INTO `Plant` VALUES ('48004', 'LILAE', '', 'Lilaea Bonpl.', 'lilaea', 'Juncaginaceae');
INSERT INTO `Plant` VALUES ('48129', 'LIFL2', '', 'Limnanthes floccosa Howell', 'woolly meadowfoam', 'Limnanthaceae');
INSERT INTO `Plant` VALUES ('48139', 'LIMNO', '', 'Limnobium Rich.', 'spongeplant', 'Hydrocharitaceae');
INSERT INTO `Plant` VALUES ('48149', 'LIMNO5', '', 'Limnocharis Humb. & Bonpl.', 'velvetleaf', 'Limnocharitaceae');
INSERT INTO `Plant` VALUES ('48168', 'LIMON', '', 'Limonium Mill.', 'sea lavender', 'Plumbaginaceae');
INSERT INTO `Plant` VALUES ('48654', 'LIRIO', '', 'Liriodendron L.', 'tuliptree', 'Magnoliaceae');
INSERT INTO `Plant` VALUES ('48703', 'LITHO5', '', 'Lithographa Nyl.', 'lithographa lichen', 'Rimulariaceae');
INSERT INTO `Plant` VALUES ('48788', 'LITTO', '', 'Littorella P.J. Bergius', 'littorella', 'Plantaginaceae');
INSERT INTO `Plant` VALUES ('49001', 'LOESK2', '', 'Loeskeobryum Fleisch.', 'loeskeobryum moss', 'Hylocomiaceae');
INSERT INTO `Plant` VALUES ('49409', 'LOVI', '', 'Lonicera villosa (Michx.) Schult.', 'mountain fly honeysuckle', 'Caprifoliaceae');
INSERT INTO `Plant` VALUES ('49412', 'LOPAD', '', 'Lopadium Körb.', 'granular lichen', 'Ectolechiaceae');
INSERT INTO `Plant` VALUES ('49447', 'LOPHO3', '', 'Lophosoria C. Presl', 'lophosoria', 'Lophosoriaceae');
INSERT INTO `Plant` VALUES ('49532', 'LOREN', '', 'Lorentziella Müll. Hal.', 'lorentziella moss', 'Gigaspermaceae');
INSERT INTO `Plant` VALUES ('51041', 'LYCOP6', '', 'Lycopodiella Holub', 'clubmoss', 'Lycopodiaceae');
INSERT INTO `Plant` VALUES ('51200', 'LYVI4', '', 'Lycopus virginicus L.', 'Virginia water horehound', 'Lamiaceae');
INSERT INTO `Plant` VALUES ('51208', 'LYELL', '', 'Lyellia R. Br.', 'lyellia moss', 'Polytrichaceae');
INSERT INTO `Plant` VALUES ('51230', 'LYGOD2', '', 'Lygodium Sw.', 'climbing fern', 'Lygodiaceae');
INSERT INTO `Plant` VALUES ('51719', 'MACRO7', '', 'Macromitrium Brid.', 'macromitrium moss', 'Orthotrichaceae');
INSERT INTO `Plant` VALUES ('51746', 'MACRO3', '', 'Macrothelypteris (H. Itô) Ching', 'macrothelypteris', 'Thelypteridaceae');
INSERT INTO `Plant` VALUES ('51762', 'MACRO8', '', 'Macrozamia Miq.', 'macrozamia', 'Zamiaceae');
INSERT INTO `Plant` VALUES ('52482', 'MASI2', '', 'Marcgravia sintenisii Urb.', 'shingleplant', 'Marcgraviaceae');
INSERT INTO `Plant` VALUES ('52549', 'MARSI', '', 'Marsilea L.', 'waterclover', 'Marsileaceae');
INSERT INTO `Plant` VALUES ('52736', 'MAFL8', '', 'Mauritia flexuosa L. f.', 'muriti', 'Arecaceae');
INSERT INTO `Plant` VALUES ('52752', 'MAYAC', '', 'Mayaca Aubl.', 'mayaca', 'Mayacaceae');
INSERT INTO `Plant` VALUES ('52755', 'MAYTE', '', 'Maytenus Molina', 'mayten', 'Celastraceae');
INSERT INTO `Shipment` VALUES ('1', 'Initial Shipments', '2009-10-08 17:03:40', '2009-10-09 00:00:00', '1', NULL);
