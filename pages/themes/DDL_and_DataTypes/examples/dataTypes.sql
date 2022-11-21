-- Active: 1663945334496@@127.0.0.1@3306@dca
CREATE TABLE IF NOT EXISTS datatypes_demo(
  id INT unsigned not null auto_increment,
  tinyint_data TINYINT default null,
  smallint_data SMALLINT default null,
  mediumint_data MEDIUMINT default null,
  int_data INT default null,
  bigint_data BIGINT default null,
  PRIMARY KEY (id)
);


INSERT INTO datatypes_demo (tinyint_data,smallint_data,mediumint_data,int_data,bigint_data )
VALUES (100, 20000, 3000000, 100000000, 10000000000000000 );

-- INSERT INTO datatypes_demo (tinyint_data) VALUES (128);

ALTER TABLE datatypes_demo ADD decimal_data DECIMAL(6,2);

INSERT INTO datatypes_demo (decimal_data) VALUES (9999.99);

ALTER TABLE `datatypes_demo` ADD COLUMN `float_data` FLOAT(6,2);


INSERT INTO `datatypes_demo`(`float_data`) VALUES (9999.99);

INSERT INTO `datatypes_demo`(`float_data`) VALUES (9999.999);
INSERT INTO `datatypes_demo`(`float_data`) VALUES (9999.45678);

-- the value will be rounded to 9999.46




