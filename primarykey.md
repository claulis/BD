# Chave Primária (Primary Key) e Chave Estrangeira (Foreign Key)

Em modelagem entidade-relacionamento (ER), **chave primária** e **chave estrangeira** são conceitos fundamentais para representar e estruturar o relacionamento entre entidades no banco de dados. Vamos explorar cada uma delas:

### Chave Primária
A chave primária é um identificador exclusivo para uma entidade dentro de uma tabela no banco de dados. Ou seja, é um atributo (ou um conjunto de atributos) que diferencia cada registro da tabela de forma única. 

Por exemplo, imagine uma tabela de "Clientes":
- A tabela pode ter colunas como `ID_Cliente`, `Nome`, `Email`, `Telefone`.
- A coluna `ID_Cliente` pode ser definida como chave primária, pois esse campo terá um valor único para cada cliente (ex.: 1, 2, 3...).
  
A chave primária tem as seguintes características:
1. **Unicidade**: O valor da chave primária deve ser único em cada linha da tabela, não podendo haver dois registros com o mesmo valor.
2. **Não Nulo**: O campo da chave primária não pode ser nulo, pois cada registro precisa ter um valor para ser identificável.
3. **Imutabilidade**: Em muitos casos, a chave primária é imutável, ou seja, uma vez que o valor é atribuído, ele não deve mudar.

Em modelagem ER, a chave primária é importante pois define a entidade de forma inequívoca. No diagrama, ela é sublinhada para indicar seu status de chave primária (por exemplo, `ID_Cliente`).

### Chave Estrangeira
A chave estrangeira é um campo ou conjunto de campos em uma tabela que se refere à chave primária de outra tabela. Ela é usada para estabelecer e reforçar vínculos entre tabelas, permitindo o relacionamento entre entidades.

Continuando com o exemplo da tabela "Clientes", suponha que você tenha uma tabela de "Pedidos":
- A tabela de "Pedidos" pode ter as colunas `ID_Pedido`, `ID_Cliente`, `Data_Pedido`, `Valor_Total`.
- Aqui, `ID_Cliente` será a chave estrangeira que se refere à chave primária `ID_Cliente` na tabela "Clientes".

A chave estrangeira tem as seguintes características:
1. **Referência**: Ela aponta para uma chave primária em outra tabela, estabelecendo um vínculo entre os dados de duas tabelas.
2. **Integridade Referencial**: A chave estrangeira garante que o valor nela armazenado sempre corresponda a um valor existente na tabela referenciada. Ou seja, um pedido só pode ser associado a um cliente que exista.

Em um diagrama ER, a chave estrangeira é geralmente representada como uma linha de conexão entre as entidades relacionadas, e o tipo de linha ou símbolo pode indicar o tipo de relacionamento (por exemplo, um-para-um, um-para-muitos).

### Exemplo Prático

Imagine o seguinte cenário:

- Entidade **Cliente**:
  - Atributos: `ID_Cliente` (chave primária), `Nome`, `Email`.
  
- Entidade **Pedido**:
  - Atributos: `ID_Pedido` (chave primária), `ID_Cliente` (chave estrangeira que referencia a entidade Cliente), `Data_Pedido`, `Valor_Total`.

Aqui, `ID_Cliente` na tabela de Pedidos cria uma relação entre Clientes e Pedidos. Se `ID_Cliente` na tabela de Pedidos for igual a `3`, isso significa que o pedido pertence ao cliente cuja chave primária `ID_Cliente` é `3` na tabela de Clientes.

### Importância na Modelagem ER
Na modelagem ER, as chaves primária e estrangeira são vitais para assegurar a **integridade dos dados** e **otimizar consultas**:
- **Chaves Primárias** ajudam na organização e indexação, tornando buscas mais rápidas e consistentes.
- **Chaves Estrangeiras** preservam a integridade referencial, garantindo que relacionamentos entre entidades sejam consistentes e que não haja registros órfãos (sem vínculo).

