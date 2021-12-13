use `db_university`;
select * from `departments`;

insert into `departments`(`name`, `address`, `phone`, `email`, `website`, `head_of_department`) values ('Matematica', 'P.za Garibaldi 10, 00100 Roma', '112233', 'matematica@uniroma.it', 'www.matematicaRomaTre.it', 'Pinco Pallo');
insert into `departments`(`name`, `address`, `phone`, `email`, `website`, `head_of_department`) values ('Economia', 'Viale Giulio Cesare 4, 00100 Roma', '123123', 'economia@uniroma.it', 'www.economiaRomaTre.it', 'Pallino Pinco');
insert into `departments`(`name`, `address`, `phone`, `email`, `website`, `head_of_department`) values ('Giurisprudenza', 'Via Diritto 75, 00100 Roma', '445566', 'giurisprudenza@uniroma.it', 'www.giurisprudenzaRomaTre.it', 'Mario Rossi');

delete from `departments` where `id` = 3;

update `departments` set `id` = 3 where `id` = 4;

insert into `degrees`(`name`, `address`, `email`, `website`, `level`, `departments_id`) values ('Scienze Computazionali', 'P.za Garibaldi 10, 00100 Roma', 'scienzeComputazionali@uniroma.it', 'www.scienzeComputazionaliRomaTre.it', 'Laurea Magistrale', 1);
insert into `degrees`(`name`, `address`, `email`, `website`, `level`, `departments_id`) values ('Economia', 'Viale Giulio Cesare 4, 00100 Roma', 'economia@uniroma.it', 'www.economiaRomaTre.it', 'Laurea Triennale', 2);
insert into `degrees`(`name`, `address`, `email`, `website`, `level`, `departments_id`) values ('Servizi giuridici', 'Via Diritto 75, 00100 Roma', 'serviziGiuridici@uniroma.it', 'www.serviziGiuridiciRomaTre.it', 'Laurea Triennale', 3);

update `degrees` set `id` = 3 where `id` = 6;

insert into `courses`(`name`, `description`, `website`, `cfu`, `degrees_id`) values ('Informatica 2', 'Il corso approfondisce gli aspetti matematici del concetto di computazione, lo studio delle relazioni tra diversi modelli di calcolo e la complessità computazionale.', 'www.informatica2.it', '10', 1);
insert into `courses`(`name`, `description`, `website`, `cfu`, `degrees_id`) values ('Analisi 1', 'Limiti, derivate, integrali, studi di funzione', 'www.analisi1.it', '10', 2);
insert into `courses`(`name`, `description`, `website`, `cfu`, `degrees_id`) values ('Diritto privato', 'Diritto privato', 'www.dirittoPrivato.it', '15', 3);

insert into `teachers`(`name`, `surname`, `phone`, `email`, `office_address`) values ('Mario', 'Rossi', '333 446677', 'mario.rossi@uniroma.com', 'P.za Garibaldi 10, 00100 Roma');
insert into `teachers`(`name`, `surname`, `phone`, `email`, `office_address`) values ('Carlo', 'Magno', '123 446677', 'carlo.magno@uniroma.com', 'Viale Giulio Cesare 4, 00100 Roma');
insert into `teachers`(`name`, `surname`, `phone`, `email`, `office_address`) values ('Giulio', 'Cesare', '321 446677', 'giulio.cesare@uniroma.com', 'Via Diritto 75, 00100 Roma');

insert into `courses_teachers`(`courses_id`, `teachers_id`) values (1, 1);
insert into `courses_teachers`(`courses_id`, `teachers_id`) values (2, 1);
insert into `courses_teachers`(`courses_id`, `teachers_id`) values (3, 3);

insert into `exams`(`date`, `hour`, `location`, `address`, `courses_id`) values ('2022/01/15', '15:30', 'aula A', 'P.za Garibaldi 10, 00100 Roma', 1);
insert into `exams`(`date`, `hour`, `location`, `address`, `courses_id`) values ('2022/01/25', '09:00', 'aula 5', 'Viale Giulio Cesare 4, 00100 Roma', 2);
insert into `exams`(`date`, `hour`, `location`, `address`, `courses_id`) values ('2022/01/08', '14:00', 'aula C', 'Via Diritto 75, 00100 Roma', 3);

insert into `student`(`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) values ('Francesca', 'Pompi', '1993/03/24', 'PMPFNC93C64H501F', '2020/09/22', '1548076', 'francesca.pompi@gmail.com', 1);
insert into `student`(`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) values ('Francesca', 'Pompi', '1993/03/24', 'PMPFNC93C64H501F', '2020/09/22', '1548076', 'francesca.pompi@gmail.com', 2);
insert into `student`(`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) values ('Francesca', 'Pompi', '1993/03/24', 'PMPFNC93C64H501F', '2020/09/22', '1548076', 'francesca.pompi@gmail.com', 3);

insert into `exams_student`(`exams_id`, `student_id`) values (1, 1);
insert into `exams_student`(`exams_id`, `student_id`) values (2, 2);
insert into `exams_student`(`exams_id`, `student_id`) values (3, 3);

insert into `vote`(`exams_id`, `student_id`, `vote`) values (1, 1, '25');
insert into `vote`(`exams_id`, `student_id`, `vote`) values (2, 2, '30');
insert into `vote`(`exams_id`, `student_id`, `vote`) values (3, 3, '18');