ALTER TABLE `category` ADD `rank` INT NOT NULL DEFAULT '0' AFTER `view`;


ALTER TABLE `menu` ADD `rank` INT NOT NULL DEFAULT '0' AFTER `status`;