# Chave composta
A **chave primária composta** ocorre quando a chave primária de uma tabela é formada por mais de um atributo. Em vez de um único campo que identifique exclusivamente cada registro, uma chave primária composta utiliza dois ou mais campos em conjunto para garantir essa exclusividade. Esse tipo de chave é comum em tabelas que representam relacionamentos complexos, onde uma única coluna não seria suficiente para identificar cada linha de maneira única.

### Características da Chave Primária Composta
1. **Unicidade em Conjunto**: Cada atributo da chave primária composta pode não ser único individualmente, mas a combinação dos valores dos atributos é única para cada registro.
2. **Integridade**: Tal como outras chaves primárias, uma chave composta não pode conter valores nulos e cada combinação de valores dos atributos que a formam deve ser única.
3. **Definição de Relacionamentos Complexos**: É útil quando estamos lidando com tabelas de relacionamento, especialmente para modelar relacionamentos de muitos-para-muitos.

### Exemplo Prático de Chave Primária Composta

Vamos considerar uma situação com uma tabela chamada `Inscricoes`, que representa a relação entre alunos e cursos. Neste caso, temos:

- **Entidade Aluno**:
  - Atributo `ID_Aluno` (chave primária).

- **Entidade Curso**:
  - Atributo `ID_Curso` (chave primária).

- **Entidade Inscricoes** (tabela de relacionamento entre `Aluno` e `Curso`):
  - Atributos `ID_Aluno` e `ID_Curso` (chave primária composta).
  - Atributo `Data_Inscricao`.

Aqui, `ID_Aluno` e `ID_Curso` juntos formam a chave primária composta na tabela `Inscricoes`. Isso significa que:
- Um aluno pode se inscrever em vários cursos e um curso pode ter vários alunos.
- Para cada linha em `Inscricoes`, a combinação de `ID_Aluno` e `ID_Curso` será única, mas individualmente esses valores podem se repetir.

### Importância na Modelagem ER
A chave primária composta é particularmente útil em tabelas intermediárias que representam **relacionamentos de muitos-para-muitos** entre entidades. Ao definir uma chave composta, mantemos a integridade e a consistência dos dados, evitando duplicidades na tabela de relacionamento e permitindo consultas rápidas para relacionar alunos com cursos ou vice-versa.

Além disso, em um diagrama ER, a chave primária composta é indicada sublinhando ambos os atributos na entidade, destacando que ambos os campos juntos formam o identificador exclusivo. 

### Quando Evitar Chaves Primárias Compostas?
Embora sejam úteis, as chaves primárias compostas podem complicar o design e aumentar a complexidade de consultas, especialmente em bancos de dados maiores. Muitas vezes, opta-se por um identificador único (como um campo `ID` autoincrementado) para evitar essa complexidade, especialmente se não houver necessidade de um relacionamento de muitos-para-muitos estrito.

# Como escolher a chave primaria? Quais técnicas?
Escolher a chave primária de uma tabela é uma decisão importante na modelagem de banco de dados, pois impacta diretamente na integridade, desempenho e organização dos dados. Algumas técnicas e boas práticas ajudam a definir a chave primária mais adequada para cada situação.

### 1. Atributo Natural versus Atributo Surrogado (ou Surrogate Key)
   - **Atributo Natural**: É um atributo já existente na entidade e que possui significado no contexto do negócio, como um CPF ou CNPJ para identificar pessoas no Brasil. Este tipo de chave primária é útil quando há um identificador único que naturalmente se encaixa como chave.
   - **Atributo Surrogado (Surrogate Key)**: É um identificador artificial, criado especificamente para ser a chave primária. Um exemplo comum é o uso de números sequenciais (autoincrementados) ou identificadores UUID (universally unique identifier). As chaves surrogadas são úteis quando não há um atributo natural que garanta unicidade ou quando se deseja simplificar as chaves primárias.

   **Quando escolher um ou outro?**
   - Use uma chave natural quando o atributo for estável e naturalmente único (como o CPF).
   - Use uma chave surrogada quando não houver atributos naturais que garantam unicidade ou quando a tabela requer simplificação, como em tabelas com muitos relacionamentos.

