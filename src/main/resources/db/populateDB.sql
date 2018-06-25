DELETE FROM tatus;
DELETE FROM tdr;


INSERT INTO tatus (kods, kodsz, nams, kodstol, nnj, namsnl, snams, namsu, snamsu, snamsnl, kodval, datn, datk, kvcgl, kpnde, kodsm, oznmv
) VALUES

  (24,	'24',	'ЛИTBA', 0,	0,	'LIETUVA', 'ЛГ',   	'ЛИТВА', 'ЛГ',   	'LG',       0,	'2000-03-01',	'2020-12-08',	16,	1,	'0000',	'0'),
  (25,  '25', 'ЛATBИЯ', 0,  0,    'Y', 'ЛДЗ',    'ЛАТВIЯ',  'ЛДЗ',    'LDZ',    0,  '2000-03-01',  '2006-12-08',  16,  1,  '0000',  '0'),
  (27,	'27',	'KAЗAXCTAH',0,	0,	 'Y', 'KЗX',  	'КАЗАХСТАН', 'КЗХ',  	'KZH',  0,	'2000-03-01',	'2006-12-08',	26,	1,	'0000',	'0'),
  (78,	'78',	'XOPBATИЯ', 0,	0,	'Y', 'XЗ',  	'ХОРВАТIЯ', 'ХЗ',   	'HZ',   	0,	'2000-03-01',	'2006-12-08',	-1,	1,	'0000',	'0'),
  (55, '55', 'BEHГPИЯ', 0, 0, 'Y', 'MAB', 'УГОРЩИНА', 'МАВ', 'MAV', 0, '2000-03-01',	'2006-12-08',	-1,	1,	'Y',	'0');




INSERT INTO tdr (kods, "koddr", "koddrs", "koddr3", "namdr", "snamdr", "rnamdr", "rsnamdr", "lnamdr",  "lsnamdr", "kodos", "kodd1", "kodd2", "kodd3", "kodr1", "kodr2", kstup, "prdr", "timp", "codvcdr", "datn", "datk", "kodpl"
) VALUES
  (	24	,	254	,	'V'	,	'254'	,	'ЧЕШСКИЕ Ж.Д.',	'CD',	'ЧEШCKИE Ж.Д.',	'ЧД',	'CD',	'CD',	0	,	0	,	0	,	0	,	0	,	0	,	5400192	,	0	,	-2	,	95	,	'2000-09-20'	,	'2999-12-28'	,	'1,[]'),
  (	25	,	253	,	'>'	,	'253'	,	'РУМЫНСКИЕ Ж.Д.',	'CFR', 'PУMЫHCKИЕ Ж.Д.'	,	'CFR',	'CFR',	'CFR',	0	,	0	,	0	,	0	,	0	,	0	,	5300100	,	0	,	-1	,	85	,	'1999-09-21',	'2019-12-29',	'1,[]'),
  (	27	,	8	,	'S'	,	'8'	,	'ЭСТОНСКИЕ Ж.Д.',	'EVR',	'ЭCTOHCKИЕ Ж.Д.'	,	'ЭВР',	'EVR',	'EVR',	0	,	1	,	2	,	3	,	0	,	0	,	2600001	,	0	,	-1	,	16	,	'1999-09-22',	'2017-12-30',	'1,[]'),
  (78,	1,	'О',	'001',	'ОКТЯБРЬСКАЯ Ж.Д.', 'ОКТ', 'OKTЯБPЬCKAЯ Ж.Д.', 'ОКТ', 'OKT', 'OKT',  	4,	5,	6,	7,	0,	0,	2004000,	0,	0,	1,	'1999-09-23',	'2000-12-31', '1,[]');


/*Уточнения.
- сделал общие ключт по kods;
- дейсвующие записи считаются, если datk валидна. */

/*1. Вибрати з tdr  усі діючі записи та відсортувати їх по коду країни(kods)*/

SELECT * FROM tdr b
WHERE CURRENT_DATE BETWEEN b.datn and b.datk
ORDER BY kods;


/*2. З таблиць tdr та tatus.  Отримати tatus.kods, tatus.nams, (кількість діючих записів доріг(tdr)). */

SELECT a.kods, a.nams, count(b.kodd3) FROM tatus a JOIN tdr b ON a.kods = b.kods
WHERE CURRENT_DATE BETWEEN b.datn and b.datk
GROUP BY a.kods, a.nams;


/*3. Для усіх діючих записів країн(tatus) вибрати усі діючі записи дороіг(tdr) які до них відносяться.
В результаті повинні отримати tatus.kods, tatus.nams, tdr.kodr, tdr.namdr*/

SELECT a.kods, a.nams, b.koddr, b.namdr FROM tatus a JOIN tdr b ON a.kods = b.kods
WHERE CURRENT_DATE BETWEEN a.datn and a.datk;


/*4. Отримати список доріг(tdr.namdr) в назвах яких міститься їх скорочена назва (tdr.snamdr) та відсортувати по алфавіту*/

/*Не понял полностью задания, сделал в 2х реализациях. */
/*Реализация 1. */
SELECT b.namdr FROM tdr b
WHERE b.namdr LIKE b.snamdr
order by namdr;

/*Реализация 2. */
SELECT b.namdr, b.snamdr FROM tdr b
order by snamdr;

/*Реализация 3. */
SELECT b.namdr FROM tdr b
WHERE b.namdr = b.snamdr
order by namdr;



/*"*" - это если выборку со всеми полями, без * - выборка только с запрашиваемых полей*/



