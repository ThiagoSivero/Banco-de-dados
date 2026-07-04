# comando SQL para crud - Referencia

## resumo
C -> create (insere dados)
R -> Read (ler dados)
U -> update (atualizar dados)
D -> Delete (Excluir dados)

## Inserir
### Fabricantes

``` SQL
    insert into fabricantes (nome) values('Asus');
    insert into fabricantes (nome) values('Dell');

    insert into fabricantes (nome)
    values('apple'),('LG'),('Samsung'),('Brastemp');

```

### produtos


``` sql
    insert into produtos(nome, descricao, preco, quantidade, fabricante_id)
    values('ultrabook',
            'ultrabook Asus com processador Intel Core I9, memoria RAM de 16Gb e Windows11',
            6500.99,
            7,
            1);

```
``` sql
    insert into produtos(nome, descricao, preco, quantidade, fabricante_id)
    values('tablet android',
            'Tablet com a versão 12 do sistema operacional da Google, possui tela de 10 polegadas e armazenamento de 64GB.',
            4999,
            3,
            5);

```
``` sql
    insert into produtos(nome, descricao, preco, quantidade, fabricante_id)
    values('Geladeira',
            'Refrigerador Frost-free com acesso à internet das coisas.',
            2500,
            10,
            6),
            (
                'Ipad mini',
                'Tablet Apple com tela retina display de 4K, memoria interna de 64Gb, acesso ai ICloud',
                5000,
                3,
                3
            ),
            (
                'Iphone 13 Pro Max',
                'Alta durabilidade, processador Bionic 14, 128 GB de armazenamento e 6GB de RAM.',
                6999.99,
                8,
                3
            );

```

## inseir mais de 2 fabricantes e produtos:

## fabricantes: positivo e Microsoft

## Produto1 : Xbox, console de última geração 2500, 6, (fabricante microsoft)
## Produto2 : Ultrabook, equipamento com processamento AMD Ryzem5, 12GB de RAM, 4500, 12, (fabricante positivo)


``` SQL
    insert into fabricantes (nome) values('Microsoft');
    insert into fabricantes (nome) values('Positivo');

    ```


``` sql
    insert into produtos(nome, descricao, preco, quantidade, fabricante_id)
    values('Xbox',
            ' Xbox, console de última geração.',
            2500,
            6,
            7
            ),
            (
                'Ultrabook',
                'equipamento com processamento AMD Ryzem5, 12GB de RAM.',
                4500,
                12,
                8
            );

```


## resumo (select)
### ler dados da tabela proutos

``` sql
    select * from produtos;
    select nome, preco from produtos;
    select nome from produtos where preco < 5000;
    select nome , descricao from produtos where fabricante_id = 3;


```

### Operadores logicos E e OU 
``` SQL
select * from produtos where preco>=5000 and preco <8000;
```
# OU
# Consulte nome, preco de produtos da appe ou Microsoft

``` sql
select nome, preco from produtos where fabricante_id = 3 or fabricante_id = 8;
```

``` sql
    select nome, preco from produtos where fabricante_id in(3,8);
```

# Mostrar nome preço e quanidade de todos os fabricantes exceto os da apple

``` sql
select nome, preco, quantidade from produtos where not fabricante_id = 3;
```


``` sql
select nome, preco, quantidade from produtos where fabricante_id = 3;
```

## filtro que ordena pelo nome (AZ) crescente

```sql
    select nome, preco from produtos order by nome;

```

## filtro que ordena pelo nome (ZA) decresente

```  sql
   select nome, preco from produtos order by nome desc;

```    




## operações e funçoes de agregação

#  Traz o resultado da soma de todos os preços

```sql
SELECT SUM(preco) from produtos;

```
```sql
SELECT SUM(preco) as TOTAL from produtos;

```
```sql
SELECT SUM(quantidade) as "Quantidade em estoque" from produtos;

```

# Traz o resultado da soma da quantidade da apple

```sql
    SELECT SUM(quantidade) as "Quantidade em estoque" from produtos where fabricante_id = 3;
```

## Médias
# media dos preços 

```sql
SELECT avg(preco) as "Média dos preços" from produtos;

```

# media dos preços com 2 casas decimais

```sql
SELECT ROUND(avg(preco),2) as "Média dos preços" from produtos;

```

# Contagem dos produtos
```sql
SELECT count(id) as "quantidade de produtos" from produtos;
```

# Traz o ttotal ( preço unitario * quantidade total)

```sql
SELECT nome, preco, quantidade  (preco*quantidade) as "total" from produtos;
```








# Atualização de dados(UPDATE)

## Atualizar dados de uma tabela 

``` sql
update fabricantes set nome = 'Microsoft Brasil' where id = 8;
```

# Atualização de preço

## mudando o preço do ultrabook da positivo

``` sql
update produtos set preco = 5200 where id = 7;
```

# Atualização da quantidade 
## Mudar a quantidade de produtos da Asus e da apple para 15

```sql
update produtos set quantidade = 15 where fabricante_id = 1 or fabricante_id = 3;
```

# Excluir dados de uma tabela
## Excluir um fabricante 

```sql
delete from fabricantes where id = 4; --LG
```

## Excluir produtos 
``` sql
    delete from produtos where preco <2000 and preco > 500;
```