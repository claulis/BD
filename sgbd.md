# SGBDs

## 1. **O que é um Sistema Gerenciador de Bancos de Dados (SGDB)?**

Um SGDB é um software que permite a criação, manutenção e acesso a bases de dados. Ele é responsável por gerenciar a estrutura dos dados, garantir a integridade e a consistência dos dados, e fornecer mecanismos para recuperar e manipular os dados de forma eficiente.

Existem várias definições de SGBD.

Segundo **Silberschatz**, um Sistema Gerenciador de Banco de Dados (SGBD) é definido como:

> "Um sistema de gerenciamento de banco de dados (DBMS) é uma coleção de dados inter-relacionados e um conjunto de programas para acessar esses dados." 

Essa definição ressalta a importância tanto dos dados quanto dos programas que permitem a manipulação e o acesso a eles. 
O SGBD não é apenas um repositório de informações, mas também uma ferramenta que facilita a interação com esses dados de maneira eficiente e organizada.

Segundo **Navathe**, um Sistema Gerenciador de Banco de Dados (SGBD) é definido como:

> "Um SGBD é uma coleção de programas que permite aos usuários criar e manter um banco de dados."

Essa definição destaca que o SGBD não é apenas um repositório de dados, mas sim um conjunto de ferramentas que possibilita a criação, gerenciamento e manutenção dos dados armazenados. O SGBD facilita a interação dos usuários com os dados, permitindo operações como inserção, consulta, atualização e exclusão.

Segundo C. J. Date, um Sistema Gerenciador de Banco de Dados (SGBD) é definido como:

> "Um sistema de banco de dados é basicamente apenas um sistema computadorizado de manutenção de registros."

Essa definição enfatiza a função primária do SGBD como uma ferramenta para gerenciar e manter registros de dados de forma estruturada, permitindo operações como adição, modificação e consulta a esses registros.

## 2. **Importância dos SGDBs**

1. **Organização e Gerenciamento de Dados:**
   - Os SGDBs organizam os dados de forma estruturada, facilitando a recuperação e manipulação.

2. **Integridade e Consistência dos Dados:**
   - Eles garantem que os dados sejam consistentes e não contenham informações contraditórias.

3. **Escalabilidade:**
   - Os SGDBs permitem que as bases de dados cresçam ou diminuam conforme necessário, sem afetar a performance.

4. **Segurança:**
   - Eles fornecem mecanismos robustos para proteger os dados contra acessos não autorizados e ataques maliciosos.

## 3. funções dos SGBDs

As funções de um Sistema Gerenciador de Banco de Dados (SGBD) são essenciais para o gerenciamento eficiente de dados.

| **Função**                     | **Descrição**                                                                                                                                                                                                                  |
|--------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Gerenciamento de Dados**     | Permite a criação, leitura, atualização e exclusão (CRUD) de dados. Os SGBDs facilitam operações como inserção, exclusão e consulta de registros em tabelas.                                                                    |
| **Segurança**                  | Controla o acesso aos dados, garantindo que apenas usuários autorizados possam realizar operações específicas. Inclui funcionalidades como autenticação e autorização de acesso.                                                |
| **Controle de Concorrência**   | Gerencia o acesso simultâneo aos dados por múltiplos usuários, evitando conflitos e garantindo a integridade dos dados durante operações concorrentes.                                                                          |
| **Integridade dos Dados**      | Garante que os dados sejam consistentes e válidos através de restrições e regras de integridade (como chaves primárias e estrangeiras).                                                                                       |
| **Backup e Recuperação**       | Implementa rotinas para backup dos dados e recuperação em caso de falhas ou corrupção, assegurando a continuidade do serviço e a proteção das informações.                                                                      |
| **Manipulação de Estruturas**  | Permite a alteração das estruturas das tabelas, como adicionar ou remover campos, além de criar relações entre tabelas.                                                                                                         |
| **Transformação e Apresentação** | Facilita a transformação dos dados para relatórios e visualizações, permitindo a geração de formulários e relatórios baseados nos dados armazenados.                                                                          |
| **Gerenciamento de Metadados** | Mantém um dicionário de dados que contém informações sobre a estrutura do banco de dados, como tabelas, campos e relacionamentos, ajudando na administração do sistema.                                                        |
| **Importação e Exportação**    | Suporta a importação e exportação de dados entre diferentes sistemas ou formatos, permitindo integração com outras aplicações.                                                                                                |
## 4. ACID

ACID é um acrônimo que se refere a quatro propriedades fundamentais que garantem a confiabilidade das transações em um Sistema Gerenciador de Banco de Dados (SGBD).
As propriedades ACID são cruciais para garantir a integridade e a confiabilidade dos dados em sistemas críticos, como bancos, sistemas de reservas e comércio eletrônico. Elas ajudam a prevenir inconsistências e garantem que os dados sejam manipulados de forma segura.

