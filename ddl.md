# DDL (Data Definition Language)

A **DDL (Data Definition Language)**, ou **Linguagem de Definição de Dados**, é uma subcategoria da SQL usada para definir, alterar e remover estruturas de dados em um banco de dados.  

Ela é essencial para criar e gerenciar objetos como **bancos de dados**, **tabelas**, **índices**, **visões** e **esquemas**, definindo a base sobre a qual os dados serão organizados e manipulados.


### **Principais Funções da DDL**
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
### **Listas de Comandos**

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
  
### Exemplos DDL


