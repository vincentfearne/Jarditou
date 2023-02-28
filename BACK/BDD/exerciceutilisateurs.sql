USE hotel;

CREATE USER 'util1'@'%' IDENTIFIED BY 'utilisateur1';
CREATE USER 'util2'@'%' IDENTIFIED BY 'utilisateur2';
CREATE USER 'util3'@'%' IDENTIFIED BY 'utilisateur3';

GRANT ALL PRIVILEGES ON hotel.* TO 'util1'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT SELECT
ON hotel.*
TO 'util2'@'%';
FLUSH PRIVILEGES;

GRANT SELECT
ON hotel.station
TO 'util3'@'%';
FLUSH PRIVILEGES;