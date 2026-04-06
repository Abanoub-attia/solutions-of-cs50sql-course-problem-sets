CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `password` VARCHAR(128) NULL,
    `username` VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `type` ENUM ('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(100),
    `foundation_date` DATE NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `industy` ENUM ('Technology', 'Education', 'Business'),
    `location` VARCHAR(100),
    PRIMARY KEY(`id`)
);

CREATE TABLE `people_connections` (
    `user1_id` INT,
    `user2_id` INT,
    PRIMARY KEY(`user1_id`,`user2_id`),
    FOREIGN KEY (`user1_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`user2_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `school_connections` (
    `user_id` INT,
    `school_id` INT,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `status` ENUM ('earned', 'pursued') NOT NULL,
    `degree` VARCHAR(10) NOT NULL,
    PRIMARY KEY(`user_id`,`school_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`school_id`) REFERENCES `schools`(`id`)
);

CREATE TABLE `company_connections` (
    `user_id` INT,
    `company_id` INT,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    PRIMARY KEY(`user_id`,`company_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`company_id`) REFERENCES `companies`(`id`)
);
