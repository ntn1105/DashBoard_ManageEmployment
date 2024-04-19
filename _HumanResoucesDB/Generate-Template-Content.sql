﻿-- Ensure queried the 'Generate.sql' before.
-- This is origin data for testing
-- Create and modify by Trinh Quy Thien 
-- Last modified [13/03/2024 01:50]

USE [HumanResourceDB]

DELETE FROM [dbo].[EMPLOYMENT_WORKING_TIME]
DELETE FROM [dbo].[JOB_HISTORY]
DELETE FROM [dbo].[EMPLOYMENT]
DELETE FROM [dbo].[PERSONAL]
DELETE FROM [dbo].[BENEFIT_PLANS]

INSERT INTO [dbo].[BENEFIT_PLANS] ([BENEFIT_PLANS_ID], [PLAN_NAME], [DEDUCTABLE], [PERCENTAGE_COPAY])
VALUES 
(1,N'Health',600000,2),
(2,N'Life',443300,3);

INSERT INTO [dbo].[PERSONAL] ([PERSONAL_ID],
	[CURRENT_FIRST_NAME],
	[CURRENT_LAST_NAME],
	[CURRENT_MIDDLE_NAME],
	[BIRTH_DATE],
	[SOCIAL_SECURITY_NUMBER],
	[DRIVERS_LICENSE],
	[CURRENT_ADDRESS_1],
	[CURRENT_ADDRESS_2],
	[CURRENT_CITY],
	[CURRENT_COUNTRY],
	[CURRENT_ZIP],
	[CURRENT_GENDER],
	[CURRENT_PHONE_NUMBER],
	[CURRENT_PERSONAL_EMAIL],
	[CURRENT_MARITAL_STATUS],
	[ETHNICITY],
	[SHAREHOLDER_STATUS],
	[BENEFIT_PLAN_ID])
