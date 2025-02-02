create table departments2 (
  department_id INT unsigned not null auto_increment primary key,
  name varchar(20) not null,
  created_at timestamp null default current_timestamp,
  updated_at timestamp null default current_timestamp on update current_timestamp
  );

alter table people add department_id int unsigned null after email;

insert into departments2 (name)
  values
  ('営業部'),
  ('開発'),
  ('経理'),
  ('人事'),
  ('情報システム');
  
insert into people (name, email, department_id, age, gender)
  values
  ('a', 'a@gmail.com', 1, 32, 1),
  ('b', 'b@gmail.com', 1, 45, 2),
  ('c', 'c@gmail.com', 1, 28, 1),
  ('d', 'd@gmail.com', 2, 56, 2),
  ('e', 'e@gmail.com', 2, 22, 2),
  ('f', 'f@gmail.com', 2, 36, 1),
  ('g', 'g@gmail.com', 2, 44, 2),
  ('h', 'h@gmail.com', 3, 27, 1),
  ('i', 'i@gmail.com', 4, 47, 1),
  ('j', 'j@gmail.com', 5, 31, 1);


insert into reports ( person_id, content)
  values
  (1, 'aaaaaaaaaaaaaaaaaaaaaa'),
  (2, 'bbbbbbbbbbbbbbbbbbbbbb'),
  (3, 'cccccccccccccccccccccc'),
  (4, 'dddddddddddddddddddddd'),
  (5, 'eeeeeeeeeeeeeeeeeeeeee'),
  (6, 'ffffffffffffffffffffff'),
  (7, 'gggggggggggggggggggggg'),
  (8, 'hhhhhhhhhhhhhhhhhhhhhh'),
  (1, 'iiiiiiiiiiiiiiiiiiiiii'),
  (2, 'jjjjjjjjjjjjjjjjjjjjjj');


UPDATE people SET department_id = '1' WHERE person_id = 5;

select name, age from people where gender=1 order by age asc;

peopleテーブルからdepartment_idが１レコードをname,email,ageの3つのカラムから
取り出しcreated_atの昇順で表示

select name from people where gender=2 and 20 <= age and age < 30 or gender=1 and 40 <= age and age <50;

select name from people where department_id=1 order by age;

select avg(age) as avarage_age from people where department_id=2 and gender=2;

select p.name from people p left outer join reports r using (person_id) where content is null;