### 2. Técnica de Identificador Simples versus Identificador Composto
   - **Identificador Simples**: Um único campo que representa a chave primária. Ele é fácil de entender e manter, além de ser eficiente em termos de desempenho.
   - **Identificador Composto**: É uma chave primária que utiliza múltiplos atributos (chave composta), como `ID_Aluno` e `ID_Curso` em uma tabela de relacionamento `Inscricoes` entre alunos e cursos. Esse tipo de chave é ideal para representar relacionamentos complexos, especialmente muitos-para-muitos, onde nenhum dos campos individualmente garante unicidade.
   
   **Quando usar cada tipo?**
   - Use identificadores simples sempre que possível, para reduzir complexidade.
   - Use chaves compostas apenas quando for necessário representar relacionamentos complexos.

### 3. Técnica de Atributos Estáveis
   - Escolha atributos que tenham alta **estabilidade ao longo do tempo**. Um erro comum é selecionar atributos que podem mudar, como `E-mail` ou `Telefone` de um cliente. Alterações frequentes na chave primária podem gerar inconsistências e dificuldades de manutenção.
   - Priorize atributos como `CPF`, `ID` (autoincrementado), ou outros identificadores que não mudem ao longo do tempo.

### 4. Uso de UUID (Universally Unique Identifier)
   - O **UUID** é uma chave surrogada que gera um identificador universalmente único. É útil para bancos de dados distribuídos ou sistemas onde a chave precisa ser única não apenas no banco de dados, mas também entre sistemas diferentes.
   - Por exemplo, em um sistema distribuído com tabelas que se replicam entre várias bases, o UUID ajuda a garantir que os dados não se dupliquem.

   **Vantagens e desvantagens do UUID**:
   - **Vantagens**: Garante unicidade global e é ideal para sistemas distribuídos.
   - **Desvantagens**: O UUID pode ser mais difícil de ler, ocupando mais espaço do que um inteiro autoincrementado e com impacto de desempenho em alguns bancos de dados.

### 5. Sequência Autoincrementada
   - Em muitos casos, um número autoincrementado simples é suficiente para servir como chave primária. Esse método cria uma coluna onde cada novo registro recebe um número maior que o anterior, garantindo unicidade e simplificando a identificação.
   - A sequência autoincrementada é muito utilizada em bancos de dados relacionais como MySQL e PostgreSQL, pois facilita a inserção de dados e evita colisões de chave.

   **Prós e Contras**:
   - **Prós**: Simplicidade, desempenho, e menor consumo de armazenamento.
   - **Contras**: Pode não ser adequado para tabelas com replicação distribuída, onde a chave precisa ser única entre sistemas.

### Resumo das Técnicas

| Técnica                     | Descrição                                                                                          | Quando Usar                                                                                                  |
|-----------------------------|----------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| Atributo Natural            | Utiliza um campo já existente que é naturalmente único                                            | Quando o campo é naturalmente único e estável (ex.: CPF, CNPJ)                                               |
| Atributo Surrogado          | Cria um identificador artificial como chave primária                                              | Quando não há um atributo natural que garanta unicidade                                                      |
| Identificador Simples       | Usa uma única coluna como chave primária                                                          | Sempre que possível, para simplificar a modelagem                                                            |
| Identificador Composto      | Usa múltiplos atributos para garantir unicidade                                                   | Em tabelas de relacionamento (muitos-para-muitos), onde nenhum atributo sozinho garante unicidade           |
| Atributos Estáveis          | Escolha atributos que raramente mudam                                                             | Evita problemas de integridade ao longo do tempo                                                              |
| UUID                        | Utiliza identificador único global                                                                | Em sistemas distribuídos ou replicados, onde a unicidade deve ser garantida entre sistemas                   |
| Sequência Autoincrementada  | Utiliza uma sequência numérica incrementada automaticamente                                      | Em bancos de dados relacionais locais e com poucas necessidades de integração externa                        |