VALUES 
(1,N'Bách',N'Trần',N'Duy',N'2003-01-30',N'27211224589',542332060681,N'Vĩnh Trung, Thanh Khê',N'Bình Thuận',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'085725332362',N'DSfsZva@domain.com',N'Divorced',N'Kinh',0,2),
(2,N'Ái',N'Trần',N'Khả',N'2003-09-30',N'27203727354',282956716034,N'Hòa Thuận Tây, Hải Châu',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'035786046931',N'WFp0yeLmRca@domain.com',N'Divorced',N'Kinh',1,1),
(3,N'Chi',N'Nguyễn',N'Linh',N'2001-04-20',N'27203727374',809989600271,N'Hòa Thuận Tây, Hải Châu',N'Đăk Lăk',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'093180558919',N'hGxymwha@domain.com',N'Widowed',N'Kinh',1,1),
(4,N'Hải',N'Đặng',N'Ngọc',N'2003-04-12',N'27211226501',893510829079,N'Hòa Khánh Bắc, Liên Chiểu',NULL,N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'088432504718',N'Aj5MYaJ238a@domain.com',N'Divorced',N'Kinh',0,1),
(5,N'Thảo',N'Nguyễn',N'Nhật',N'2003-04-05',N'27211239932',537876583508,N'Hòa Bắc, Hòa Vang',N'Gia Lai',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'043053623865',N'OqN227W5V0a@domain.com',N'Divorced',N'Kinh',0,1),
(6,N'Thảo',N'Lê',N'Phương',N'2003-06-03',N'27214753567',551128581202,N'Hòa Bắc, Hòa Vang',N'Nghệ An',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'084282774735',N'EstEkjVgaa@domain.com',N'Widowed',N'Kinh',0,2),
(7,N'Thiện',N'Trịnh',N'Quý',N'2003-12-16',N'27211235459',884738892378,N'Hải Châu I, Hải Châu',N'Đăk Nông',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'025397114263',N'ypDRk6tuQa@domain.com',N'Divorced',N'Kinh',1,1),
(8,N'Danh',N'Lê',N'Tấn',N'2003-08-05',N'27211122274',647622938641,N'Hòa Phát, Cẩm Lệ',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'066933767546',N'okh5qHD35a@domain.com',N'Single',N'Kinh',0,2),
(9,N'Nhân',N'Nguyễn',N'Thành',N'2003-05-11',N'27211200260',845162606111,N'Hòa Khê, Thanh Khê',N'Thừa Thiên Huế',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'092537599827',N'lSicS2Oa@domain.com',N'Married',N'Kinh',1,1),
(10,N'Nhi',N'Ngô',N'Thảo',N'2003-11-09',N'27205126897',657293159481,N'Hòa Phát, Cẩm Lệ',N'Quảng Bình',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'027843870758',N'TPO5qra@domain.com',N'Married',N'Kinh',0,2),
(11,N'Tú',N'Đinh',N'Thị Cẩm',N'2003-03-29',N'27204801106',693843993710,N'Hòa Cường Bắc, Hải Châu',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'091055003256',N'BPmH8dJa@domain.com',N'Widowed',N'Kinh',0,1),
(12,N'Quỳnh',N'Trần',N'Thị Diễm',N'2003-08-22',N'27204729844',594666643007,N'Thạnh Thang, Hải Châu',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'014842645903',N'qfpJyQa@domain.com',N'Divorced',N'Kinh',0,1),
(13,N'Thi',N'Trương',N'Thị Mai',N'2003-11-06',N'27201202169',392415892567,N'Hòa Liên, Hòa Vang',N'Gia Lai',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'060211331344',N'dxywGK4Nla@domain.com',N'Married',N'Kinh',0,2),
(14,N'Duyên',N'Trần',N'Thị Mỹ',N'2003-01-23',N'27201235390',752189481495,N'Nam Dương, Hải Châu',N'Đăk Lăk',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'077213055054',N'U55R3ja@domain.com',N'Widowed',N'Kinh',1,1),
(15,N'Yên',N'Võ',N'Thị Như',N'2003-04-22',N'27201201584',551128211202,N'Hòa An, Cẩm Lệ',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'091066003256',N'dxywDACNla@domain.com',N'Married',N'Kinh',0,1),
(16,N'Huệ',N'Lê',N'Thị Vân',N'2003-07-07',N'27202143711',953441760285,N'Thạnh Thang, Hải Châu',N'Quảng Trị',N'Đà Nẵng',N'Việt Nam',55000,N'Female',N'060402374513',N'prRnDiKLLa@domain.com',N'Married',N'Kinh',0,2),
(17,N'Thịnh',N'Lê',N'Văn Phước',N'1999-05-21',N'27211242274',804889601117,N'Hòa An, Cẩm Lệ',NULL,N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'097559524104',N'a7sTriA8a@domain.com',N'Divorced',N'Kinh',1,2),
(18,N'Nhớ',N'Đặng',N'Văn',N'2003-03-10',N'27211201219',775331655740,N'Hòa Nhơn, Hòa Vang',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'067008909238',N'4NfZblmwYa@domain.com',N'Divorced',N'Kinh',1,1),
(19,N'Trường',N'Lưu',N'Văn',N'2003-03-10',N'27211240491',874742424685,N'Hòa Thuận Tây, Hải Châu',N'Đăk Nông',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'077533967266',N'rYH7rJmvla@domain.com',N'Single',N'Kinh',0,2),
(20,N'Thịnh',N'Trần',N'Viết',N'2003-06-08',N'27211245057',849615476330,N'Hòa Cường Bắc, Hải Châu',N'Quảng Nam',N'Đà Nẵng',N'Việt Nam',55000,N'Male',N'051252417005',N'12MB7Vo4a@domain.com',N'Widowed',N'Kinh',1,1);

INSERT INTO [dbo].[EMPLOYMENT] ([EMPLOYMENT_ID], 
	[EMPLOYMENT_CODE],
	[EMPLOYMENT_STATUS],
	[HIRE_DATE_FOR_WORKING],
	[WORKERS_COMP_CODE],
	[TERMINATION_DATE],
	[REHIRE_DATE_FOR_WORKING],
	[LAST_REVIEW_DATE],
	[NUMBER_DAYS_REQUIREMENT_OF_WORKING_PER_MONTH],
	[PERSONAL_ID])
