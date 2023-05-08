-- 	Estrutura da tabela canais
create table canais(
	id_canal int primary key auto_increment,
    nome_canal varchar(100) not null
);

insert into canais(nome_canal) values ('React');
insert into canais(nome_canal) values ('PHP');
insert into canais(nome_canal) values ('CSS');
insert into canais(nome_canal) values ('HTML');

-- 	Estrutura da tabela videos
create table videos(
	id_video int primary key auto_increment,
    nome_video varchar(100) not null,
    autor_video varchar(100) not null
);

insert into videos(nome_video, autor_video) values ('Login com React','React');
insert into videos(nome_video, autor_video) values ('Componentes com React','React');
insert into videos(nome_video, autor_video) values ('Listas com PHP','PHP');
insert into videos(nome_video, autor_video) values ('Funções com PHP','PHP');
insert into videos(nome_video, autor_video) values ('Páginas com HTML','HTML');

-- 	Estrutura da tabela videos_canais
create table videos_canais(
	id_videos_canais int primary key auto_increment,
    fk_canal int not null,
    fk_video int not null,
    constraint fk_canal foreign key (fk_canal) references canais(id_canal),
    constraint fk_video foreign key (fk_video) references videos(id_video)
);

insert into videos_canais(fk_canal, fk_video) values 
(2, 4),(2,3),(1,1),(1,2);

-- ------------------------------------------------------------------------------------------
-- consultas
select v.nome_video, v.autor_video, c.nome_canal from videos_canais as vc 
join videos as v on vc.fk_video = v.id_video
join canais as c on vc.fk_canal = c.id_canal;

-- inner join ou join é a mesma coisa, não retorna valores nulos
select * from videos_canais as vc 
inner join videos as v on vc.fk_video = v.id_video
inner join canais as c on vc.fk_canal = c.id_canal;

-- right join
select * from videos_canais as vc 
right join videos as v on vc.fk_video = v.id_video
right join canais as c on vc.fk_canal = c.id_canal;

-- left join
select * from videos_canais as vc 
left join videos as v on vc.fk_video = v.id_video
left join canais as c on vc.fk_canal = c.id_canal;

select * from videos as v
left outer join videos_canais as vc on v.id_video = vc.fk_video;

-- union
select v.id_video, v.nome_video from videos as v 
left outer join videos_canais as vc on v.id_video = vc.fk_video
union
select c.id_canal, c.nome_canal from videos_canais as vc
right outer join canais as c on vc.fk_canal = c.id_canal;

-- ------------------------------------------------------------------------------------------

insert into videos_canais(fk_canal, fk_video) values (4, 5);

select * from videos_canais 
join videos on videos_canais.fk_video = videos.id_video
join canais on videos_canais.fk_canal = canais.id_canal;

-- ------------------------------------------------------------------------------------------

select * from videos_canais 
join videos on videos_canais.fk_video = videos.id_video
join canais on videos_canais.fk_canal = canais.id_canal
where canais.id_canal = 2;





