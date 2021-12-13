create database `db_university`;
use `db_university`;

create table `departments`(
	`id` INT not null auto_increment,
	`name` VARCHAR(100) not null,
	`address` VARCHAR(255),
	`phone` VARCHAR(100),
	`email` VARCHAR(100),
	`website` VARCHAR(255),
	`head_of_department` VARCHAR(100),
	primary key(`id`)
);

create table `degrees`(
	`id` INT not null auto_increment,
	`name` VARCHAR(100) not null,
	`address` VARCHAR(255),
	`email` VARCHAR(100),
	`website` VARCHAR(255),
	`level` VARCHAR(100),
	`departments_id` INT not null,
	primary key(`id`),
	foreign key(`departments_id`) references departments(`id`)
);

create table `courses`(
	`id` INT not null auto_increment,
	`name` VARCHAR(100) not null,
	`description` TEXT,
	`website` VARCHAR(255),
	`cfu` INT,
	`degrees_id` INT not null,
	primary key(`id`),
	foreign key(`degrees_id`) references degrees(`id`)
);

create table `teachers`(
	`id` INT not null auto_increment,
	`name` VARCHAR(100) not null,
	`surname` VARCHAR(100) not null,
	`phone` VARCHAR(100),
	`email` VARCHAR(100),
	`office_address` VARCHAR(255),
	primary key(`id`)	
);

-- tabella ponte
create table `courses_teachers`(
	`courses_id` INT not null,
	`teachers_id` INT not null,
	primary key(`courses_id`, `teachers_id`),
	foreign key(`courses_id`) references courses(`id`),
	foreign key(`teachers_id`) references teachers(`id`)
);

create table `exams`(
	`id` INT not null auto_increment,
	`date` DATE not null,
	`hour` TIME not null,
	`location` VARCHAR(100) not null,
	`address` VARCHAR(255),
	`courses_id` INT not null,
	primary key(`id`),
	foreign key(`courses_id`) references courses(`id`)
);

create table `student`(
	`id` INT not null auto_increment,
	`name` VARCHAR(100) not null,
	`surname` VARCHAR(100) not null,
	`date_of_birth` DATE not null,
	`fiscal_code` VARCHAR(16) not null,
	`enrolment_date` DATE,
	`registration_number` VARCHAR(50) not null,
	`email` VARCHAR(100),
	`degrees_id` INT not null,
	primary key(`id`),
	foreign key(`degrees_id`) references degrees(`id`)
);

-- tabella ponte
create table `exams_student`(
	`exams_id` INT not null,
	`student_id` INT not null,
	primary key(`exams_id`, `student_id`),
	foreign key(`exams_id`) references exams(`id`),
	foreign key(`student_id`) references student(`id`)
);

create table `vote`(
	`exams_id` INT not null,
	`student_id` INT not null,
	`vote` tinyint not null,
	primary key(`exams_id`, `student_id`),
	foreign key(`exams_id`) references exams(`id`),
	foreign key(`student_id`) references student(`id`)
);