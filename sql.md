# Introdução à linguagem SQL

Antes de começar a entender a SQL é importante conhecer alguns conceitos introdutórios

### Linguagens Declarativas  

Linguagens **declarativas** são aquelas nas quais o programador descreve *o que deve ser feito*, em vez de detalhar *como fazer*. Elas focam no resultado desejado, deixando para o sistema a responsabilidade de determinar a melhor forma de alcançar esse objetivo.

Esse paradigma é usado principalmente em situações onde a lógica do programa pode ser expressa por meio de declarações de alto nível, reduzindo a necessidade de controle explícito do fluxo de execução.  

### **Características das Linguagens Declarativas**
1. **Abstração de Controle**  
   - O programador se concentra no problema e não na implementação detalhada.  

2. **Estilo de Programação Natural**  
   - Muitas vezes, a programação declarativa parece mais próxima da linguagem humana ou lógica matemática.  

3. **Imutabilidade de Estados**  
   - Em geral, linguagens declarativas evitam alterações no estado do programa, o que simplifica o raciocínio sobre o código.

4. **Aplicações Específicas**  
   - Usadas amplamente em bancos de dados, desenvolvimento web e inteligência artificial, onde a lógica pode ser expressa de forma declarativa.

---

### **Exemplos de Linguagens Declarativas**
- **SQL (Structured Query Language)**  
  Utilizada para manipulação e consulta de dados em bancos de dados.  
  Exemplo:  
  ```sql
  SELECT nome, idade FROM alunos WHERE idade > 18;
  ```
  Aqui, o programador especifica "quais dados deseja" (nome e idade de alunos maiores de 18 anos), mas não como o banco de dados deve buscar ou organizar esses dados.

---

- **HTML (HyperText Markup Language)**  
  Utilizada para estruturar conteúdo na web.  
  Exemplo:  
  ```html
  <h1>Bem-vindo ao site</h1>
  <p>Este é um parágrafo de exemplo.</p>
  ```
  O desenvolvedor declara o que é o conteúdo (título, parágrafo), e o navegador interpreta como renderizá-lo.

---

- **Prolog**  
  Uma linguagem de programação lógica usada em IA. O programador declara regras e fatos, e o sistema resolve consultas baseado nisso.  
  Exemplo:  
  ```prolog
  pai(joao, maria).
  pai(joao, pedro).
  irmao(X, Y) :- pai(Z, X), pai(Z, Y), X \= Y.
  ```
  Aqui, o programador descreve fatos (quem é pai de quem) e regras (quem é irmão de quem). O sistema deduz as respostas, sem que o programador escreva explicitamente os passos para isso.

---

- **XQuery**  
  Usada para consultar e manipular dados em XML.  
  Exemplo:  
  ```xquery
  for $produto in /produtos/produto where $produto/preco > 100 return $produto/nome
  ```
  Declara-se a lógica para selecionar os nomes dos produtos com preço acima de 100, e o sistema executa a operação.

---

### **Vantagens**
1. **Foco no Problema**  
   - Permite que o programador se concentre nos objetivos, reduzindo a complexidade do código.  
   
2. **Legibilidade**  
   - Geralmente, o código declarativo é mais simples e legível, facilitando manutenção e colaboração.  

3. **Menos Erros**  
   - Por evitar controle explícito do fluxo e estado, reduz-se a probabilidade de bugs.

---

### **Desvantagens**
1. **Menor Controle**  
   - Em algumas situações, pode ser frustrante não ter controle explícito sobre como algo será executado.  

2. **Desempenho Dependente da Implementação**  
   - A eficiência depende de como a linguagem e suas ferramentas subjacentes estão otimizadas.  

3. **Curva de Aprendizado para Regras Complexas**  
   - Definir regras pode ser simples em casos básicos, mas difícil em cenários avançados.  

---

### Comparação com Linguagens Imperativas  
| **Aspecto**         | **Declarativa**                                 | **Imperativa**(C,C++, etc..)                             |
|----------------------|------------------------------------------------|--------------------------------------------|
| **Foco**            | O que fazer (resultado final)                  | Como fazer (passo a passo)                 |
| **Exemplo**         | `SELECT * FROM alunos WHERE idade > 18;`        | Laços e condições para filtrar os dados    |
| **Controle do Fluxo**| O sistema controla                             | O programador controla                     |
| **Usabilidade**     | Ideal para abstrações e domínio específico      | Ideal para controle detalhado e flexível   |



