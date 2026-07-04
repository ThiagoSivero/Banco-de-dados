-- estrutura tabela alunos

create table alunos (
    id smallint(6) not null,
    nome varchar(30) not null,
    data_de_nascimento date not null,
    primeira_nota decimal(4,2) not null,
    segunda_nota decimal(4,2) not null,
    curso_id smallint(6) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

insert into alunos (id, nome, data_de_nascimento, primeira_nota, segunda_nota, curso_id)
values
(2, 'Maria joaquina', '2985-02-26', '9.00', '10.00', 2),
(3, 'Roberto Carlos', '1995-02-03', '9.00', '10.00', 5),
(4, 'Vinicius Junior', '1993-03-10', '10.00', '10.00', 1),
(6, 'Paola Oliveira', '1981-0401', '4.00', '7.00', 2),
(7, 'Viviane Araujo', '1980-01-04', '10.00', '7.00', 3),
(8, 'Vagner Moura', '1975-08-25', '8.00', '3.00', 4),
(9, 'Rodrigo Santoro', '1972-10-10', '9.00', '9.00', 1),;
(10, 'Jorge Amado', '1950-08-04', '10.00', '8.00', 3)

-- tabela Cursos

create table cursos (
    id smallint(6) not null,
    titulo varchar(30) not null,
    carga_horaria smallint(6) not null,
    professor_id smallint(6) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

insert into cursos (id, titulo, carga_horaria, professor_id) values
(1, 'Front-End', 40, 5),
(2, 'Back-End', 80, 5),
(3, 'UX/UI Design', 30, 3),
(4, 'Adobe XD', 15, 2),
(5, 'Redes de Computadores', 100, 1)

-- Tabela professores 
create table profesores (
    id smallint(6) not null,
    nome varchar(50) not null,
    area_de_atuação enum('design', 'desenvolvimento', 'infra') not null,
    curso_id smallint(6) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

-- inserir dados na tabela professores
insert into professores (id, nome, area_de_atuação, curso_id) values
(1, 'Jon Olivia', 'infra', 5),
(2, 'Lemmy Kilmister', 'design', 4),
(3, 'Neil Peart', 'design', 3),
(4, 'Ozzy Osbourne', 'desenvolvimento', 2),
(5, 'David Gilmour', 'desenvolvimento', 1)


-- Adicionar indices na tabela (chave primaria e estrangeira)
alter table Alunos 
add primary key (id),
add key fk_alunos_cursos (curso_id)

alter table Cursos 
add primary key (id),
add key fk_cursos_professores1 (professor_id)

alter table profesores
add primary key (id),
add key fk_professores_cursos1 (curso_id)

alter table alunos
modify id smallint(6) not null auto_increment, auto_increment=11

alter table cursos
modify id smallint(6) not null auto_increment, auto_increment=6

alter table profesores
modify id smallint(6) not null auto_increment, auto_increment=6

-- limitadores para a tabela alunos 
alter table alunos
    add constraint fk_alunos_cursos foreign key (curso_id) references cursos (id);


 -- limitadores para a tabela professores cursos
 alter table cursos
 add constraint fk_cursos_professores1 foreign key (professor_id) references professores (id);

 



