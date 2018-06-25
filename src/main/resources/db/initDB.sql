DROP TABLE IF EXISTS tatus;
DROP TABLE IF EXISTS tdr;

CREATE TABLE tatus
(
  kods    SMALLINT PRIMARY KEY DEFAULT NULL,
  kodsz   CHAR(2)  DEFAULT 'Y',
  nams    CHAR(30) DEFAULT 'Y',
  kodstol INTEGER  DEFAULT NULL ,
  nnj     SMALLINT DEFAULT NULL,
  namsnl  CHAR(30) DEFAULT 'Y',
  snams   CHAR(5)  DEFAULT 'Y',
  namsu   CHAR(30) DEFAULT 'Y',
  snamsu  CHAR(5)  DEFAULT 'Y',
  snamsnl CHAR(5)  DEFAULT 'Y',
  kodval  SMALLINT DEFAULT NULL,
  datn    DATE     DEFAULT CURRENT_DATE,
  datk    DATE     DEFAULT CURRENT_DATE,
  kvcgl   SMALLINT DEFAULT NULL,
  kpnde   DECIMAL  DEFAULT NULL,
  kodsm   CHAR(4) DEFAULT 'Y' NOT NULL,
  oznmv   CHAR(1) DEFAULT 'Y' NOT NULL
);

CREATE TABLE tdr (
  kods    SMALLINT  DEFAULT NULL,
  koddr   SMALLINT DEFAULT NULL,
  koddrs  CHAR(1)  DEFAULT 'Y',
  koddr3  CHAR(3)  DEFAULT 'Y',
  namdr   CHAR(22) DEFAULT 'Y',
  snamdr  CHAR(5)  DEFAULT 'Y',
  rnamdr  CHAR(22) DEFAULT 'Y',
  rsnamdr CHAR(5)  DEFAULT 'Y',
  lnamdr  CHAR(22) DEFAULT 'Y',
  lsnamdr CHAR(5)  DEFAULT 'Y',
  kodos   SMALLINT DEFAULT NULL,
  kodd1   SMALLINT DEFAULT NULL,
  kodd2   SMALLINT DEFAULT NULL,
  kodd3   SMALLINT DEFAULT NULL,
  kodr1   SMALLINT DEFAULT NULL,
  kodr2   SMALLINT DEFAULT NULL,
  kstup   INTEGER  DEFAULT NULL,
  prdr    SMALLINT DEFAULT NULL,
  timp    SMALLINT DEFAULT NULL,
  codvcdr SMALLINT DEFAULT NULL,
  datn    DATE     DEFAULT CURRENT_DATE,
  datk    DATE     DEFAULT CURRENT_DATE,
  kodpl   CHAR(20) DEFAULT '1,[]' NOT NULL,
  FOREIGN KEY (kods) REFERENCES tatus (kods) ON DELETE CASCADE
);
