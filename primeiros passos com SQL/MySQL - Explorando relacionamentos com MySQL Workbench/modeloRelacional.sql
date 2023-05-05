-- Tabela Author
create table author(
	id_author int primary key auto_increment,
    name varchar(30) not null,
    born date not null
);

-- inserindo dados na tebela author
insert into author(name, born) values ('Maria', '1992-04-10');
insert into author(name, born) values ('Pedro', '1991-01-02');
insert into author(name, born) values ('João', '1988-08-15');
insert into author(name, born) values ('Flávia', '2000-12-15');

-- --------------------------------------------------------------------------------------------------
-- criando tabela videos
create table videos(
id_video int primary key auto_increment,
title varchar(30),
likes int,
deslikes int,
id_author int,
constraint fk_author foreign key (id_author) references author(id_author)
);

-- inserindo dados na tabela videos
insert into videos(title, likes, deslikes, id_author) values ('MYSQL', 10, 2, 1);
insert into videos(title, likes, deslikes, id_author) values ('HTML', 30, 1, 3);
insert into videos(title, likes, deslikes, id_author) values ('CSS', 18, 3, 1);
insert into videos(title, likes, deslikes, id_author) values ('Javascript', 15, 8, 2);
insert into videos(title, likes, deslikes, id_author) values ('Python', 50, 0, 1);

-- --------------------------------------------------------------------------------------------------
-- Usando join em consultas
select * from videos;

select * from videos join author on videos.id_author = author.id_author;

select videos.title, author.name from videos join author on videos.id_author = author.id_author;






