CREATE TABLE [GOST_CFG_SEAL_9833] ([Grid_Item_Number] INTEGER , [Grid_Item_Name] TEXT , [Grid_Item_Type] TEXT , [Controller] INTEGER , [Dimension] TEXT , [NoUnitConversion] INTEGER , [AltDataSource] TEXT , [ValueList] TEXT , [RelationField] TEXT , [OnFeatures] TEXT , [OffFeatures] TEXT , [OrderBy] TEXT , [ParameterID] TEXT );
INSERT INTO GOST_CFG_SEAL_9833 (Grid_Item_Number, Grid_Item_Name, Grid_Item_Type, Controller, Dimension, NoUnitConversion, AltDataSource, ValueList, RelationField, OnFeatures, OffFeatures, OrderBy, ParameterID)
VALUES(1, 'Диаметр сечения', 'STRING_COMBO', 1, '', 0, '', '{[D]}', '', '', '', '', ''),
(10, 'Диаметр', 'Hidden', 0, 'D@Ske', 0, '', '{[D]}', '', '', '', '', ''),
(20, 'Диаметр внутренний', 'STRING_COMBO', 0, '', 0, '+DATA_SEAL_9833_Ext', '{[D1]}', '[D=<Grid10>]', '', '', 'CDBL(D1)', ''),
(21, 'L', 'Hidden', 0, 'D1@Ske', 0, '+DATA_SEAL_9833_Ext', '{[D1]}', '[D=<Grid10>][D1=<Grid20>]', '', '', '', ''),
(40, 'Descr', 'Hidden', 0, '', 0, '+DATA_SEAL_9833_Ext', '{[Descr]}', '[D=<Grid10>][D1=<Grid20>]', '', '', '', ''),
(45, 'Группа точности', 'STRING_COMBO', 0, '', 0, '+DATA_SEAL_9833_Prec', '{[Prec]}', '[Style=All]', '', '', '', ''),
(46, 'Обозначение группы точности', 'Hidden', 0, '', 0, '+DATA_SEAL_9833_Prec', '{[Desc]}', '[Prec=<Grid45>]', '', '', '', ''),
(50, 'Группа резины (марка резины)', 'STRING_COMBO', 0, '', 0, '+DATA_MATERIAL', '{[Material]}', '[Category=6]', '', '', '', ''),
(51, 'Обозначение группы', 'Hidden', 0, '', 0, '+DATA_MATERIAL', '{[Material_Code]}', '[Material=<Grid50>]', '', '', '', ''),
(100, 'Joint Type', 'STRING_COMBO', 0, '', 0, '+DATA_SEAL_9833_SEALTYPESELECT', '{[SEAL_STATUS_TYPE]}', '[Descr=<Grid40>]', '', '', '', ''),
(105, '', 'Hidden', 0, 'SUPPRESSION', 0, '+DATA_SEAL_9833_SEALSTATUS', '{[SEAL_STATUS_CODE]}', '[SEAL_STATUS_TYPE=<Grid100>]', '[OnFeatures]', '[OffFeatures]', '', ''),
(107, '', 'Hidden', 0, '', 0, '+DATA_SEAL_9833_SEALSTATUS', '{[FILTER_MOV_JOINT]}', '[SEAL_STATUS_TYPE=<Grid100>]', '', '', '', ''),
(109, '', 'Hidden', 0, '', 0, '+DATA_SEAL_9833_SEALSTATUS', '{[FILTER_ANOTHER_UI]}', '[SEAL_STATUS_TYPE=<Grid100>]', '', '', '', ''),
(120, '', 'Hidden', 0, 'd@Cut_Shaft_Ske', 0, '+DATA_SEAL_9833_RADIALSEAT', '{[DIAMETER_SHAFT_d]}', '[Descr=<Grid40>]', '', '', '', ''),
(121, '', 'Hidden', 0, 'D1@Cut_Shaft_Ske', 0, '+DATA_SEAL_9833_RADIALSEAT', '{$IF$<grid107>=0:[D1_stnb]|1=1:[D1_mov]$ENDIF$}', '[Descr=<Grid40>]', '', '', '', ''),
(122, '', 'Hidden', 0, 'b@Cut_Shaft_Ske', 0, '+DATA_SEAL_9833_RADIALSEAT', '{$IF$<grid107>=0:[b_stnb]|1=1:[b_mov]$ENDIF$}', '[Descr=<Grid40>]', '', '', '', ''),
(130, '', 'Hidden', 0, 'D@Cut_Cilinder_Ske', 0, '+DATA_SEAL_9833_RADIALSEAT', '{[DIAMETER_CILINDER_D]}', '[Descr=<Grid40>]', '', '', '', ''),
(131, '', 'Hidden', 0, 'd3@Cut_Cilinder_Ske', 0, '+DATA_SEAL_9833_RADIALSEAT', '{$IF$<grid107>=0:[d3_stnb]|1=1:[d3_mov]$ENDIF$}', '[Descr=<Grid40>]', '', '', '', ''),
(132, '', 'Hidden', 0, 'b@Cut_Cilinder_Ske', 0, '+DATA_SEAL_9833_RADIALSEAT', '{$IF$<grid107>=0:[b_stnb]|1=1:[b_mov]$ENDIF$}', '[Descr=<Grid40>]', '', '', '', ''),
(140, '', 'Hidden', 0, 'D2@Cut_Front_Ske', 0, '+DATA_SEAL_9833_FRONTALSEAT', '{[D2]}', '[Descr=<Grid40>]', '', '', '', ''),
(141, '', 'Hidden', 0, 'd4@Cut_Front_Ske', 0, '+DATA_SEAL_9833_FRONTALSEAT', '{[d4]}', '[Descr=<Grid40>]', '', '', '', ''),
(142, '', 'Hidden', 0, 'Depth_h@Cut_Front_Ske', 0, '+DATA_SEAL_9833_FRONTALSEAT', '{[h]}', '[Descr=<Grid40>]', '', '', '', ''),
(150, '', 'Hidden', 0, 'M@Cut_ConeChamfer_Ske', 0, '+DATA_SEAL_9833_CONECHAMFERSEAT', '{[M]}', '[D=<Grid10>]', '', '', '', ''),
(160, '', 'Hidden', 0, 'd5@Cut_Thrd_Ske', 0, '+DATA_SEAL_9833_THRDSEAT', '{[d5]}', '[Descr=<Grid111>]', '', '', '', ''),
(161, '', 'Hidden', 0, 'd7@Cut_Thrd_Ske', 0, '+DATA_SEAL_9833_THRDSEAT', '{[d7]}', '[Descr=<Grid111>]', '', '', '', ''),
(165, '', 'Hidden', 0, '', 0, '+DATA_SEAL_9833_THRDSEAT', '{[Size]}', '[Descr=<Grid111>]', '', '', '', ''),
(802, '', 'Hidden', 0, '', 0, '', '{d=<grid120> мм.   D1=<grid121> мм.}', '', '', '', '', ''),
(804, '', 'Hidden', 0, '', 0, '', '{D=<grid130> мм.  d3=<grid131> мм.}', '', '', '', '', ''),
(806, '', 'Hidden', 0, '', 0, '', '{D2=<grid140> мм.  d4=<grid141> мм.}', '', '', '', '', ''),
(808, '', 'Hidden', 0, '', 0, '', '{d=<grid10> мм.  M=<grid150>x 45°}', '', '', '', '', ''),
(810, '', 'Hidden', 0, '', 0, '', '{<grid165>}', '', '', '', '', ''),
(900, '', 'Hidden', 0, '', 0, '', '{<Grid40><Grid46><Grid51>}', '', '', '', '', ''),
(998, 'Comment', 'Edit', 0, '', 0, '', '', '', '', '', '', ''),
(999, 'Обозначение', 'Disabled', 0, '', 0, '', '{Кольцо <Grid900> ГОСТ 18829-73<Grid105>}', '', '', '', '', ''),
(1000, 'Base_name', 'Hidden', 0, '', 0, '', '{Кольцо уплотнительное круглого сечения для гидравлических и пневматических устройств ГОСТ 18829-73}', '', '', '', '', ''),
(1001, 'Designation', 'Hidden', 0, '', 0, '', '{<Grid1000> - <Grid900>}', '', '', '', '', ''),
(106, NULL, 'Hidden', 0, NULL, 0, '+DATA_SEAL_9833_SEALSTATUS', '{[FILTER_THRD_JOINT]}', '[SEAL_STATUS_TYPE=<Grid100>]', NULL, NULL, NULL, NULL),
(111, NULL, 'Hidden', 0, NULL, 0, '', '{$IF$<grid109>=5:<grid40>|1=1:<grid110>$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(110, 'Bug Fix', 'Hidden', 0, NULL, 0, NULL, '{000-000-00}', NULL, NULL, NULL, NULL, NULL),
(820, NULL, 'Hidden', 0, NULL, 0, NULL, '{$IF$<grid109>=0:Без указания|1=1:$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(822, NULL, 'Hidden', 0, NULL, 0, NULL, '{$IF$<grid109>=1:<grid802>|1=1:$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(824, NULL, 'Hidden', 0, NULL, 0, NULL, '{$IF$<grid109>=2:<grid804>|1=1:$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(826, NULL, 'Hidden', 0, NULL, 0, NULL, '{$IF$<grid109>=3:<grid806>|1=1:$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(828, NULL, 'Hidden', 0, NULL, 0, NULL, '{$IF$<grid109>=4:<grid808>|1=1:$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(830, NULL, 'Hidden', 0, NULL, 0, NULL, '{$IF$<grid109>=5:<grid810>|1=1:$ENDIF$}', NULL, NULL, NULL, NULL, NULL),
(850, 'Seat Dimensions', 'Disabled', 0, NULL, 0, NULL, '{<grid820><grid822><grid824><grid826><grid828><grid830>}', NULL, NULL, NULL, NULL, NULL);
CREATE TABLE GOST_DATA_SEAL_9833_FRONTALSEAT (	Descr TEXT,	d4 TEXT,	D2 TEXT,	h TEXT,	enabled INTEGER,	"key" INTEGER);
INSERT INTO GOST_DATA_SEAL_9833_FRONTALSEAT (Descr, d4, D2, h, enabled, "key")
VALUES('003-005-14', '1', '5', '1', 1, 1),
('004-006-14', '2', '6', '1', 1, 2),
('005-007-14', '3', '7', '1', 1, 3),
('006-008-14', '4', '8', '1', 1, 4),
('008-010-14', '6', '10', '1', 1, 5),
('003-006-19', '2', '7', '1', 1, 6),
('003.5-006.5-19', '2', '7', '1', 1, 7),
('004-007-19', '2', '7', '1', 1, 8),
('004.5-007.5-19', '4', '9', '1', 1, 9),
('005-008-19', '4', '9', '1', 1, 10),
('005.5-008.5-19', '5', '10', '1', 1, 11),
('006-009-19', '5', '10', '1', 1, 12),
('006.5-009.5-19', '5', '10', '1', 1, 13),
('007-010-19', '5', '10', '1', 1, 14),
('007.5-010.5-19', '6', '11', '1', 1, 15),
('008-011-19', '6', '11', '1', 1, 16),
('008.5-011.5-19', '7', '12', '1', 1, 17),
('009-012-19', '7', '12', '1', 1, 18),
('009.5-012.5-19', '8', '13', '1', 1, 19),
('010-013-19', '8', '13', '1', 1, 20),
('010.5-013.5-19', '9', '14', '1', 1, 21),
('011-014-19', '9', '14', '1', 1, 22),
('011.5-014.5-19', '10', '15', '1', 1, 23),
('012-015-19', '10', '15', '1', 1, 24),
('012.5-015.5-19', '11', '16', '1', 1, 25),
('013-016-19', '11', '16', '1', 1, 26),
('013.5-016.5-19', '12', '17', '1', 1, 27),
('014-017-19', '12', '17', '1', 1, 28),
('014.5-017.5-19', '13', '18', '1', 1, 29),
('015-018-19', '13', '18', '1', 1, 30),
('015.5-018.5-19', '14', '19', '1', 1, 31),
('016-019-19', '14', '19', '1', 1, 32),
('016.5-019.5-19', '15', '20', '1', 1, 33),
('017-020-19', '15', '20', '1', 1, 34),
('018-021-19', '16', '21', '1', 1, 35),
('019-022-19', '17', '22', '1', 1, 36),
('020-023-19', '18', '23', '1', 1, 37),
('021-024-19', '19', '24', '1', 1, 38),
('022-025-19', '20', '25', '1', 1, 39),
('023-026-19', '21', '26', '1', 1, 40),
('024-027-19', '22', '27', '1', 1, 41),
('025-028-19', '23', '28', '1', 1, 42),
('026-029-19', '24', '29', '1', 1, 43),
('027-030-19', '25', '30', '1', 1, 44),
('028-031-19', '26', '31', '1', 1, 45),
('029-032-19', '27', '32', '1', 1, 46),
('030-033-19', '28', '33', '1', 1, 47),
('032-035-19', '29', '34', '1', 1, 48),
('033-036-19', '30', '35', '1', 1, 49),
('034-037-19', '31', '36', '1', 1, 50),
('035-038-19', '32', '37', '1', 1, 51),
('036-039-19', '33', '38', '1', 1, 52),
('037-040-19', '34', '39', '1', 1, 53),
('038-041-19', '35', '40', '1', 1, 54),
('039-042-19', '36', '41', '1', 1, 55),
('040-043-19', '37', '42', '1', 1, 56),
('042-045-19', '39', '44', '1', 1, 57),
('045-048-19', '42', '47', '1', 1, 58),
('047-050-19', '44', '49', '1', 1, 59),
('048-052-19', '45', '50', '1', 1, 60),
('050-053-19', '47', '52', '1', 1, 61),
('004-008-25', '2', '9', '2', 1, 62),
('004.5-008.5-25', '3', '10', '2', 1, 63),
('005-009-25', '3', '10', '2', 1, 64),
('005.5-009.5-25', '4', '11', '2', 1, 65),
('006-010-25', '4', '11', '2', 1, 66),
('006.5-010.5-25', '5', '12', '2', 1, 67),
('007-011-25', '5', '12', '2', 1, 68),
('007.5-011.5-25', '6', '13', '2', 1, 69),
('008-012-25', '6', '13', '2', 1, 70),
('008.5-012.5-25', '7', '14', '2', 1, 71),
('009-013-25', '7', '14', '2', 1, 72),
('009.5-013.5-25', '8', '15', '2', 1, 73),
('010-014-25', '8', '15', '2', 1, 74),
('010.5-014.5-25', '8', '15', '2', 1, 75),
('011-015-25', '8', '15', '2', 1, 76),
('011.5-015.5-25', '9', '16', '2', 1, 77),
('012-016-25', '9', '16', '2', 1, 78),
('012.5-016.5-25', '10', '17', '2', 1, 79),
('013-017-25', '10', '17', '2', 1, 80),
('013.5-017.5-25', '11', '18', '2', 1, 81),
('014-018-25', '11', '18', '2', 1, 82),
('014.5-018.5-25', '12', '19', '2', 1, 83),
('015-019-25', '12', '19', '2', 1, 84),
('015.5-019.5-25', '13', '20', '2', 1, 85),
('016-020-25', '13', '20', '2', 1, 86),
('017-021-25', '14', '21', '2', 1, 87),
('018-022-25', '15', '22', '2', 1, 88),
('019-023-25', '16', '23', '2', 1, 89),
('020-024-25', '17', '24', '2', 1, 90),
('021-025-25', '18', '25', '2', 1, 91),
('022-026-25', '19', '26', '2', 1, 92),
('023-027-25', '20', '27', '2', 1, 93),
('024-028-25', '21', '28', '2', 1, 94),
('025-029-25', '22', '29', '2', 1, 95),
('026-030-25', '23', '30', '2', 1, 96),
('027-031-25', '24', '31', '2', 1, 97),
('028-032-25', '25', '32', '2', 1, 98),
('029-033-25', '26', '33', '2', 1, 99),
('030-034-25', '27', '34', '2', 1, 100),
('032-036-25', '29', '36', '2', 1, 101),
('034-038-25', '31', '38', '2', 1, 102),
('036-040-25', '33', '40', '2', 1, 103),
('037-041-25', '34', '41', '2', 1, 104),
('038-042-25', '35', '42', '2', 1, 105),
('040-044-25', '37', '44', '2', 1, 106),
('041-045-25', '38', '45', '2', 1, 107),
('042-046-25', '39', '46', '2', 1, 108),
('043-047-25', '40', '47', '2', 1, 109),
('044-048-25', '41', '48', '2', 1, 110),
('045-049-25', '42', '49', '2', 1, 111),
('046-050-25', '43', '50', '2', 1, 112),
('048-052-25', '45', '52', '2', 1, 113),
('050-054-25', '47', '54', '2', 1, 114),
('051-055-25', '48', '55', '2', 1, 115),
('052-056-25', '49', '56', '2', 1, 116),
('054-058-25', '51', '58', '2', 1, 117),
('055-059-25', '52', '59', '2', 1, 118),
('056-060-25', '53', '60', '2', 1, 119),
('058-062-25', '55', '62', '2', 1, 120),
('060-064-25', '57', '64', '2', 1, 121),
('061-065-25', '58', '65', '2', 1, 122),
('062-066-25', '59', '66', '2', 1, 123),
('064-068-25', '60', '67', '2', 1, 124),
('065-070-25', '61', '68', '2', 1, 125),
('068-072-25', '64', '71', '2', 1, 126),
('070-075-25', '66', '73', '2', 1, 127),
('072-078-25', '68', '75', '2', 1, 128),
('075-080-25', '71', '78', '2', 1, 129),
('078-082-25', '74', '81', '2', 1, 130),
('080-085-25', '76', '83', '2', 1, 131),
('082-088-25', '78', '85', '2', 1, 132),
('085-090-25', '81', '88', '2', 1, 133),
('088-092-25', '84', '91', '2', 1, 134),
('090-095-25', '86', '93', '2', 1, 135),
('092-098-25', '88', '95', '2', 1, 136),
('095-100-25', '91', '98', '2', 1, 137),
('098-102-25', '93', '100', '2', 1, 138),
('100-105-25', '95', '102', '2', 1, 139),
('102-108-25', '97', '104', '2', 1, 140),
('105-110-25', '100', '107', '2', 1, 141),
('108-112-25', '103', '110', '2', 1, 142),
('110-115-25', '105', '112', '2', 1, 143),
('112-118-25', '107', '114', '2', 1, 144),
('115-120-25', '110', '117', '2', 1, 145),
('118-122-25', '113', '120', '2', 1, 146),
('120-125-25', '115', '122', '2', 1, 147),
('122-128-25', '117', '124', '2', 1, 148),
('125-130-25', '120', '127', '2', 1, 149),
('130-135-25', '125', '132', '2', 1, 150),
('135-140-25', '130', '137', '2', 1, 151),
('140-145-25', '135', '142', '2', 1, 152),
('145-150-25', '140', '147', '2', 1, 153),
('150-155-25', '145', '152', '2', 1, 154),
('010-015-30', '7', '16', '2', 1, 155),
('011-016-30', '8', '17', '2', 1, 156),
('012-017-30', '9', '18', '2', 1, 157),
('013-018-30', '10', '19', '2', 1, 158),
('014-019-30', '11', '20', '2', 1, 159),
('015-020-30', '12', '21', '2', 1, 160),
('016-021-30', '13', '22', '2', 1, 161),
('017-022-30', '14', '23', '2', 1, 162),
('018-023-30', '15', '24', '2', 1, 163),
('019-024-30', '15', '24', '2', 1, 164),
('020-025-30', '16', '25', '2', 1, 165),
('021-026-30', '18', '27', '2', 1, 166),
('022-027-30', '18', '27', '2', 1, 167),
('023-028-30', '19', '28', '2', 1, 168),
('024-029-30', '20', '29', '2', 1, 169),
('025-030-30', '21', '30', '2', 1, 170),
('026-031-30', '23', '32', '2', 1, 171),
('027-032-30', '23', '32', '2', 1, 172),
('028-033-30', '24', '33', '2', 1, 173),
('029-034-30', '26', '35', '2', 1, 174),
('030-035-30', '26', '35', '2', 1, 175),
('032-037-30', '28', '37', '2', 1, 176),
('033-038-30', '28', '37', '2', 1, 177),
('034-039-30', '30', '39', '2', 1, 178),
('035-040-30', '30', '39', '2', 1, 179),
('036-041-30', '31', '40', '2', 1, 180),
('038-042-30', '32', '41', '2', 1, 181),
('040-045-30', '35', '44', '2', 1, 182),
('042-048-30', '37', '46', '2', 1, 183),
('045-050-30', '40', '49', '2', 1, 184),
('048-052-30', '43', '52', '2', 1, 185),
('050-055-30', '45', '54', '2', 1, 186),
('051-056-30', '46', '55', '2', 1, 187),
('052-058-30', '50', '59', '2', 1, 188),
('055-060-30', '50', '59', '2', 1, 189),
('056-061-30', '51', '60', '2', 1, 190),
('058-063-30', '54', '63', '2', 1, 191),
('060-065-30', '56', '65', '2', 1, 192),
('063-068-30', '59', '68', '2', 1, 193),
('065-070-30', '60', '69', '2', 1, 194),
('066-071-30', '61', '70', '2', 1, 195),
('070-075-30', '65', '74', '2', 1, 196),
('071-076-30', '66', '75', '2', 1, 197),
('075-080-30', '70', '79', '2', 1, 198),
('080-085-30', '75', '84', '2', 1, 199),
('082-088-30', '78', '87', '2', 1, 200),
('085-090-30', '80', '89', '2', 1, 201),
('088-092-30', '83', '92', '2', 1, 202),
('090-095-30', '85', '94', '2', 1, 203),
('092-098-30', '89', '98', '2', 1, 204),
('095-100-30', '89', '98', '2', 1, 205),
('098-102-30', '92', '101', '2', 1, 206),
('100-105-30', '94', '103', '2', 1, 207),
('102-108-30', '97', '106', '2', 1, 208),
('105-110-30', '99', '108', '2', 1, 209),
('108-112-30', '104', '113', '2', 1, 210),
('110-115-30', '104', '113', '2', 1, 211),
('112-118-30', '106', '115', '2', 1, 212),
('115-120-30', '109', '118', '2', 1, 213),
('120-125-30', '114', '123', '2', 1, 214),
('125-130-30', '119', '128', '2', 1, 215),
('130-135-30', '124', '133', '2', 1, 216),
('135-140-30', '129', '138', '2', 1, 217),
('140-145-30', '134', '143', '2', 1, 218),
('145-150-30', '139', '148', '2', 1, 219),
('150-155-30', '144', '153', '2', 1, 220),
('014-020-36', '11', '21', '3', 1, 221),
('015-021-36', '12', '22', '3', 1, 222),
('016-022-36', '13', '23', '3', 1, 223),
('017-023-36', '14', '24', '3', 1, 224),
('018-024-36', '15', '25', '3', 1, 225),
('019-025-36', '16', '26', '3', 1, 226),
('020-026-36', '17', '27', '3', 1, 227),
('021-027-36', '18', '28', '3', 1, 228),
('022-028-36', '19', '29', '3', 1, 229),
('023-029-36', '20', '30', '3', 1, 230),
('024-030-36', '21', '31', '3', 1, 231),
('025-031-36', '22', '32', '3', 1, 232),
('026-032-36', '23', '33', '3', 1, 233),
('027-033-36', '24', '34', '3', 1, 234),
('028-034-36', '25', '35', '3', 1, 235),
('029-035-36', '26', '36', '3', 1, 236),
('030-036-36', '27', '37', '3', 1, 237),
('032-038-36', '28', '38', '3', 1, 238),
('034-040-36', '30', '40', '3', 1, 239),
('035-041-36', '31', '41', '3', 1, 240),
('036-042-36', '32', '42', '3', 1, 241),
('038-044-36', '34', '44', '3', 1, 242),
('039-045-36', '35', '45', '3', 1, 243),
('040-046-36', '36', '46', '3', 1, 244),
('042-048-36', '38', '48', '3', 1, 245),
('044-050-36', '40', '50', '3', 1, 246),
('045-051-36', '41', '51', '3', 1, 247),
('046-052-36', '42', '52', '3', 1, 248),
('048-054-36', '44', '54', '3', 1, 249),
('049-055-36', '45', '55', '3', 1, 250),
('050-056-36', '46', '56', '3', 1, 251),
('052-058-36', '48', '58', '3', 1, 252),
('054-060-36', '50', '60', '3', 1, 253),
('055-061-36', '51', '61', '3', 1, 254),
('056-062-36', '52', '62', '3', 1, 255),
('057-063-36', '54', '64', '3', 1, 256),
('058-064-36', '54', '64', '3', 1, 257),
('059-065-36', '55', '65', '3', 1, 258),
('060-066-36', '56', '66', '3', 1, 259),
('062-068-36', '58', '68', '3', 1, 260),
('063-069-36', '58', '68', '3', 1, 261),
('064-070-36', '59', '69', '3', 1, 262),
('065-071-36', '60', '70', '3', 1, 263),
('066-072-36', '61', '71', '3', 1, 264),
('068-074-36', '63', '73', '3', 1, 265),
('069-075-36', '64', '74', '3', 1, 266),
('070-076-36', '65', '75', '3', 1, 267),
('071-077-36', '67', '77', '3', 1, 268),
('072-078-36', '67', '77', '3', 1, 269),
('074-080-36', '69', '79', '3', 1, 270),
('075-081-36', '70', '80', '3', 1, 271),
('076-082-36', '71', '81', '3', 1, 272),
('078-084-36', '73', '83', '3', 1, 273),
('079-085-36', '74', '84', '3', 1, 274),
('080-086-36', '75', '85', '3', 1, 275),
('082-088-36', '77', '87', '3', 1, 276),
('084-090-36', '79', '89', '3', 1, 277),
('085-091-36', '80', '90', '3', 1, 278),
('086-092-36', '81', '91', '3', 1, 279),
('088-094-36', '83', '93', '3', 1, 280),
('089-095-36', '84', '94', '3', 1, 281),
('090-096-36', '85', '95', '3', 1, 282),
('092-098-36', '87', '97', '3', 1, 283),
('094-100-36', '88', '98', '3', 1, 284),
('095-101-36', '89', '99', '3', 1, 285),
('096-102-36', '90', '100', '3', 1, 286),
('098-104-36', '92', '102', '3', 1, 287),
('099-105-36', '93', '103', '3', 1, 288),
('100-106-36', '94', '104', '3', 1, 289),
('102-108-36', '96', '106', '3', 1, 290),
('104-110-36', '98', '108', '3', 1, 291),
('105-111-36', '99', '109', '3', 1, 292),
('106-112-36', '100', '110', '3', 1, 293),
('108-114-36', '101', '111', '3', 1, 294),
('109-115-36', '103', '113', '3', 1, 295),
('110-116-36', '104', '114', '3', 1, 296),
('112-118-36', '106', '116', '3', 1, 297),
('114-120-36', '108', '118', '3', 1, 298),
('115-121-36', '109', '119', '3', 1, 299),
('118-124-36', '112', '122', '3', 1, 300),
('120-126-36', '114', '124', '3', 1, 301),
('125-130-36', '118', '128', '3', 1, 302),
('130-135-36', '123', '133', '3', 1, 303),
('135-140-36', '128', '138', '3', 1, 304),
('140-145-36', '133', '143', '3', 1, 305),
('145-150-36', '138', '148', '3', 1, 306),
('150-155-36', '143', '153', '3', 1, 307),
('155-160-36', '147', '157', '3', 1, 308),
('160-165-36', '152', '162', '3', 1, 309),
('165-170-36', '157', '167', '3', 1, 310),
('170-175-36', '162', '172', '3', 1, 311),
('175-180-36', '167', '177', '3', 1, 312),
('180-185-36', '172', '182', '3', 1, 313),
('185-190-36', '177', '187', '3', 1, 314),
('190-195-36', '182', '192', '3', 1, 315),
('195-200-36', '188', '198', '3', 1, 316),
('200-205-36', '192', '202', '3', 1, 317),
('205-210-36', '197', '207', '3', 1, 318),
('210-215-36', '202', '212', '3', 1, 319),
('215-220-36', '207', '217', '3', 1, 320),
('220-225-36', '212', '222', '3', 1, 321),
('225-230-36', '216', '226', '3', 1, 322),
('230-235-36', '221', '231', '3', 1, 323),
('235-240-36', '226', '236', '3', 1, 324),
('240-245-36', '231', '241', '3', 1, 325),
('245-250-36', '236', '246', '3', 1, 326),
('250-255-36', '242', '252', '3', 1, 327),
('028-036-46', '25', '37', '3', 1, 328),
('030-038-46', '27', '39', '3', 1, 329),
('032-040-46', '28', '40', '3', 1, 330),
('034-042-46', '30', '42', '3', 1, 331),
('035-043-46', '31', '43', '3', 1, 332),
('036-044-46', '32', '44', '3', 1, 333),
('037-045-46', '33', '45', '3', 1, 334),
('038-046-46', '34', '46', '3', 1, 335),
('040-048-46', '36', '48', '3', 1, 336),
('042-050-46', '38', '50', '3', 1, 337),
('044-052-46', '40', '52', '3', 1, 338),
('045-053-46', '41', '53', '3', 1, 339),
('047-055-46', '43', '55', '3', 1, 340),
('048-056-46', '44', '56', '3', 1, 341),
('050-058-46', '46', '58', '3', 1, 342),
('052-060-46', '48', '60', '3', 1, 343),
('054-062-46', '50', '62', '3', 1, 344),
('055-063-46', '51', '63', '3', 1, 345),
('057-065-46', '53', '65', '3', 1, 346),
('058-066-46', '54', '66', '3', 1, 347),
('060-068-46', '56', '68', '3', 1, 348),
('062-070-46', '58', '70', '3', 1, 349),
('063-071-46', '59', '71', '3', 1, 350),
('064-082-46', '59', '71', '3', 1, 351),
('065-073-46', '60', '72', '3', 1, 352),
('067-075-46', '62', '74', '3', 1, 353),
('068-076-46', '63', '75', '3', 1, 354),
('070-078-46', '65', '77', '3', 1, 355),
('072-080-46', '67', '79', '3', 1, 356),
('074-082-46', '69', '81', '3', 1, 357),
('075-083-46', '70', '82', '3', 1, 358),
('077-085-46', '72', '84', '3', 1, 359),
('078-086-46', '73', '85', '3', 1, 360),
('080-088-46', '75', '87', '3', 1, 361),
('082-090-46', '77', '89', '3', 1, 362),
('085-092-46', '79', '91', '3', 1, 363),
('088-095-46', '82', '94', '3', 1, 364),
('090-098-46', '85', '97', '3', 1, 365),
('092-100-46', '87', '99', '3', 1, 366),
('095-102-46', '88', '100', '3', 1, 367),
('098-105-46', '91', '103', '3', 1, 368),
('100-108-46', '94', '106', '3', 1, 369),
('102-110-46', '96', '108', '3', 1, 370),
('105-112-46', '98', '110', '3', 1, 371),
('108-115-46', '101', '113', '3', 1, 372),
('110-118-46', '104', '116', '3', 1, 373),
('112-120-46', '106', '118', '3', 1, 374),
('115-122-46', '108', '120', '3', 1, 375),
('118-125-46', '111', '123', '3', 1, 376),
('120-128-46', '114', '126', '3', 1, 377),
('122-130-46', '116', '128', '3', 1, 378),
('125-135-46', '119', '131', '3', 1, 379),
('130-140-46', '124', '136', '3', 1, 380),
('135-145-46', '129', '141', '3', 1, 381),
('140-150-46', '134', '146', '3', 1, 382),
('145-155-46', '139', '151', '3', 1, 383),
('150-160-46', '144', '156', '3', 1, 384),
('155-165-46', '148', '160', '3', 1, 385),
('160-170-46', '153', '165', '3', 1, 386),
('165-175-46', '158', '170', '3', 1, 387),
('170-180-46', '163', '175', '3', 1, 388),
('175-185-46', '168', '180', '3', 1, 389),
('180-190-46', '173', '185', '3', 1, 390),
('185-195-46', '175', '187', '3', 1, 391),
('190-200-46', '183', '195', '3', 1, 392),
('195-205-46', '188', '200', '3', 1, 393),
('200-210-46', '193', '205', '3', 1, 394),
('205-215-46', '198', '210', '3', 1, 395),
('210-220-46', '202', '215', '3', 1, 396),
('215-225-46', '208', '220', '3', 1, 397),
('220-230-46', '212', '224', '3', 1, 398),
('225-235-46', '217', '229', '3', 1, 399),
('230-240-46', '222', '234', '3', 1, 400),
('235-245-46', '227', '239', '3', 1, 401),
('240-250-46', '233', '245', '3', 1, 402),
('245-255-46', '237', '249', '3', 1, 403),
('250-260-46', '241', '253', '3', 1, 404),
('050-060-58', '45', '60', '4', 1, 405),
('053-063-58', '48', '63', '4', 1, 406),
('055-065-58', '50', '65', '4', 1, 407),
('056-066-58', '51', '66', '4', 1, 408),
('060-070-58', '55', '70', '4', 1, 409),
('061-071-58', '57', '71', '4', 1, 410),
('063-073-58', '57', '72', '4', 1, 411),
('065-075-58', '60', '75', '4', 1, 412),
('070-080-58', '65', '80', '4', 1, 413),
('071-081-58', '66', '80', '4', 1, 414),
('075-085-58', '70', '85', '4', 1, 415),
('078-088-58', '73', '88', '4', 1, 416),
('080-090-58', '75', '90', '4', 1, 417),
('082-092-58', '76', '92', '4', 1, 418),
('085-095-58', '80', '95', '4', 1, 419),
('088-098-58', '82', '98', '4', 1, 420),
('090-100-58', '85', '100', '4', 1, 421),
('092-102-58', '86', '102', '4', 1, 422),
('095-105-58', '89', '104', '4', 1, 423),
('098-108-58', '92', '108', '4', 1, 424),
('100-110-58', '94', '109', '4', 1, 425),
('102-112-58', '96', '112', '4', 1, 426),
('105-115-58', '99', '114', '4', 1, 427),
('108-118-58', '102', '118', '4', 1, 428),
('110-120-58', '104', '119', '4', 1, 429),
('112-122-58', '106', '122', '4', 1, 430),
('115-125-58', '109', '124', '4', 1, 431),
('118-128-58', '112', '128', '4', 1, 432),
('120-130-58', '114', '129', '4', 1, 433),
('125-135-58', '118', '133', '4', 1, 434),
('130-140-58', '123', '138', '4', 1, 435),
('135-145-58', '128', '143', '4', 1, 436),
('140-150-58', '133', '148', '4', 1, 437),
('145-155-58', '138', '153', '4', 1, 438),
('150-160-58', '143', '158', '4', 1, 439),
('155-165-58', '148', '163', '4', 1, 440),
('160-170-58', '153', '168', '4', 1, 441),
('165-175-58', '158', '173', '4', 1, 442),
('170-180-58', '163', '178', '4', 1, 443),
('175-185-58', '168', '183', '4', 1, 444),
('180-190-58', '173', '188', '4', 1, 445),
('185-195-58', '178', '193', '4', 1, 446),
('190-200-58', '183', '198', '4', 1, 447),
('195-205-58', '187', '202', '4', 1, 448),
('200-210-58', '192', '207', '4', 1, 449),
('205-215-58', '197', '212', '4', 1, 450),
('210-220-58', '202', '217', '4', 1, 451),
('215-225-58', '207', '222', '4', 1, 452),
('220-230-58', '211', '226', '4', 1, 453),
('225-235-58', '216', '231', '4', 1, 454),
('230-240-58', '221', '236', '4', 1, 455),
('235-245-58', '226', '241', '4', 1, 456),
('240-250-58', '231', '246', '4', 1, 457),
('245-255-58', '236', '251', '4', 1, 458),
('250-260-58', '241', '256', '4', 1, 459),
('255-265-58', '246', '261', '4', 1, 460),
('260-270-58', '251', '266', '4', 1, 461),
('265-275-58', '256', '271', '4', 1, 462),
('270-280-58', '261', '276', '4', 1, 463),
('275-285-58', '266', '281', '4', 1, 464),
('280-290-58', '270', '285', '4', 1, 465),
('285-295-58', '275', '290', '4', 1, 466),
('290-300-58', '280', '295', '4', 1, 467),
('295-305-58', '285', '300', '4', 1, 468),
('300-310-58', '290', '305', '4', 1, 469),
('305-315-58', '295', '310', '4', 1, 470),
('310-320-58', '300', '315', '4', 1, 471),
('315-325-58', '305', '320', '4', 1, 472),
('320-330-58', '310', '325', '4', 1, 473),
('325-335-58', '315', '330', '4', 1, 474),
('330-340-58', '320', '335', '4', 1, 475),
('335-345-58', '325', '340', '4', 1, 476),
('340-350-58', '329', '344', '4', 1, 477),
('345-355-58', '334', '349', '4', 1, 478),
('350-360-58', '339', '354', '4', 1, 479),
('355-365-58', '344', '359', '4', 1, 480),
('360-370-58', '349', '364', '4', 1, 481),
('365-375-58', '354', '369', '4', 1, 482),
('370-380-58', '359', '374', '4', 1, 483),
('375-385-58', '364', '379', '4', 1, 484),
('380-390-58', '369', '384', '4', 1, 485),
('390-400-58', '379', '394', '4', 1, 486),
('400-410-58', '389', '404', '4', 1, 487),
('420-430-58', '409', '424', '4', 1, 488),
('430-440-58', '419', '434', '4', 1, 489),
('440-450-58', '429', '444', '4', 1, 490),
('450-460-58', '439', '454', '4', 1, 491),
('460-470-58', '449', '464', '4', 1, 492),
('480-490-58', '469', '484', '4', 1, 493),
('500-510-58', '489', '504', '4', 1, 494),
('082-095-75', '75', '94', '6', 1, 495),
('090-102-75', '83', '102', '6', 1, 496),
('092-105-75', '85', '104', '6', 1, 497),
('095-108-75', '87', '106', '6', 1, 498),
('098-110-75', '90', '109', '6', 1, 499),
('100-112-75', '92', '111', '6', 1, 500),
('102-115-75', '95', '114', '6', 1, 501),
('105-118-75', '98', '117', '6', 1, 502),
('108-120-75', '100', '119', '6', 1, 503),
('110-122-75', '102', '121', '6', 1, 504),
('112-125-75', '105', '124', '6', 1, 505),
('115-128-75', '108', '127', '6', 1, 506),
('118-130-75', '109', '129', '6', 1, 507),
('120-132-75', '112', '131', '6', 1, 508),
('122-135-75', '115', '134', '6', 1, 509),
('125-138-75', '118', '137', '6', 1, 510),
('128-140-75', '120', '139', '6', 1, 511),
('130-142-75', '122', '141', '6', 1, 512),
('132-145-75', '123', '143', '6', 1, 513),
('135-150-85', '125', '146', '7', 1, 514),
('140-155-85', '130', '151', '7', 1, 515),
('145-160-85', '135', '156', '7', 1, 516),
('150-165-85', '140', '161', '7', 1, 517),
('155-170-85', '145', '166', '7', 1, 518),
('160-175-85', '150', '171', '7', 1, 519),
('165-180-85', '155', '176', '7', 1, 520),
('170-185-85', '160', '181', '7', 1, 521),
('175-190-85', '165', '186', '7', 1, 522),
('180-195-85', '170', '191', '7', 1, 523),
('185-200-85', '175', '196', '7', 1, 524),
('190-205-85', '180', '201', '7', 1, 525),
('195-210-85', '187', '208', '7', 1, 526),
('200-215-85', '192', '213', '7', 1, 527),
('205-220-85', '197', '218', '7', 1, 528),
('210-225-85', '202', '223', '7', 1, 529),
('215-230-85', '207', '228', '7', 1, 530),
('220-235-85', '212', '233', '7', 1, 531),
('225-240-85', '216', '237', '7', 1, 532),
('230-245-85', '221', '242', '7', 1, 533),
('235-250-85', '226', '247', '7', 1, 534),
('240-255-85', '230', '251', '7', 1, 535),
('245-260-85', '236', '257', '7', 1, 536),
('250-265-85', '241', '262', '7', 1, 537),
('255-270-85', '246', '267', '7', 1, 538),
('260-275-85', '251', '272', '7', 1, 539),
('265-280-85', '256', '277', '7', 1, 540),
('280-295-85', '270', '291', '7', 1, 541),
('285-300-85', '275', '296', '7', 1, 542),
('300-315-85', '290', '311', '7', 1, 543),
('305-320-85', '295', '316', '7', 1, 544),
('320-335-85', '310', '331', '7', 1, 545),
('325-340-85', '315', '336', '7', 1, 546),
('340-355-85', '329', '350', '7', 1, 547),
('345-360-85', '334', '355', '7', 1, 548),
('360-375-85', '349', '370', '7', 1, 549),
('365-380-85', '354', '375', '7', 1, 550),
('380-395-85', '369', '390', '7', 1, 551),
('385-400-85', '376', '397', '7', 1, 552),
('390-405-85', '379', '400', '7', 1, 553),
('400-415-85', '389', '410', '7', 1, 554),
('420-435-85', '409', '430', '7', 1, 555),
('440-445-85', '429', '450', '7', 1, 556),
('450-465-85', '439', '460', '7', 1, 557),
('460-475-85', '449', '470', '7', 1, 558),
('480-495-85', '469', '490', '7', 1, 559),
('500-515-85', '489', '510', '7', 1, 560);