SQL (Structured Query Language, ou Linguagem de Consulta Estruturada) é uma linguagem padrão para gerenciamento e manipulação de bancos de dados relacionais. Criado inicialmente na década de 1970 pela IBM, o SQL se tornou a base para interação com sistemas de banco de dados como MySQL, PostgreSQL, SQL Server, Oracle, entre outros.

### O que é SQL?  
O SQL é usado para realizar diversas operações em bancos de dados, como:  
- **Criar estruturas de dados** (tabelas, índices, esquemas).  
- **Inserir, consultar, atualizar e excluir dados** (as operações CRUD).  
- **Controlar o acesso e a segurança dos dados** (criação de usuários e permissões).  
- **Gerenciar transações** (garantir que operações complexas sejam realizadas de forma consistente).  

### Características do SQL  

#### 1. **Linguagem Declarativa**
O SQL é uma linguagem declarativa, ou seja, você especifica o que deseja que o sistema faça (como selecionar dados), sem se preocupar com os detalhes de como ele será realizado.

#### 2. **Portabilidade**
A maioria dos sistemas de bancos de dados relacionais suporta SQL, tornando-o amplamente utilizado e flexível.

#### 3. **Conformidade com Padrões**
Há padrões estabelecidos pelo ANSI (American National Standards Institute) e ISO para SQL, garantindo que a linguagem seja consistente. No entanto, algumas implementações adicionam extensões proprietárias.

#### 4. **Ampla Aplicação**
SQL é usado para:
   - Consultas simples ou complexas.
   - Agregações e cálculos em grandes volumes de dados.
   - Combinação de dados de múltiplas tabelas usando **joins**.
   - Controle de integridade e restrições.

#### 5. **Operações Baseadas em Conjuntos**
O SQL trabalha bem com conjuntos de dados, permitindo operações em múltiplas linhas simultaneamente.

#### 6. **Versatilidade**
Com o SQL, é possível:
   - Criar e modificar estruturas (DDL - *Data Definition Language*).
   - Manipular dados (DML - *Data Manipulation Language*).
   - Controlar transações (TCL - *Transaction Control Language*).
   - Gerenciar segurança e usuários (DCL - *Data Control Language*).

---

### Exemplos de principais comandos SQL  

1. **DDL (Data Definition Language)**  
Define a estrutura do banco de dados. Exemplos:  
   ```sql
   CREATE TABLE alunos (
       id INT PRIMARY KEY,
       nome VARCHAR(100),
       idade INT
   );

   ALTER TABLE alunos ADD coluna_email VARCHAR(100);
   DROP TABLE alunos;
   ```

2. **DML (Data Manipulation Language)**  
Manipula dados nas tabelas. Exemplos:  
   ```sql
   INSERT INTO alunos (id, nome, idade) VALUES (1, 'João', 20);
   UPDATE alunos SET idade = 21 WHERE id = 1;
   DELETE FROM alunos WHERE id = 1;
   ```

3. **DQL (Data Query Language)**  
Consulta dados. Exemplo:  
   ```sql
   SELECT nome, idade FROM alunos WHERE idade > 18;
   ```

4. **DCL (Data Control Language)**  
Gerencia permissões e segurança. Exemplo:  
   ```sql
   GRANT SELECT, INSERT ON alunos TO usuario_teste;
   REVOKE INSERT ON alunos FROM usuario_teste;
   ```

5. **TCL (Transaction Control Language)**  
Gerencia transações. Exemplos:  
   ```sql
   BEGIN TRANSACTION;
   UPDATE alunos SET idade = 22 WHERE id = 2;
   COMMIT;

   ROLLBACK; -- Reverte mudanças não confirmadas
   ```

### Diferenças entre MySQL e SQL Server (Transact SQL/T-SQL)


