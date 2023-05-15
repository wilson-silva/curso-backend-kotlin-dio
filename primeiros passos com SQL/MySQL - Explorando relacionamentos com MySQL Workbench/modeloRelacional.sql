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

-- --------------------------------------------------------------------------------------------------
create table seo(
id_seo int primary key auto_increment,
category varchar(20)
);

insert into videos(title, likes, deslikes, id_author) values ('PHP', 20, 8, 2);
insert into seo(category) values ('Frontend');
insert into seo(category) values ('Backend');

-- --------------------------------------------------------------------------------------------------
-- Criando mais uma coluna na tabela video (seo) e atribuindo os valores 
alter table videos add column seo_id int;
alter table videos add foreign key (seo_id) references seo(id_seo);

update videos set seo_id = 2 where id_video = 1;
update videos set seo_id = 2 where id_video = 5;
update videos set seo_id = 2 where id_video = 6;

update videos set seo_id = 1 where seo_id is null;

-- --------------------------------------------------------------------------------------------------
-- mais consultas
alter table videos rename column seo_id  to fk_seo; -- renomeando nome da coluna
alter table videos rename column id_author to fk_author; -- renomeando nome da coluna

select * from videos join seo on videos.fk_seo = seo.id_seo;

select videos.title, seo.category from videos join seo on videos.fk_seo = seo.id_seo;

select videos.title, seo.category, author.name from videos
join seo on videos.fk_seo = seo.id_seo
join author on videos.fk_author = author.id_author;

-- --------------------------------------------------------------------------------------------------
-- criando playList
create table playlist(
id_playlist int primary key auto_increment,
title_pl varchar(20)
);

-- inserindo dados na playlist
insert into playlist(title_pl) values ('HTML + CSS');
insert into playlist(title_pl) values ('HTML + PHP + JS');
insert into playlist(title_pl) values ('PYTHON + PHP');

-- criando tabela de muitos pra muitos
create table videos_playlist(
id_vp int primary key auto_increment,
fk_videos int,
fk_playlist int,
constraint fk_videos foreign key (fk_videos) references videos(id_video),
constraint fk_playlist foreign key (fk_playlist) references playlist(id_playlist)
);

-- inserindo dados em video_playlist
insert into videos_playlist(fk_videos, fk_playlist) values (2, 1);
insert into videos_playlist(fk_videos, fk_playlist) values (3, 1);

-- join de playlist e videos_playlist
select * from playlist join videos_playlist on playlist.id_playlist = videos_playlist.fk_playlist;

-- consulta
select * from playlist join videos_playlist on  playlist.id_playlist = videos_playlist.fk_playlist
join videos on videos.id_video = videos_playlist.fk_videos;

-- altera playlist add coluna fk_autor
alter table playlist add column fk_author int;
alter table playlist add foreign key (fk_author) references author(id_author);

-- inserindo dados na fk_author
update playlist set fk_author = 2 where id_playlist= 1;
update playlist set fk_author = 4 where id_playlist = 2;
update playlist set fk_author = 4 where fk_author is null;

-- consulta
select playlist.id_playlist, playlist.title_pl, author.name from playlist 
join author on playlist.fk_author = author.id_author;