VALUES
(1,N'Gc863zrkxXsvpo1W',N'Full time',N'2023-03-08',N'FD',NULL,NULL,N'2023-03-08',22,1),
(2,N'keDzKyIHZ7wCspN5',N'Full time',N'2023-03-08',N'CFD',NULL,NULL,N'2023-03-08',22,2),
(3,N'uBdzCEUGhODNoHJe',N'Terminated',N'2023-04-20',N'CFD',N'2024-03-31',NULL,N'2023-04-20',22,3),
(4,N'LjaMZdQq47GIO0o5',N'Terminated',N'2023-04-20',N'CFD',N'2023-09-19',NULL,N'2023-04-20',22,4),
(5,N'H1GspxOentPmYLK7',N'Full time',N'2023-04-20',N'SW',NULL,NULL,N'2023-04-20',22,5),
(6,N'aPvmcqfUQiMdpkgl',N'Full time',N'2023-04-20',N'SW',NULL,NULL,N'2023-04-20',22,6),
(7,N'mkCyUcTVXRN9S3q5',N'Full time',N'2023-10-05',N'SW',NULL,NULL,N'2023-10-05',22,7),
(8,N'r5RhxqKTwogn3mXD',N'Full time',N'2023-10-05',N'MW',NULL,NULL,N'2023-10-05',22,8),
(9,N'0rNeZvaG1kJyKw5I',N'Full time',N'2023-10-05',N'MW',NULL,NULL,N'2023-10-05',22,9),
(10,N'8Is0OQYE1JdHriw2',N'Full time',N'2023-10-05',N'MW',NULL,NULL,N'2023-10-05',22,10),
(11,N'PVhWDQCHvswmITc3',N'Full time',N'2023-10-05',N'MW',N'2023-12-05',N'2024-01-01',N'2024-01-01',22,11),
(12,N'TqC4v2UxJ8oFAl0M',N'Terminated',N'2023-10-05',N'MW',N'2023-02-05',NULL,N'2023-10-05',22,12),
(13,N'5Pxu2IVwLnEdvBQS',N'Full time',N'2023-12-01',N'SW',NULL,NULL,N'2023-12-01',22,13),
(14,N'AHbxTpq6Xwuke8FW',N'Full time',N'2023-12-01',N'MW',NULL,NULL,N'2023-12-01',22,14),
(15,N'NoYP5Z2QWBTMbrjl',N'Full time',N'2023-12-01',N'JW',NULL,NULL,N'2023-12-01',22,15),
(16,N'Xst5MFyBxAHRK4Zv',N'Full time',N'2023-12-01',N'JW',NULL,NULL,N'2023-12-01',22,16),
(17,N'QJXykxVYmahScv6i',N'Full time',N'2023-12-01',N'JW',NULL,NULL,N'2023-12-01',22,17),
(18,N'm0tijhIrTbofnMHV',N'Part time',N'2024-03-01',N'FW',NULL,NULL,N'2024-03-01',12,18),
(19,N'JF0v4OLQa9V6lKnM',N'Part time',N'2024-03-01',N'FW',NULL,NULL,N'2024-03-01',12,19),
(20,N'I4jwZSOT8MNiyJCF',N'Part time',N'2024-03-01',N'FW',NULL,NULL,N'2024-03-01',12,20);

INSERT INTO [dbo].[EMPLOYMENT_WORKING_TIME] ([EMPLOYMENT_WORKING_TIME_ID],
	[EMPLOYMENT_ID],
	[YEAR_WORKING],
	[MONTH_WORKING],
	[NUMBER_DAYS_ACTUAL_OF_WORKING_PER_MONTH],
	[TOTAL_NUMBER_VACATION_WORKING_DAYS_PER_MONTH])
