GRANT USAGE ON * . * TO 'cataclysm'@'localhost' IDENTIFIED BY 'cataclysm' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 ;

CREATE DATABASE `cata_world` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE DATABASE `cata_characters` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE DATABASE `cata_auth` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON `cata_world` . * TO 'cataclysm'@'localhost' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `cata_characters` . * TO 'cataclysm'@'localhost' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `cata_auth` . * TO 'cataclysm'@'localhost' WITH GRANT OPTION;
