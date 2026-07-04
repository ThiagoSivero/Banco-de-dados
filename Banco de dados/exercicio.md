``` sql
CREATE DATABASE Filmes CHARACTER SET utf8mb4;

```

``` sql
    Create table Filmes(
        id int not null primary key auto_increment,
        nome varchar(45) not null,
        Lancamento tinyint(4) not null
    );
```

``` sql
    Create table Genero (
        id int not null primary key auto_increment,
        Genero varchar(45) not null
    );
 ```

 ``` sql

    insert into Filmes (nome)
    values('Os Croods'),('Meu malvado favorito'),('Lorox'),('Casa Monstro'),('Espetacular homem-aranha'),('Elementos'),('Batman'),('Coringa'),('Velozes e furiosos'), ('Barbie');
 ```