VALUES
(1,1,N'2023',3,22,0),
(2,2,N'2023',3,22,0),
(3,1,N'2023',4,22,0),
(4,2,N'2023',4,22,0),
(5,3,N'2023',4,22,0),
(6,4,N'2023',4,22,0),
(7,5,N'2023',4,20,2),
(8,6,N'2023',4,20,2),
(9,1,N'2023',5,22,0),
(10,2,N'2023',5,22,0),
(11,3,N'2023',5,22,0),
(12,4,N'2023',5,22,0),
(13,5,N'2023',5,22,0),
(14,6,N'2023',5,22,0),
(15,1,N'2023',6,22,0),
(16,2,N'2023',6,22,0),
(17,3,N'2023',6,22,0),
(18,4,N'2023',6,22,0),
(19,5,N'2023',6,20,2),
(20,6,N'2023',6,20,2),
(21,1,N'2023',7,21,1),
(22,2,N'2023',7,21,1),
(23,3,N'2023',7,22,0),
(24,4,N'2023',7,22,0),
(25,5,N'2023',7,22,0),
(26,6,N'2023',7,22,0),
(27,1,N'2023',8,21,1),
(28,2,N'2023',8,21,1),
(29,3,N'2023',8,22,0),
(30,4,N'2023',8,15,7),
(31,5,N'2023',8,22,0),
(32,6,N'2023',8,22,0),
(33,1,N'2023',9,22,0),
(34,2,N'2023',9,22,0),
(35,3,N'2023',9,22,0),
(36,4,N'2023',9,18,4),
(37,5,N'2023',9,22,0),
(38,6,N'2023',9,22,0),
(39,1,N'2023',10,22,0),
(40,2,N'2023',10,22,0),
(41,3,N'2023',10,22,0),
(42,5,N'2023',10,22,0),
(43,6,N'2023',10,22,0),
(44,7,N'2023',10,20,2),
(45,8,N'2023',10,20,2),
(46,9,N'2023',10,20,2),
(47,10,N'2023',10,20,2),
(48,11,N'2023',10,20,2),
(49,12,N'2023',10,20,2),
(50,1,N'2023',11,19,3),
(51,2,N'2023',11,19,3),
(52,3,N'2023',11,22,0),
(53,5,N'2023',11,22,0),
(54,6,N'2023',11,22,0),
(55,7,N'2023',11,22,0),
(56,8,N'2023',11,22,0),
(57,9,N'2023',11,22,0),
(58,10,N'2023',11,22,0),
(59,11,N'2023',11,22,0),
(60,12,N'2023',11,22,0),
(61,1,N'2023',12,17,5),
(62,2,N'2023',12,17,5),
(63,3,N'2023',12,22,0),
(64,5,N'2023',12,22,0),
(65,6,N'2023',12,22,0),
(66,7,N'2023',12,20,2),
(67,8,N'2023',12,20,2),
(68,9,N'2023',12,20,2),
(69,10,N'2023',12,20,2),
(70,11,N'2023',12,5,17),
(71,12,N'2023',12,22,0),
(72,13,N'2023',12,21,1),
(73,14,N'2023',12,21,1),
(74,15,N'2023',12,21,1),
(75,16,N'2023',12,21,1),
(76,17,N'2023',12,21,1),
(77,1,N'2024',1,22,0),
(78,2,N'2024',1,22,0),
(79,3,N'2024',1,22,0),
(80,5,N'2024',1,22,0),
(81,6,N'2024',1,22,0),
(82,7,N'2024',1,22,0),
(83,8,N'2024',1,22,0),
(84,9,N'2024',1,22,0),
(85,10,N'2024',1,22,0),
(86,11,N'2024',1,22,0),
(87,12,N'2024',1,2,20),
(88,13,N'2024',1,22,0),
(89,14,N'2024',1,20,2),
(90,15,N'2024',1,20,2),
(91,16,N'2024',1,20,2),
(92,17,N'2024',1,20,2),
(93,1,N'2024',2,21,1),
(94,2,N'2024',2,21,1),
(95,3,N'2024',2,22,0),
(96,5,N'2024',2,21,1),
(97,6,N'2024',2,21,1),
(98,7,N'2024',2,22,0),
(99,8,N'2024',2,22,0),
(100,9,N'2024',2,22,0),
(101,10,N'2024',2,22,0),
(102,11,N'2024',2,22,0),
(103,13,N'2024',2,22,0),
(104,14,N'2024',2,22,0),
(105,15,N'2024',2,22,0),
(106,16,N'2024',2,22,0),
(107,17,N'2024',2,22,0),
(108,1,N'2024',3,22,0),
(109,2,N'2024',3,22,0),
(110,3,N'2024',3,22,0),
(111,5,N'2024',3,22,0),
(112,6,N'2024',3,22,0),
(113,7,N'2024',3,22,0),
(114,8,N'2024',3,22,0),
(115,9,N'2024',3,22,0),
(116,10,N'2024',3,22,0),
(117,11,N'2024',3,22,0),
(118,13,N'2024',3,22,0),
(119,14,N'2024',3,22,0),
(120,15,N'2024',3,22,0),
(121,16,N'2024',3,22,0),
(122,17,N'2024',3,22,0),
(123,18,N'2024',3,12,0),
(124,19,N'2024',3,12,0),
(125,20,N'2024',3,12,0),
(126,1,N'2024',4,19,1),
(127,2,N'2024',4,19,1),
(128,3,N'2024',4,20,0),
(129,5,N'2024',4,20,0),
(130,6,N'2024',4,20,0),
(131,7,N'2024',4,20,0),
(132,8,N'2024',4,20,0),
(133,9,N'2024',4,17,3),
(134,10,N'2024',4,20,0),
(135,11,N'2024',4,20,0),
(136,13,N'2024',4,18,2),
(137,14,N'2024',4,18,2),
(138,15,N'2024',4,20,0),
(139,16,N'2024',4,18,2),
(140,17,N'2024',4,20,0),
(141,18,N'2024',4,19,1),
(142,19,N'2024',4,20,0),
(143,20,N'2024',4,19,1);

