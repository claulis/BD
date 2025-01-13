# DDL (Data Definition Language)

A **DDL (Data Definition Language)**, ou **Linguagem de Definição de Dados**, é uma subcategoria da SQL usada para definir, alterar e remover estruturas de dados em um banco de dados.  

Ela é essencial para criar e gerenciar objetos como **bancos de dados**, **tabelas**, **índices**, **visões** e **esquemas**, definindo a base sobre a qual os dados serão organizados e manipulados.


## **Principais Funções da DDL**
1. **Definir Estruturas de Dados**
   - Criar bancos de dados, tabelas, colunas, índices e outros objetos que armazenarão ou facilitarão o acesso aos dados.
   
2. **Modificar Estruturas Existentes**
   - Alterar a configuração de tabelas, como adicionar novas colunas, alterar tipos de dados, ou renomear tabelas e colunas.

3. **Gerenciar Restrições**
   - Aplicar restrições como **chaves primárias**, **chaves estrangeiras**, **unique**, **not null**, entre outras, para garantir a integridade dos dados.

4. **Remover Estruturas**
   - Excluir tabelas, bancos de dados ou outros objetos que não são mais necessários.


### **Importância da DDL**
1. **Criação de Base para os Dados**
   - A DDL é o ponto inicial de qualquer aplicação que usa banco de dados, pois define onde e como os dados serão armazenados.

2. **Garantia de Integridade**
   - A DDL permite implementar regras que asseguram que os dados serão consistentes e válidos, como **restrições de chave estrangeira** e **valores únicos**.

3. **Manutenção e Evolução**
   - Quando as necessidades mudam (como novos requisitos de negócio), a DDL possibilita modificar estruturas existentes sem recriar o banco de dados inteiro.


### **Vantagens**
- Simplifica o gerenciamento da estrutura de dados.  
- Integração com ferramentas e frameworks que automatizam a criação de bancos de dados.  
- Permite fácil adaptação às mudanças nos requisitos de projeto.  
 

---
## **Listas de Comandos**

| **Comando**              | **Descrição**                                                                                   | **MySQL**                                                                                         | **SQL Server**                                                                                   |
|---------------------------|-----------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|
| **CREATE DATABASE**       | Cria um banco de dados.                                                                       | `CREATE DATABASE nome_db;`                                                                       | `CREATE DATABASE nome_db;`                                                                       |
| **DROP DATABASE**         | Exclui um banco de dados.                                                                     | `DROP DATABASE nome_db;`                                                                         | `DROP DATABASE nome_db;`                                                                         |
| **CREATE TABLE**          | Cria uma tabela com colunas e tipos de dados.                                                 | ```sql<br>CREATE TABLE nome_tabela (id INT PRIMARY KEY, nome VARCHAR(100));```                   | ```sql<br>CREATE TABLE nome_tabela (id INT PRIMARY KEY, nome NVARCHAR(100));```                  |
| **DROP TABLE**            | Exclui uma tabela.                                                                            | `DROP TABLE nome_tabela;`                                                                        | `DROP TABLE nome_tabela;`                                                                        |
| **ALTER TABLE**           | Altera a estrutura de uma tabela (adicionar, remover colunas ou modificar tipos).             | ```sql<br>ALTER TABLE nome_tabela ADD nova_coluna INT;```                                        | ```sql<br>ALTER TABLE nome_tabela ADD nova_coluna INT;```                                        |
| **RENAME TABLE**          | Renomeia uma tabela.                                                                          | `RENAME TABLE antiga_tabela TO nova_tabela;`                                                     | `EXEC sp_rename 'antiga_tabela', 'nova_tabela';`                                                 |
| **TRUNCATE TABLE**        | Remove todos os dados de uma tabela, mas mantém a estrutura.                                  | `TRUNCATE TABLE nome_tabela;`                                                                    | `TRUNCATE TABLE nome_tabela;`                                                                    |
| **CREATE INDEX**          | Cria um índice para otimizar consultas.                                                      | ```sql<br>CREATE INDEX idx_nome ON tabela(coluna);```                                            | ```sql<br>CREATE INDEX idx_nome ON tabela(coluna);```                                            |
| **DROP INDEX**            | Remove um índice.                                                                             | ```sql<br>DROP INDEX idx_nome ON tabela;```                                                      | `DROP INDEX idx_nome;`                                                                           |
| **CREATE VIEW**           | Cria uma visão virtual baseada em uma consulta SQL.                                          | ```sql<br>CREATE VIEW nome_view AS SELECT col FROM tabela;```                                    | ```sql<br>CREATE VIEW nome_view AS SELECT col FROM tabela;```                                    |
| **DROP VIEW**             | Remove uma visão virtual.                                                                     | `DROP VIEW nome_view;`                                                                           | `DROP VIEW nome_view;`                                                                           |
| **CREATE SCHEMA**         | Cria um esquema para organizar objetos no banco de dados.                                     | **Não suportado diretamente** (equivalente ao banco de dados).                                   | `CREATE SCHEMA nome_schema;`                                                                     |
| **ALTER SCHEMA**          | Transfere objetos para um esquema.                                                            | **Não suportado diretamente.**                                                                  | ```sql<br>ALTER SCHEMA novo_schema TRANSFER tabela;```                                           |
| **CREATE USER**           | Cria um novo usuário no banco de dados.                                                       | `CREATE USER 'nome_user'@'localhost' IDENTIFIED BY 'senha';`                                     | `CREATE LOGIN nome_user WITH PASSWORD = 'senha'; CREATE USER nome_user FOR LOGIN nome_user;`    |
| **DROP USER**             | Remove um usuário do banco de dados.                                                          | `DROP USER 'nome_user';`                                                                         | `DROP USER nome_user;`                                                                           |
| **ADD CONSTRAINT**        | Adiciona uma restrição a uma tabela, como chave primária, estrangeira ou unique.              | ```sql<br>ALTER TABLE tabela ADD CONSTRAINT pk_id PRIMARY KEY (id);```                           | ```sql<br>ALTER TABLE tabela ADD CONSTRAINT pk_id PRIMARY KEY (id);```                           |
| **DROP CONSTRAINT**       | Remove uma restrição de uma tabela.                                                           | ```sql<br>ALTER TABLE tabela DROP CONSTRAINT pk_id;```                                           | ```sql<br>ALTER TABLE tabela DROP CONSTRAINT pk_id;```                                           |
| **CREATE PRIMARY KEY**    | Define uma coluna ou grupo de colunas como chave primária.                                    | ```sql<br>ALTER TABLE tabela ADD PRIMARY KEY (coluna);```                                        | ```sql<br>ALTER TABLE tabela ADD CONSTRAINT pk_tabela PRIMARY KEY (coluna);```                   |
| **DROP PRIMARY KEY**      | Remove a chave primária de uma tabela.                                                        | `ALTER TABLE tabela DROP PRIMARY KEY;`                                                           | `ALTER TABLE tabela DROP CONSTRAINT pk_nome;`                                                    |
| **CREATE FOREIGN KEY**    | Define uma relação entre duas tabelas usando uma chave estrangeira.                           | ```sql<br>ALTER TABLE tabela ADD CONSTRAINT fk_nome FOREIGN KEY (coluna) REFERENCES ref_tabela(coluna);```| ```sql<br>ALTER TABLE tabela ADD CONSTRAINT fk_nome FOREIGN KEY (coluna) REFERENCES ref_tabela(coluna);```|
| **DROP FOREIGN KEY**      | Remove uma chave estrangeira.                                                                 | ```sql<br>ALTER TABLE tabela DROP FOREIGN KEY fk_nome;```                                        | ```sql<br>ALTER TABLE tabela DROP CONSTRAINT fk_nome;```                                         |
### **Exemplo Prático: Ciclo de Uso**
Imagine que você está desenvolvendo um sistema de cadastro de clientes:

