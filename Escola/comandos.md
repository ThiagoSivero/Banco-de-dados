## Comandos basicos

```sql
select * from alunos;
```

```sql
select * from professores;
```
```sql
select * from cursos;
```

## selecionando campos específios

```sql
select nome from cursos;
```
## exibir mais campos especificos

```sql
select nome, primeira_nota, segunda_nota  from alunos;
```



```sql
select nome, area_de_atuação  from professores;
```

```sql
select titulo, carga_horaria  from cursos;
```


## filtros

```sql
select * from alunos
where id = 2;
```

```sql
select * from alunos
where nome like 'Ro%';
```

```sql
select * from alunos
where nome like '%e';
```

```sql
select
nome, data_de_nascimento,
primeira_nota + segunda_nota as soma from alunos;
```

##media dos alunos

```sql
select
nome, data_de_nascimento,
primeira_nota, segunda_nota
(primeira_nota + segunda_nota) / 2 as media from alunos;
```

```sql
select min(carga_horaria) as menor from cursos;
```
```sql
select avg(carga_horaria) as media from cursos;
```
```sql
select sum(carga_horaria) as Total from cursos;
```

```sql
select data_de_nascimento from alunos where data_de_nascimento < '2009-01-01'
```

```sql
select * from alunos a
```

## Calculo da média dos alunos que mostre duas casas decimais


```sql
SELECT
a.nome,
a.primeira_nota,
a.segunda_nota,
round(AVG(a.primeira_nota + a.segunda_nota) / 2, 2) as media
from alunos a
group by a.nome;
```


```sql
select *
from cursos c;
```


## Calcular limite de faltas dos alunos 

```sql
select 
c.carga_horaria,
(c.carga_horaria * 0.25) as Limite_Faltas
from cursos c;
```

## Calcular o numero de professores 

```sql
select
count (*) as numProfessores
FROM professores p;
```

```sql
SELECT
COUNT(p.area_de_atuacao)
from professores p 
where p.area_de_atuacao LIKE '%desenvolvimento%'
```


## Mostrar o nome do professor e o título que cada um seleciona, em ordem (por nome)

```sql
SELECT
p.nome,
p.area_de_atuacao
from professores p
order by p.nome;
```
```sql
SELECT
p.nome,
p.area_de_atuacao
from professores p
order by p.nome DESC;
```

```sql
select *
from professores p
join cursos c on (c.professor_id = p.curso_id);
```

```sql
select 
p.nome as nome_do_professor,
c.titulo as nome_do_curso
from professores p
join cursos c on (c.professor_id = p.curso_id);
```


```sql
select 
a.nome as aluno,
p.nome as professor,
c.titulo as curso
from alunos a
left join cursos c on (c.id = a.curso_id)
left join professores p on (p.curso_id = c.id);
```

```sql
select 
c.titulo as curso, 
count(a.curso_id) as qtdAlunos

```

```sql
SELECT
c.titulo as curso, 
count(a.curso_id) as qtdalunos
from alunos a 
join cursos c on (c.id = a.curso_id)
group by c.titulo
```


```sql
SELECT
a.nome as aluno,
c.titulo as materia,
a.primeira_nota,
a.segunda_nota,
round(avg(a.primeira_nota + a.segunda_nota) / 2, 2) as media
from alunos a 
join cursos c on (c.id = a.curso_id)
```


SELECT
a.nome,
a.primeira_nota,
a.segunda_nota,
round(AVG(a.primeira_nota + a.segunda_nota) / 2, 2) as media 
from alunos a
where (a.primeira_nota + a.segunda_nota) / 2 >= 7
group by a.nome;

SELECT
a.nome,
a.primeira_nota,
a.segunda_nota,
round(AVG(a.primeira_nota + a.segunda_nota) / 2, 2) as media 
from alunos a
where (a.primeira_nota + a.segunda_nota) / 2 > 7
group by a.nome;
