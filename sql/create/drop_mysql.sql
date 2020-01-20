REVOKE ALL PRIVILEGES ON * . * FROM 'cataclysm'@'localhost';

REVOKE ALL PRIVILEGES ON `cata_world` . * FROM 'cataclysm'@'localhost';

REVOKE GRANT OPTION ON `cata_world` . * FROM 'cataclysm'@'localhost';

REVOKE ALL PRIVILEGES ON `cata_characters` . * FROM 'cataclysm'@'localhost';

REVOKE GRANT OPTION ON `cata_characters` . * FROM 'cataclysm'@'localhost';

REVOKE ALL PRIVILEGES ON `cata_auth` . * FROM 'cataclysm'@'localhost';

REVOKE GRANT OPTION ON `cata_auth` . * FROM 'cataclysm'@'localhost';

DROP USER 'cataclysm'@'localhost';

DROP DATABASE IF EXISTS `cata_world`;

DROP DATABASE IF EXISTS `cata_characters`;

DROP DATABASE IF EXISTS `cata_auth`;