| **Propriedade**  | **Descrição**                                                                                                                                                                                                                          |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Atomicidade**   | Garante que uma transação seja tratada como uma única unidade indivisível. Ou seja, todas as operações dentro da transação devem ser concluídas com sucesso; caso contrário, nenhuma delas é aplicada, evitando a corrupção de dados.  |
| **Consistência**  | Assegura que uma transação leve o banco de dados de um estado válido para outro estado válido. Isso significa que todas as regras e restrições do banco de dados devem ser respeitadas antes e depois da transação.                   |
| **Isolamento**    | Garante que as operações de uma transação sejam isoladas das operações de outras transações. Isso previne problemas como leituras sujas e garante que os resultados de uma transação não sejam visíveis para outras até que ela seja concluída. |
| **Durabilidade**  | Assegura que, uma vez que uma transação é confirmada (committed), suas alterações são permanentes, mesmo em caso de falhas do sistema. Os dados permanecem salvos e podem ser recuperados após um crash ou erro.                           |

## 5. **Tipos de SGDBs**

Os principais tipos de Sistemas Gerenciadores de Banco de Dados (SGBD) e suas características são:

| **Tipo de SGBD**               | **Características**                                                                                                                                                                                                                                 | **Exemplos**                             |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------|
| **Relacional (SQL)**            | - Organiza dados em tabelas inter-relacionadas. <br> - Utiliza chaves primárias e estrangeiras para relacionar dados. <br> - Usa a linguagem SQL para consultas.                                                                                     | Oracle, MySQL, PostgreSQL, Microsoft SQL Server |
| **Não Relacional (NoSQL)**      | - Projetado para armazenar dados não estruturados ou semi-estruturados. <br> - Utiliza modelos como documentos, chave-valor, colunar e gráfico. <br> - Ideal para aplicações que requerem alta escalabilidade e flexibilidade.                         | MongoDB, Cassandra, Redis                |
| **Orientado a Objetos**         | - Armazena dados na forma de objetos, semelhante à programação orientada a objetos. <br> - Integra funcionalidades de orientação a objetos aos bancos de dados.                                                                                      | ObjectDB, db4o                           |
| **Hierárquico**                 | - Organiza dados em uma estrutura de árvore. <br> - Cada registro tem um único proprietário, formando uma relação pai-filho.                                                                                                                                  | IBM Information Management System         |
| **De Rede**                     | - Estrutura mais complexa que o modelo hierárquico, permitindo múltiplas relações entre registros. <br> - Os dados são organizados em uma rede de registros interconectados.                                                                                 | Integrated Data Store (IDS), TurboIMAGE  |
| **Em Memória**                  | - Armazena dados na memória principal para acesso rápido e consultas de baixa latência. <br> - Ideal para aplicações que exigem alta velocidade de consulta em tempo real.                                                                                | SAP HANA, Oracle Database In-Memory      |
| **Geoespaciais**                | - Especializados em armazenar e consultar dados geoespaciais, como mapas e coordenadas. <br> - Suportam operações geográficas e análises espaciais.                                                                                                    | PostgreSQL com PostGIS, Oracle Spatial   |
| **Em Nuvem**                    | - Hospedados em ambientes de nuvem, oferecendo escalabilidade e flexibilidade sob demanda. <br> - Permitem gerenciamento simplificado e acesso remoto aos dados.                                                                                        | Amazon RDS, Google Cloud SQL              |

Esses tipos de SGBDs atendem a diferentes necessidades e cenários de uso, variando desde aplicações empresariais tradicionais até soluções modernas que requerem alta performance e flexibilidade.

### Quando usar os diferentes tipos?

Aqui está uma tabela que descreve quando usar os diferentes tipos de SGBD, com base nas informações coletadas:

| **Tipo de SGBD**               | **Quando Usar**                                                                                                                                                                                                                         |
|---------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Relacional (SQL)**            | - Quando os dados são estruturados e podem ser organizados em tabelas. <br> - Para aplicações empresariais que exigem transações complexas e integridade referencial. <br> - Ideal para sistemas que utilizam SQL para consultas.          |
| **Não Relacional (NoSQL)**      | - Quando os dados são não estruturados ou semi-estruturados, como documentos JSON. <br> - Para aplicações que precisam de alta escalabilidade e flexibilidade, como redes sociais ou sistemas de gerenciamento de conteúdo.                   |
| **Orientado a Objetos**         | - Quando se trabalha com aplicações que utilizam programação orientada a objetos. <br> - Para armazenar dados complexos que se beneficiam da modelagem de objetos, como em aplicações de design ou CAD.                                   |
| **Hierárquico**                 | - Quando os dados têm uma estrutura fixa e bem definida, como um organograma. <br> - Para sistemas onde as relações entre os dados são estritamente pai-filho, como em algumas aplicações administrativas.                                   |
| **De Rede**                     | - Quando é necessário modelar relações complexas entre dados sem restrições hierárquicas. <br> - Para aplicações que requerem acesso a múltiplas relações entre registros, como sistemas de gestão de projetos.                              |
| **Em Memória**                  | - Quando é necessário acesso extremamente rápido aos dados, como em aplicações financeiras ou jogos online. <br> - Para análises em tempo real onde a latência é crítica.                                                                  |
| **Geoespaciais**                | - Quando se trabalha com dados geográficos ou espaciais, como mapas e coordenadas. <br> - Ideal para sistemas de informações geográficas (SIG), navegação e logística.                                                                       |
| **Em Nuvem**                    | - Quando se busca escalabilidade fácil e gerenciamento simplificado. <br> - Para empresas que desejam reduzir custos com infraestrutura física e aproveitar a flexibilidade da nuvem para aumentar ou diminuir recursos conforme necessário. |

## 6. Componentes Básicos de um SGDB

1. **Motor de Bases de Dados:**
   - É o núcleo do SGDB, responsável por armazenar e gerenciar os dados.

2. **Interface de Utilizador:**
   - Permite que os usuários interajam com o SGDB, criando e executando comandos SQL.

3. **Sistema de Gerenciamento de Bases de Dados:**
   - Gerencia a criação, modificação e exclusão de tabelas, índices, etc.

4. **Sistema de Segurança:**
   - Garante a autenticação e autorização dos usuários, além de proteger os dados contra acessos não autorizados.

5. **Sistema de Recuperação:**
   - Fornece mecanismos para recuperar os dados em caso de falhas ou perda de dados.

## 7. Database Engines

Um motor de banco de dados, também conhecido como mecanismo de armazenamento, é um componente de software fundamental que um Sistema Gerenciador de Banco de Dados (SGBD) utiliza para realizar operações de criação, leitura, atualização e exclusão (CRUD) de dados em um banco de dados.

### Como Funciona um Motor de Banco de Dados

- **Armazenamento de Dados:**
   - O motor organiza os dados em estruturas adequadas, como tabelas, registros e colunas, dependendo do tipo de banco de dados (relacional, NoSQL, etc.).

- **Processamento de Consultas:**
   - Ele interpreta e executa consultas feitas pelo usuário ou pela aplicação. Isso inclui operações para recuperar, modificar ou excluir dados, garantindo que as consultas sejam processadas de forma eficiente.

- **Controle de Concorrência:**
   - O motor gerencia o acesso simultâneo aos dados por múltiplos usuários. Isso é crucial para manter a integridade dos dados e evitar conflitos durante operações concorrentes.

- **Gerenciamento de Transações:**
   - Ele assegura que as transações sejam completadas com sucesso ou revertidas em caso de falha, garantindo as propriedades ACID (Atomicidade, Consistência, Isolamento e Durabilidade).

- **Segurança e Controle de Acesso:**
   - O motor implementa mecanismos para controlar quem pode acessar ou modificar os dados, garantindo a segurança das informações armazenadas.

- **Suporte a Vários Tipos:**
   - Muitos SGBDs modernos suportam diferentes motores dentro do mesmo sistema. Por exemplo, o MySQL oferece suporte a motores como InnoDB e MyISAM, cada um otimizado para diferentes tipos de operações e requisitos.
 