INSERT INTO [dbo].[JOB_HISTORY] ([JOB_HISTORY_ID],
	[EMPLOYMENT_ID],
	[DEPARTMENT],
	[DIVISION],
	[FROM_DATE],
	[THRU_DATE],
	[JOB_TITLE],
	[SUPERVISOR],
	[LOCATION],
	[TYPE_OF_WORK])
VALUES 
(1,1,N'Headquarter',N'Lead',N'2023-03-08',NULL,N'Founder',NULL,N'Đà Nẵng',1),
(2,2,N'Headquarter',N'Lead',N'2023-03-08',NULL,N'Founder',NULL,N'Đà Nẵng',1),
(3,3,N'Development',N'Lead',N'2023-04-20',N'2024-03-31',N'Senior developer',NULL,N'Đà Nẵng',1),
(4,4,N'Finance',N'Lead',N'2023-04-20',N'2023-09-19',N'Accounting',NULL,N'Đà Nẵng',1),
(5,5,N'Development',N'Lead',N'2023-04-20',NULL,N'Senior developer',NULL,N'Đà Nẵng',1),
(6,6,N'R&D',N'Lead',N'2023-04-20',NULL,N'Researcher',NULL,N'Đà Nẵng',1),
(7,7,N'R&D',N'Member',N'2023-10-05',NULL,N'Researcher',NULL,N'Đà Nẵng',2),
(8,8,N'Finance',N'Lead',N'2023-10-05',NULL,N'Accounting',NULL,N'Đà Nẵng',1),
(9,9,N'Finance',N'Member',N'2023-10-05',NULL,N'Accounting',NULL,N'Đà Nẵng',2),
(10,10,N'Development',N'Member',N'2023-10-05',NULL,N'Middle developer',NULL,N'Đà Nẵng',3),
(11,11,N'Development',N'Member',N'2023-10-05',N'2023-12-05',N'Middle developer',NULL,N'Đà Nẵng',3),
(12,12,N'Development',N'Member',N'2023-10-05',N'2023-02-05',N'Middle developer',NULL,N'Đà Nẵng',3),
(13,13,N'Development',N'Lead',N'2023-12-01',NULL,N'Middle developer',NULL,N'Đà Nẵng',3),
(14,14,N'Development',N'Member',N'2023-12-01',NULL,N'Middle developer',NULL,N'Đà Nẵng',3),
(15,15,N'Development',N'Member',N'2023-12-01',NULL,N'Junior developer',N'Gc863zrkxXsvpo1W',N'Đà Nẵng',4),
(16,16,N'Development',N'Member',N'2023-12-01',NULL,N'Junior developer',N'Gc863zrkxXsvpo1W',N'Đà Nẵng',4),
(17,17,N'Development',N'Member',N'2023-12-01',NULL,N'Junior developer',N'Gc863zrkxXsvpo1W',N'Đà Nẵng',4),
(18,18,N'Development',N'Member',N'2024-03-01',NULL,N'Intern developer',N'keDzKyIHZ7wCspN5',N'Đà Nẵng',5),
(19,19,N'Development',N'Member',N'2024-03-01',NULL,N'Intern developer',N'keDzKyIHZ7wCspN5',N'Đà Nẵng',5),
(20,20,N'Development',N'Member',N'2024-03-01',NULL,N'Intern developer',N'keDzKyIHZ7wCspN5',N'Đà Nẵng',5);