#### 1. **Criação de Estrutura**  
   - Criar o banco de dados:  
     ```sql
     CREATE DATABASE sistema_clientes;
     ```
   - Criar a tabela de clientes:  
     ```sql
     CREATE TABLE clientes (
         id INT PRIMARY KEY,
         nome VARCHAR(100) NOT NULL,
         email VARCHAR(100) UNIQUE
     );
     ```

#### 2. **Alteração de Estrutura**
   - Adicionar uma nova coluna para o telefone:  
     ```sql
     ALTER TABLE clientes ADD telefone VARCHAR(15);
     ```

#### 3. **Exclusão de Estrutura**
   - Remover a tabela se não for mais necessária:  
     ```sql
     DROP TABLE clientes;
     ```


### **Novidades Adicionais**

1. **Chaves Primárias e Estrangeiras**  
   - Tanto o MySQL quanto o SQL Server possuem suporte completo para criar e remover chaves primárias e estrangeiras, mas os nomes das *constraints* são opcionais no MySQL, enquanto são obrigatórios no SQL Server.

2. **`CREATE SCHEMA`**  
   - No MySQL, o comando equivalente a `CREATE SCHEMA` é simplesmente `CREATE DATABASE`, pois os *schemas* não são uma entidade distinta.  

3. **Gestão de Usuários**  
   - O MySQL e o SQL Server têm sintaxes diferentes para gerenciamento de usuários. O SQL Server separa *logins* (para a instância) de *users* (para o banco de dados).  

4. **Alteração de Objetos**  
   - Para renomear tabelas ou colunas, o SQL Server utiliza `sp_rename`, enquanto o MySQL tem comandos específicos (`RENAME TABLE`).
  
--

## **VIEWS**

Uma view de banco de dados (ou "visão") é uma tabela virtual composta pelo resultado de uma consulta SQL. Ela não contém dados fisicamente armazenados, mas oferece uma maneira de acessar e apresentar informações de outras tabelas em um formato personalizado e simplificado. Pense nela como uma "janela" para os dados: você define uma consulta SQL que filtra, organiza e manipula as informações, e a view apresenta essa visão dos dados como se fosse uma tabela.

