```sql

create table alunos2 (
    
    nome varchar(30) not null,
    data_de_nascimento date not null,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4


insert into alunos2 (nome, data_de_nascimento)
values
('Maria joaquina', '2985-02-26'),
('Roberto Carlos', '1995-02-03'),
('Vinicius Junior', '1993-03-10'),
('Paola Oliveira', '1981-0401')






create table alunos3 ( nome varchar(30) not null, data_de_nascimento date not null, primeira_nota decimal(4,2) not null, segunda_nota decimal(4,2) not null ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into alunos2 (nome, data_de_nascimento)
values
('Maria joaquina', '2985-02-26', '9.00', '10.00'),
('Roberto Carlos', '1995-02-03', '9.00', '10.00'),
('Vinicius Junior', '1993-03-10', '10.00', '10.00'),
( 'Paola Oliveira', '1981-0401', '4.00', '7.00')


-- ------------------------------------------------------------------------





## comandos basicos

```sql
select * from alunos;
```

```sql
select * from professores;
```
```sql
select * from cursos;
```
## seleciona campos especificos
## tabelas alunos

```sql
select nome from alunos;
```

```sql
select nome, primeira_nota, segunda_nota from alunos;
```

## tabela prof

```sql
select nome, area_de_atuacao from professores;
```

## tabela cursos

```sql
select titulo, carga_horaria from cursos;
```

## sla

```sql
select nome from alunos where id = 2,3;
```

## ermina com e
```sql
select * from alunos where nome like '%e"
```
## soma
```sql
select nome, data_de_nascimento, primeira_nota + segunda_nota  as soma from alunos;
```

## media
```sql
select nome, data_de_nascimento, (primeira_nota + segunda_nota)/2  as soma from alunos;
```

## nota maxima

```sql
select max(carga_horaria) as maior from cursos;
```
## lição

```sql
select nome, data_de_nascimento from alunos;
select nome, primeira_nota, segunda_nota, (primeira_nota + segunda_nota)/2  as soma from alunos;
select * from professores where area_de_atuacao like 'desenvolvimento';
select * from professores where id in (4, 2, 3);
select * from cursos where titulo like 'Adobe XD';
select * from cursos where titulo like '%end%';
```