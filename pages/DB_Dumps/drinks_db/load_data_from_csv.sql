

LOAD DATA INFILE '/var/lib/mysql-files/drinks.csv'
INTO TABLE drinks
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(country,beer_servings,spirit_servings,wine_servings,continent);

-- show variables like '%secure%';