| **Aspecto**               | **MySQL**                                                                                     | **SQL Server**                                                                                  |
|----------------------------|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| **Propriedade**            | Open Source (Oracle)                                                                          | Proprietário (Microsoft)                                                                       |
| **SGBD**                   | MySQL é um SGBD relacional voltado para desempenho e simplicidade.                          | SQL Server é um SGBD relacional robusto com foco em integração corporativa e ferramentas BI.    |
| **Sintaxe de Criação de Bancos** | `CREATE DATABASE nome_db;`                                                              | `CREATE DATABASE nome_db;`                                                                     |
| **Suporte a Schemas**      | **Não suporta diretamente** (equivalente ao banco de dados).                                  | **Suporta** nativamente: `CREATE SCHEMA nome_schema;`                                          |
| **Tipos de Dados**         | Tipos como `TINYINT`, `MEDIUMTEXT`, `ENUM`, `SET` exclusivos.                                | Tipos como `UNIQUEIDENTIFIER`, `MONEY`, `DATETIMEOFFSET` exclusivos.                           |
| **Suporte a JSON**         | Suporte nativo para coluna tipo `JSON` com funções específicas.                              | Também suporta JSON, mas como tipo de texto com funções de manipulação (a partir do SQL Server 2016).|
| **Comando para Limitar Resultados** | `LIMIT` usado para limitar linhas retornadas: `SELECT * FROM tabela LIMIT 10;`       | `TOP` ou `OFFSET FETCH` usados: `SELECT TOP 10 * FROM tabela;` ou `OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;` |
| **Auto Incremento**        | Usa `AUTO_INCREMENT`: `id INT AUTO_INCREMENT PRIMARY KEY;`                                   | Usa `IDENTITY`: `id INT IDENTITY(1,1) PRIMARY KEY;`                                           |
| **Comando para Renomear Tabelas** | `RENAME TABLE antiga_tabela TO nova_tabela;`                                           | Usa `sp_rename`: `EXEC sp_rename 'antiga_tabela', 'nova_tabela';`                              |
| **Índices**                | Suporte limitado para índices avançados (ex.: *partial indexes* não nativos).               | Suporte completo a índices avançados (*filtered indexes*, *columnstore indexes*).             |
| **Engines de Armazenamento**| Suporte a múltiplos engines como InnoDB, MyISAM, etc.                                        | Apenas um engine nativo.                                                                       |
| **Transações**             | Totalmente suportadas apenas em engines transacionais como InnoDB.                           | Totalmente suportadas por padrão.                                                              |
| **Triggers**               | Suporte básico com menos flexibilidade para múltiplos eventos em uma tabela.                | Suporte robusto, permite múltiplos triggers por evento.                                        |
| **Stored Procedures**      | Suporta com limitações na manipulação de variáveis complexas.                                | Suporte completo, com mais ferramentas (ex.: variáveis e lógica complexa).                     |
| **Views Atualizáveis**     | Suporte condicional, dependendo da consulta.                                                 | Mais robusto, com suporte a várias operações em views.                                         |
| **Suporte a Particionamento** | Implementação limitada e manual.                                                           | Suporte nativo a particionamento de tabelas.                                                   |
| **Backup e Recuperação**   | Backup limitado a comandos SQL (`mysqldump`) ou ferramentas de terceiros.                    | Suporte integrado a backups completos, diferenciais e de logs de transações.                   |
| **Suporte a Hierarquias**  | Não possui tipos ou métodos nativos para hierarquias, exige consultas recursivas manuais.    | Possui tipos e métodos nativos como `HIERARCHYID` para hierarquias.                            |
| **Comando para Truncar Tabelas** | `TRUNCATE TABLE nome_tabela;`                                                           | `TRUNCATE TABLE nome_tabela;`                                                                  |
| **Gerenciamento de Conexões** | Melhor desempenho com conexões concorrentes altas.                                         | Melhor para operações complexas em cenários de grandes cargas corporativas.                    |
| **Integridade Referencial** | Suporte via **FOREIGN KEY**, mas com restrições dependendo do engine.                       | Suporte completo a integridade referencial com validação automática.                          |
| **Interface Gráfica**      | MySQL Workbench ou ferramentas de terceiros.                                                | SQL Server Management Studio (SSMS), uma interface robusta integrada.                         |

---

