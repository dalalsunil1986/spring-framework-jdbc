CREATE TABLE `jbrcollege`.`student` (
  `id` VARCHAR(30) NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `dob` DATE NOT NULL,
  `email` VARCHAR(45) NULL,
  `phone` INT NOT NULL,
  `doj` DATE NOT NULL,
  `dol` DATE NULL,
  `dept_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
  CREATE TABLE `jbrcollege`.`staff` (
  `id` VARCHAR(30) NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `dob` DATE NOT NULL,
  `doj` DATE NOT NULL,
  `dol` DATE NULL,
  `email` VARCHAR(45) NULL,
  `phone` INT NOT NULL,
  `qualification` VARCHAR(45) NOT NULL,
  `dept_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

  CREATE TABLE `jbrcollege`.`department` (
  `dept_id` VARCHAR(30) NOT NULL,
  `dept_code` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`dept_id`));
  
  ALTER TABLE `jbrcollege`.`student` 
  ADD CONSTRAINT `FK_DEPT_ID`
  FOREIGN KEY (`id`)
  REFERENCES `jbrcollege`.`department` (`dept_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `jbrcollege`.`staff` 
ADD INDEX `FK_DPET_ID_idx` (`dept_id` ASC);
ALTER TABLE `jbrcollege`.`staff` 
ADD CONSTRAINT `FK_DPET_ID`
  FOREIGN KEY (`dept_id`)
  REFERENCES `jbrcollege`.`department` (`dept_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

