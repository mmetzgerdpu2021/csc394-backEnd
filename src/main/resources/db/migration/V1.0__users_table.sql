CREATE TABLE `roles` (
	`role_id` BIGINT AUTO_INCREMENT,
    `role_name` VARCHAR(255),
	`role_code` VARCHAR (255),
	 PRIMARY KEY (`role_id`)

);

create table `teams`(

    `team_id` BIGINT AUTO_INCREMENT,
    `user_id` INT ,
    `team_name` varchar (255),
    PRIMARY KEY (`team_id`)
);

CREATE TABLE `reviews` (
	`review_id` BIGINT AUTO_INCREMENT,
    `team_id` INT,
    `user_id` INTEGER,
    `comment` VARCHAR(255),
    `rating` INTEGER,
	PRIMARY KEY (`review_id`)
);


CREATE TABLE `users` (
	`user_id` BIGINT AUTO_INCREMENT,
    `user_email` VARCHAR(255),
	`first_name` VARCHAR(255),
    `last_name` VARCHAR(255),
    `role_id`    BIGINT,
	`user_name` VARCHAR(255),
	`pass_word` VARCHAR(255),
    `team_id`    BIGINT,
	 PRIMARY KEY (`user_id`)
);

create table `goals`(

    `goal_id` BIGINT AUTO_INCREMENT,
    `goal_title` VARCHAR (255),
    `goal_discription` VARCHAR (255),
    `team_id` BIGINT,
    `grades` BIGINT,
    `status` VARCHAR (255),
    PRIMARY KEY (`goal_id`)
);


insert into `users` (`user_id`, `user_email`, `first_name`, `last_name`,`role_id`,`user_name`, `pass_word`, `team_id`) values (null,'admin@admin.com', 'sam', 'moe', '1', 'sahtout', 'khamla','1');
insert into `users` (`user_id`, `user_email`, `first_name`, `last_name`,`role_id`,`user_name`, `pass_word`, `team_id`) values (null,'@admin.com', 'mas', 'emfdv', 3 , 'saht', 'kha',null );
insert into `users` (`user_id`, `user_email`, `first_name`, `last_name`,`role_id`,`user_name`, `pass_word`, `team_id`) values (null,'@sam.com', 'sam', 'mos', 3 , 'sam', 'sam',null );
insert into `users` (`user_id`, `user_email`, `first_name`, `last_name`,`role_id`,`user_name`, `pass_word`, `team_id`) values (null,'@zak.com', 'zak', 'zik', 3 , 'zak', 'zak',null );

insert into `roles` (`role_id`, `role_name`, `role_code`) values (null, 'ADMIN', 'admin');
insert into `roles` (`role_id`, `role_name`, `role_code`) values (null, 'FACULTY', 'faculty');
insert into `roles` (`role_id`, `role_name`, `role_code`) values (null, 'STUDENT', 'student');

insert into `teams` (`team_id`, `user_id`, `team_name`) values (null, 1, 'apolo');
insert into `teams` (`team_id`, `user_id`, `team_name`) values (null, 1, 'ololo');
insert into `teams` (`team_id`, `user_id`, `team_name`) values (null, 1, 'sokosok');

insert into `goals` (`goal_id`, `goal_discription`,`status`, `team_id`, `grades`) values (null,'close window', 1, null ,100);
insert into `goals` (`goal_id`, `goal_discription`,`status`, `team_id`, `grades`) values (null,'open Window',1, null ,99);

insert into `reviews`(`review_id`, `team_id`, `user_id`,`comment`, `rating`) values (null, 1,1,'good Team',5);
insert into `reviews`(`review_id`, `team_id`, `user_id`,`comment`, `rating`) values (null, 1,2,'Best team',3);
insert into `reviews`(`review_id`, `team_id`, `user_id`,`comment`, `rating`) values (null, 1,3,'good work',2);
insert into `reviews`(`review_id`, `team_id`, `user_id`,`comment`, `rating`) values (null, 1,4,'Best work',5);

ALTER TABLE `Teams`
ADD CONSTRAINT teams_fk foreign KEY (`user_id`) references users(`user_id`);
ALTER TABLE `reviews`
ADD CONSTRAINT reviews_fk foreign KEY (`team_id`) REFERENCES teams(`team_id`);
ALTER TABLE `reviews`
ADD CONSTRAINT review_f foreign KEY (`user_id`) REFERENCES users(`user_id`);
ALTER TABLE `users`
ADD CONSTRAINT user_fk foreign KEY (`role_id`) REFERENCES roles(`role_id`);
ALTER TABLE `users`
ADD CONSTRAINT user_fk2 foreign KEY (`team_id`) REFERENCES teams(`team_id`);
ALTER TABLE `goals`
ADD CONSTRAINT goals_fk foreign KEY (`team_id`) REFERENCES teams(`team_id`);