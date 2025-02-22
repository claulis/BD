# Modelagem Conceitual de Banco de Dados

A **modelagem conceitual de dados** é uma etapa fundamental no desenvolvimento de sistemas de informação, pois fornece uma representação abstrata dos dados que uma organização utiliza. 
Este tipo de modelagem visa capturar os requisitos de informação e as regras de negócio, sem considerar fatores tecnológicos ou implementações específicas.

![image](https://github.com/user-attachments/assets/3d354c60-2e8b-4f60-b52d-2dd3a6618946)

![image](https://github.com/user-attachments/assets/29ddb435-ad55-4e18-8ad5-6ae92aba2a25)



## Objetivos da Modelagem Conceitual

- **Representação Abstrata**: O modelo conceitual estabelece uma visão geral das entidades e seus relacionamentos, permitindo uma compreensão clara do domínio do problema.
- **Facilitar a Comunicação**: Ele serve como um ponto de partida para discussões entre stakeholders técnicos e não técnicos, ajudando a garantir que todos tenham uma visão comum.
- **Documentação dos Requisitos**: Os modelos conceituais documentam como diferentes entidades se relacionam, o que é crucial para o desenvolvimento eficaz de sistemas.

## Componentes Principais

Os principais componentes de um modelo conceitual incluem:

- **Entidades**: Representam objetos ou conceitos do mundo real que têm relevância para o negócio.
- **Atributos**: Características ou propriedades das entidades.
- **Relacionamentos**: Descrevem como as entidades interagem entre si.

Um exemplo básico seria um modelo que inclui entidades como "Cliente" e "Pedido", onde um cliente pode fazer vários pedidos, estabelecendo assim um relacionamento entre eles.

## Processo de Modelagem

1. **Levantamento de Requisitos**: Inicia-se com a coleta de informações sobre o negócio e suas necessidades.
2. **Criação do Modelo**: Utiliza-se técnicas como Diagramas Entidade-Relacionamento (ERD) para visualizar as entidades e seus relacionamentos.
3. **Validação**: O modelo deve ser revisado e validado por profissionais da área de negócios para garantir sua precisão e relevância.

Os modelos conceituais são considerados artefatos centrais na arquitetura de dados, pois oferecem uma base sobre a qual modelos lógicos e físicos são construídos. 
Enquanto o modelo lógico detalha as entidades em termos mais específicos (como tabelas e colunas), o modelo físico se concentra na implementação real em um sistema de gerenciamento de banco de dados (SGBD).

## Atributos, Entidades e Relacionamentos na Modelagem Conceitual

Na modelagem conceitual de bancos de dados, os conceitos de **atributos**, **entidades** e **relacionamentos** são fundamentais para representar a estrutura e as interações dos dados. 
A seguir, uma explicação detalhada sobre cada um desses componentes.

### Entidades

As **entidades** são os objetos ou conceitos do mundo real que possuem relevância dentro do contexto do sistema a ser modelado. Elas podem ser:

- **Concretas**: Objetos físicos, como "Cliente" ou "Produto".
- **Abstratas**: Conceitos ou eventos, como "Venda" ou "Atendimento".

As entidades são representadas graficamente por retângulos em diagramas de entidade-relacionamento (ER) . Cada entidade possui um conjunto de características que a definem.

#### **Tipos de Entidades**

![image](https://github.com/user-attachments/assets/2d65ce36-4328-41c8-913c-12f3ba22dfde)

> **Entidades Fortes**
As entidades fortes são aquelas que possuem uma identidade própria e não dependem de outras entidades para sua existência. Elas podem ser identificadas unicamente por seus atributos. Exemplos incluem:
Cliente: Cada cliente tem um identificador único, como um CPF ou ID.
Produto: Cada produto é identificado por um código ou nome.

**Características:**
- Independência Existencial: Uma entidade forte pode existir independentemente de qualquer outra entidade.
- Chave Primária Autônoma: Possui uma chave primária própria que a identifica exclusivamente.

Exemplo: Cliente, Produto, Funcionário


> **Entidades Fracas**
As entidades fracas dependem de outra entidade (chamada de entidade forte) para sua identificação e existência. Elas não têm uma chave primária própria e são geralmente identificadas em conjunto com a entidade forte. Exemplos incluem:
Dependente: Um dependente pode ser identificado apenas em relação a um cliente específico.
Item de Pedido: Um item de pedido só faz sentido no contexto de um pedido específico.

**Características**:
- Dependência Existencial: Uma entidade fraca só existe se houver uma entidade forte associada a ela.
- Identificador Combinado: O identificador da entidade fraca inclui o identificador da entidade forte ao qual está relacionada.
Exemplo: Dependente (que depende do empregador), Item de Pedido (que depende do pedido)
![image](https://github.com/user-attachments/assets/ef68b09d-e8b7-4208-ab5f-59cf4d0de3ce)



### Atributos

Nos modelos conceituais de dados, **atributos** são características ou propriedades que descrevem as entidades presentes no domínio sendo estudado. Aqui estão os principais pontos sobre atributos na modelagem conceitual:

#### **Tipos de Atributos**
- **Simples**: São aqueles que não podem ser subdivididos em partes menores. Eles representam valores atômicos e são fundamentais para a identificação e descrição das entidades.
  ![image](https://github.com/user-attachments/assets/d1b6fd86-6cd7-4164-ac9d-673ad3c920d3)

- **Identificadores**: São aqueles que identificam ou compõem a identificação única de uma ocorrência em uma entidade. Exemplos incluem números de registro, IDs, etc.
  ![image](https://github.com/user-attachments/assets/43b0e7a0-03aa-4c24-856a-26b7edf45d57)

- **Não Identificadores**: Correspondem à maioria das ocorrências de uma entidade e podem ser opcionais ou obrigatórios. Exemplos incluem nome, idade, etc.
- **Multivalorados**: Representam mais de uma ocorrência de valor de um atributo dentro de uma mesma instância de uma entidade. Exemplos incluem telefones, emails, etc., onde uma pessoa pode ter múltiplas formas de contato.
   ![image](https://github.com/user-attachments/assets/f043d290-8211-4772-b1e3-e28a8068acf3)

- **Compostos**: São utilizados para representar mais de um tipo de informação em um atributo. Exemplos incluem endereços completos, que podem ser compostos por rua, número, cidade, estado, país, etc.
  ![image](https://github.com/user-attachments/assets/c9d5411e-c2ca-4072-b5d6-a0e5ef48fee2)

- **Derivados**: São aqueles cujo valor pode ser calculado ou obtido a partir de outros atributos. Eles não são armazenados diretamente no banco de dados, mas são gerados quando necessário.
  ![image](https://github.com/user-attachments/assets/e57e4a46-0db2-496e-83df-3ce28233fd37)


#### Estrutura e Representação

- **Notação Original**:Nos diagramas originais de Entidade-Relacionamento (ER), os atributos eram representados por elipses ligadas às entidades. Esta notação pode deixar o diagrama com muitos itens e complicar a organização
- **Notação Moderna**:Atualmente, nos diagramas ER, os atributos aparecem listados dentro do próprio retângulo da entidade, tornando-o mais limpo e fácil de ler. Isso é comumente feito utilizando a Unified Modeling Language (UML)

#### Propriedades e Funções

- **Descriptivos**: Representam características intrínsecas de uma entidade, como nome ou cor.
- **Nominativos**: Além de serem descritivos, têm a função de definir e identificar um objeto. Exemplos incluem nome, código, número.
- **Obrigatoriedade**: Atributos podem ser obrigatórios (possuirem no mínimo um valor associado) ou opcionais (não possuirem um valor associado).
  
### Relacionamentos

Os **relacionamentos** descrevem como as entidades interagem entre si. Eles são representados por losangos em diagramas ER e podem ser classificados de acordo com o número de entidades envolvidas:

> **Representação Gráfica**:
Nos diagramas de entidade-relacionamento (ER), os relacionamentos são representados por losangos, conectando as entidades envolvidas.

- **Binário**: Envolve duas entidades (ex: "Cliente" e "Pedido").
- **Ternário**: Envolve três entidades (ex: "Médico", "Paciente" e "Hospital").
- **N-ário**: Envolve quatro ou mais entidades.

![image](https://github.com/user-attachments/assets/760a4fcb-f676-4a58-ab0b-aa8165c6bed3)


Além disso, os relacionamentos têm características importantes como:

- **Cardinalidade**: Define quantas instâncias de uma entidade podem se relacionar com outra. Exemplos incluem:
  - Um para Um (1:1)
  - Um para Muitos (1:N)
  - Muitos para Muitos (M:N).
 ![image](https://github.com/user-attachments/assets/af49a3c0-d7f3-4e45-a5fb-b7c36b823771)

- **Grau do Relacionamento**: Refere-se ao número de entidades que participam do relacionamento. Por exemplo, um relacionamento binário envolve duas entidades, enquanto um ternário envolve três.
- ![image](https://github.com/user-attachments/assets/7d240476-8e0d-4f24-8a01-688239877776)


## Resumo

![image](https://github.com/user-attachments/assets/78cc3b8b-e2d2-4da9-93ba-f03a0e80ac80)