### Para que serve uma View?
Abstrair a Complexidade de Consultas:
1. Caso a consulta seja muito longa ou complexa, a view permite encapsular essa lógica. Assim, você pode reutilizá-la como uma tabela simples, sem a necessidade de recriar a consulta cada vez que precisar dela.
Exemplo: Um relatório que requer dados de várias tabelas pode ser encapsulado por uma view para facilitar futuras interações.
2. Aumentar a Segurança dos Dados:
Você pode restringir o acesso a colunas ou informações sensíveis e permitir que os usuários acessem apenas a view. Isso impede que eles visualizem ou modifiquem dados diretamente nas tabelas.
Exemplo: Em uma tabela de funcionários, você pode criar uma view que oculte os salários e outros dados confidenciais.
3. Padronizar Acesso aos Dados:
Views garantem consistência ao definir como os dados devem ser apresentados. Isso é útil, por exemplo, para criar fórmulas ou cálculos recorrentes que precisariam aparecer em relatórios.
4. Facilitar a Integração com Aplicações:
Você pode criar uma view simplificada para que um sistema ou aplicação acesse os dados sem se preocupar com a estrutura complexa do banco.

### Quando usar uma View?
1. Consulta Frequente:
Quer encapsular uma consulta que será usada frequentemente para evitar repetições (ex.: relatórios mensais ou históricos de vendas).
2. Acesso Restrito:
Ao compartilhar apenas parte dos dados de uma tabela ou ao aplicar filtros específicos que limitam quais registros podem ser visualizados por determinados usuários.

*Suponha que você tenha uma tabela de funcionários com informações sensíveis (salário, CPF, etc.), mas quer compartilhar apenas os nomes e os cargos.*

Criando uma View:

```Sql
   CREATE VIEW vw_funcionarios_publicos AS
   SELECT nome, cargo 
   FROM funcionarios;
```

Assim, qualquer usuário que utilizar a view só verá os dados permitidos, mantendo a segurança.

3. Consulta Complexa:
Quando as consultas utilizam múltiplos joins, funções agregadas ou filtros complexos. Isso melhora a legibilidade e reduz a necessidade de repetir a lógica em diferentes partes do sistema.
4. Organização e Manutenção do Banco de Dados:
Para simplificar a estrutura lógica do banco, especialmente em sistemas grandes onde há muitos relacionamentos entre tabelas.
Exemplos de Uso Prático:
5. Simplificação de Consulta:

*Se, por exemplo, você precisa obter o nome do cliente, o nome do produto e o valor total de um pedido, mas essa consulta exige relacionar três tabelas, você pode criar uma view para facilitar o acesso a esses dados.*

Consulta Base:

```Sql
   SELECT 
       c.nome AS cliente, 
       p.nome_produto, 
       o.valor_total 
   FROM pedidos o
   INNER JOIN clientes c ON o.id_cliente = c.id_cliente
   INNER JOIN produtos p ON o.id_produto = p.id_produto;
```

Criando uma View:

```Sql
   CREATE VIEW vw_relatorio_pedidos AS
   SELECT 
       c.nome AS cliente, 
       p.nome_produto, 
       o.valor_total 
   FROM pedidos o
   INNER JOIN clientes c ON o.id_cliente = c.id_cliente
   INNER JOIN produtos p ON o.id_produto = p.id_produto;
```

Usando a View:

```Sql
   SELECT * FROM vw_relatorio_pedidos WHERE valor_total > 1000;
```

Acesso Restrito:



6. Relatórios Pré-definidos:

Uma view pode ser usada para criar relatórios prontos, como vendas mensais, faturamento anual, desvios de orçamento, e outros dados frequentemente analisados.

Exemplo de Relatório Mensal:

```Sql
Copiar
   CREATE VIEW vw_vendas_mensais AS
   SELECT 
       MONTH(data_venda) AS mes,
       YEAR(data_venda) AS ano,
       SUM(valor_total) AS total_vendas
   FROM vendas
   GROUP BY YEAR(data_venda), MONTH(data_venda);
```

Agora, pode-se simplesmente consultar:

```Sql
   SELECT * FROM vw_vendas_mensais WHERE mes = 1 AND ano = 2025;
```

7. Manutenção: Caso você altere a definição de uma consulta dentro da view, todos os usuários e aplicações conectadas a ela usarão automaticamente a nova versão.
8. Desempenho: Em alguns casos (dependendo do banco), views podem melhorar a performance ao armazenar planos de execução otimizados.

>Views complexas em tabelas com muitos dados podem afetar o desempenho, principalmente aquelas com JOINs e funções agregadas. Avalie se uma view materializada não seria mais adequada.

9. Dependências: Se a estrutura das tabelas base for alterada (ex.: nomes de colunas ou tipos de dados), a view pode se tornar inválida. Certifique-se de manter a consistência no design.

10. Operações de Escrita: Nem todas as views permitem operações de INSERT, UPDATE ou DELETE. Quando permitem, mudanças feitas na view afetam diretamente as tabelas originais.

### Exemplos DDL
1. https://github.com/claulis/BD/blob/main/ddl/ddl_create_mysql.sql
2. https://github.com/claulis/BD/blob/main/ddl/ddl_create_tsql.sql