| **Motor de Banco de Dados** | **Propriedades**                                   | **Vantagens**                                                                                   | **Desvantagens**                                                                                 | **Características**                                                                                      | **Vendor**                  |
|------------------------------|---------------------------------------------------|------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|-----------------------------|
| **InnoDB**                   | ACID, suporte a chaves estrangeiras               | Alta confiabilidade, suporte a transações, e recuperação em caso de falhas.                   | Pode ser mais lento que outros motores em operações simples.                                     | Suporte a transações, bloqueio em nível de linha, ideal para aplicações que requerem integridade.       | Oracle (MySQL)              |
| **MyISAM**                   | Não é ACID, bloqueio em nível de tabela           | Rápido em operações de leitura e simples, ideal para aplicações com muitas consultas.          | Não suporta transações nem chaves estrangeiras, vulnerável a corrupção de dados.                | Simplicidade e velocidade em consultas, mas não recomendado para aplicações críticas.                    | Oracle (MySQL)              |
| **MEMORY**                   | Armazenamento em memória, não persistente         | Acesso extremamente rápido aos dados, ideal para tabelas temporárias.                          | Dados são perdidos ao reiniciar o servidor; limitações de tamanho devido à memória disponível.   | Ideal para dados temporários e operações rápidas.                                                        | Oracle (MySQL)              |
| **Federated**                | Conexão a bancos remotos                           | Permite acesso a dados distribuídos sem replicação local.                                     | Dependência da conexão com o banco remoto; desempenho pode ser afetado pela latência da rede.   | Permite criar uma tabela local que referencia dados em um servidor remoto.                                | Oracle (MySQL)              |
| **Aria**                     | Não é ACID, suporte a transações                  | Combina características do MyISAM e InnoDB; oferece recuperação após falhas.                  | Menos popular que outros motores; pode ter menos suporte da comunidade.                         | Boa opção para aplicações que não exigem estrita conformidade ACID.                                     | MariaDB                     |
| **SQLite**                   | ACID, leve e autossuficiente                       | Simplicidade e facilidade de uso; ideal para aplicativos móveis e pequenos projetos.           | Não é ideal para aplicações com alta concorrência ou grandes volumes de dados.                  | Armazenamento em um único arquivo; suporte a transações ACID.                                           | SQLite Consortium            |
| **PostgreSQL**               | ACID, extensível                                   | Suporte a tipos de dados avançados e extensibilidade; excelente para aplicações complexas.    | Curva de aprendizado mais acentuada; pode ser mais pesado em termos de recursos do sistema.     | Suporte a JSONB, índices avançados e funcionalidades como tabelas herdadas.                             | PostgreSQL Global Development Group |
| **MongoDB**                  | Não é ACID (por padrão), orientado a documentos   | Flexibilidade na modelagem de dados; escalabilidade horizontal fácil.                          | Consistência eventual pode ser um problema para algumas aplicações; gerenciamento complexo.      | Ideal para aplicações que requerem rápida iteração e mudanças frequentes na estrutura dos dados.         |
| **SQL Server**               | ACID, suporte a transações                        | Alta escalabilidade e robustez; integração com ferramentas Microsoft; suporte a BI e analytics.| Licenciamento pode ser caro; curva de aprendizado para recursos avançados.                        | Oferece recursos como Reporting Services (SSRS), Analysis Services (SSAS) e Machine Learning Services.  | Microsoft                   |

### Sistemas de arquivos dos motores de bancos (database engine)

Um motor de banco de dados (ou mecanismo de armazenamento) é um componente essencial de um Sistema Gerenciador de Banco de Dados (SGBD) que gerencia a criação, leitura, atualização e exclusão (CRUD) dos dados em um banco de dados. Cada motor possui características únicas que influenciam seu desempenho e a forma como os dados são armazenados e manipulados.

### Sistemas de Arquivos dos Database Engines

Aqui estão alguns dos principais motores de banco de dados e suas características relacionadas ao sistema de arquivos:

| **Motor de Banco de Dados** | **Tipo**           | **Sistema de Arquivos**                            | **Características**                                                                                     |
|------------------------------|--------------------|---------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| **InnoDB**                   | Relacional          | Armazenamento em arquivos .ibd                    | Suporta transações, bloqueio em nível de linha, ideal para aplicações que requerem integridade.        |
| **MyISAM**                   | Relacional          | Armazenamento em arquivos .MYD e .MYI             | Rápido em operações de leitura, mas não suporta transações nem chaves estrangeiras.                    |
| **MEMORY**                   | Relacional          | Armazenamento em memória (RAM)                    | Extremamente rápido, mas os dados são perdidos ao reiniciar o servidor.                                 |
| **Aria**                     | Relacional          | Armazenamento em arquivos .MAI                    | Combina características do MyISAM e InnoDB; oferece recuperação após falhas.                           |
| **SQLite**                   | Relacional          | Armazenamento em um único arquivo .sqlite          | Leve e autossuficiente; ideal para aplicativos móveis e pequenos projetos.                              |
| **PostgreSQL**               | Relacional          | Armazenamento em arquivos baseados em tabelas     | Suporte a tipos de dados avançados; permite extensibilidade e é ideal para aplicações complexas.       |
| **MongoDB**                  | Não Relacional      | Armazenamento em arquivos BSON                     | Orientado a documentos; flexível na modelagem de dados e escalável horizontalmente.                    |
| **SQL Server**               | Relacional          | Armazenamento em arquivos .mdf e .ndf             | Alta escalabilidade, suporte a transações; integra-se bem com outras ferramentas Microsoft.            |

### Considerações

- **Transações:** Motores como InnoDB e SQL Server suportam transações ACID, garantindo a integridade dos dados.
- **Desempenho:** Motores como MyISAM são otimizados para leitura rápida, enquanto outros, como InnoDB, oferecem melhor desempenho em transações.
- **Escalabilidade:** Motores NoSQL, como MongoDB, são projetados para escalar horizontalmente, lidando bem com grandes volumes de dados não estruturados.



