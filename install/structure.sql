START TRANSACTION;
SET autocommit=0;

CREATE TABLE IF NOT EXISTS `checkin` (
`id` INT( 11 ) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`regid` INT( 11 ) NULL ,
`checked_by` INT( 11 ) NOT NULL,
`day` INT NOT NULL ,
`check_out_in` BOOL NOT NULL ,
`time_stamp` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int(11) unsigned NOT NULL auto_increment,
  `firstname` varchar(100) default NULL,
  `lastname` varchar(100) default NULL,
  `login` varchar(100) NOT NULL default '',
  `passwd` varchar(32) NOT NULL default '',
  PRIMARY KEY (`member_id`)
) ENGINE = InnoDB ;


CREATE TABLE IF NOT EXISTS `wireless` (
`id` INT( 11 ) UNSIGNED NOT NULL PRIMARY KEY ,
`username` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`password` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_unicode_ci;


INSERT INTO `checkin` ( `id` , `regid` , `checked_by` , `day` , `check_out_in` , `time_stamp` )
VALUES (
NULL , '1', '1', '1', '1', NOW( )
);
INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `login`, `passwd`) VALUES("1", "test-first", "test-last", "test", "607b0ad842212fc9fd6d06dc7e5b382b");
INSERT INTO `wireless` ( `id` , `username` , `password`) VALUES (1,'testuser','testpas!@#$%^&*()\/ndfd');
COMMIT;
