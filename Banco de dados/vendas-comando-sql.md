# Comandos sql - Referência

# Modelagem fisica

## Criação do banco de dados

``` sql
CREATE DATABASE vendas CHARACTER SET utf8mb4;

```

<!-- ______________________________________________________________________ -->

# Criar tabela fabricante

``` sql

CREATE TABLE fabricantes(
    id int not null primary key auto_increment,
    nome varchar(45) not null
);
```


<!-- _______________________________________________________- -->

# Criar tabela produtos

``` sql
    Create table produtos(
        id int not full primary key auto_increment,
        nome varchar(45) not null,
        descricao text(1000) not null,
        preco decimal (6,2) not null,
        quantidade tinyint(4) not null
    );
```

<!-- _____________________________________ -->

# adicionar campo/coluna em uma tabela

``` sql
    alter table produtos add fabricante_id int not null
    after quantidade;

```
<!-- _________________________________________________ -->

# criação da chave estrangeira (relacionamento entre as tabelas)

``` sql
alter table produtos 
    	add constraint fk_produtos_fabricantes

        foreign key (fabricante_id) references fabricantes(id)
```

<!-- __________________________________________________________ -->
# Apagar uma tabela 


``` sql 
    drop table fabricantes;


```