#### **Resumo das Diferenças**
- **MySQL** é mais leve, flexível e frequentemente usado em aplicações web ou de pequeno a médio porte, com foco em desempenho e simplicidade.  
- **SQL Server** é mais robusto e ideal para ambientes corporativos, com suporte avançado para BI, ferramentas nativas de administração e integração com o ecossistema da Microsoft.

### Conformidade com o padrão ANSI
O padrão SQL seguido pelo **MySQL** e pelo **SQL Server** é baseado no **SQL ANSI/ISO**, que define a linguagem de consulta estruturada como um padrão para gerenciamento de bancos de dados relacionais. No entanto, ambos os sistemas adicionam suas próprias extensões e particularidades. 



#### **Padrão SQL ANSI/ISO**
- A **American National Standards Institute (ANSI)** e a **International Organization for Standardization (ISO)** definem padrões para SQL, como:
  - **SQL-92**: Um dos primeiros padrões amplamente adotados.
  - **SQL:1999**: Introdução de funcionalidades como triggers, UDFs (funções definidas pelo usuário) e consultas recursivas.
  - **SQL:2003**: Adiciona suporte a XML e *window functions*.
  - **SQL:2011**: Introdução do suporte a manipulação de dados temporais.
  - **SQL:2016**: Melhorias em JSON e procedimentos armazenados.

---

#### **Conformidade ao Padrão**
| **Aspecto**               | **MySQL**                                                                                 | **SQL Server**                                                                            |
|----------------------------|-------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| **Nível de Conformidade**  | MySQL segue parcialmente o SQL padrão (ANSI SQL-92 e SQL:1999), mas adiciona extensões.   | SQL Server tem uma conformidade maior com o SQL padrão (ANSI SQL-92, SQL:1999 e SQL:2003).|
| **Tipos de Dados**         | Inclui tipos exclusivos, como `ENUM`, `SET` (não padronizados).                          | Inclui tipos como `UNIQUEIDENTIFIER` e `XML` (extensões proprietárias).                  |
| **Limitação de Linhas**    | Usa `LIMIT`, que não é parte do padrão ANSI.                                              | Usa `TOP` e `OFFSET FETCH`, sendo este último mais próximo do padrão ANSI SQL:2008.      |
| **Auto Incremento**        | `AUTO_INCREMENT` é específico do MySQL.                                                  | `IDENTITY` é proprietário do SQL Server, mas mais alinhado ao padrão.                   |
| **Funções de Agregação**   | Suporte às principais funções padronizadas, mas algumas (como `GROUP_CONCAT`) são exclusivas. | Suporte às principais funções ANSI e extensões, como funções analíticas avançadas.      |
| **Manipulação de JSON**    | Suporte nativo ao tipo de dado `JSON`, mas com sintaxe não padronizada.                   | Segue o padrão SQL:2016 para manipulação de JSON.                                        |
| **Engines de Armazenamento**| MySQL permite múltiplos mecanismos (ex.: InnoDB, MyISAM), o que não é parte do padrão.   | SQL Server usa um único engine, mas está mais alinhado ao padrão ANSI.                  |
| **Suporte a Window Functions**| Adotado no MySQL 8.0 (parcial conformidade com SQL:2003).                              | Suporte completo desde o SQL Server 2012 (conforme SQL:2003).                           |
| **Triggers e Procedures**  | Funcionalidades básicas, mas menos padronizadas e flexíveis.                             | Suporte avançado e alinhado com o padrão.                                               |
| **Transações**             | Suporte a transações apenas em engines específicas (InnoDB).                             | Suporte completo nativo com conformidade ao padrão.                                     |
| **Comandos de Alteração**  | `RENAME TABLE` e `MODIFY COLUMN` são proprietários.                                       | Uso de `sp_rename` e `ALTER` mais próximo do padrão.                                    |

---

#### **Resumo**
- **MySQL**:  
  - Prioriza simplicidade e desempenho.  
  - Não é totalmente alinhado ao padrão SQL ANSI, mas fornece extensões úteis para aplicativos web e sistemas de médio porte.  

- **SQL Server**:  
  - Alta conformidade com o padrão SQL ANSI/ISO.  
  - Focado em ambientes corporativos e sistemas complexos, oferecendo extensões avançadas para análise de dados e BI.  



 
