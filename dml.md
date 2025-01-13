# DML (Data Manipulation Language)

Os comandos DML (**Data Manipulation Language**) são usados para gerenciar e manipular os dados dentro das tabelas de um banco de dados. Todos os exemplos a seguir serão em **T-SQL (SQL Server)** e **MySQL**:

---

## **1. INSERT**

O comando `INSERT` é usado para adicionar novas linhas em uma tabela.

### **T-SQL e MySQL (funciona de forma idêntica):**

**Inserir uma única linha:**
```sql
INSERT INTO Funcionario (ID, Nome, IDDepartamento, Salario) 
VALUES (1, 'Alice', 1, 5000);
```

**Inserir várias linhas:**
```sql
INSERT INTO Funcionario (ID, Nome, IDDepartamento, Salario) 
VALUES 
(2, 'Roberto', 2, 7000),
(3, 'José', 3, 4000),
(4, 'David', 2, 6000);
```

**Descrição:**
- Adiciona novos registros na tabela `Funcionarios`.
- Deve-se especificar os valores para as colunas, ou deixar que colunas com valores padrão ou `AUTO_INCREMENT` sejam preenchidas automaticamente.

---

## **2. UPDATE**

O comando `UPDATE` é usado para modificar os valores de colunas em linhas existentes.

### **T-SQL e MySQL (funciona de forma idêntica):**

**Atualizar uma linha específica:**
```sql
UPDATE Funcionario
SET Salario = 5500
WHERE ID = 1;
```

**Atualizar várias linhas com base em uma condição:**
```sql
UPDATE Funcionario
SET IDDepartamento = 3
WHERE IDDepartamento = 2;
```

**Descrição:**
- Modifica os dados existentes.
- Sempre use uma cláusula `WHERE` para evitar atualizar todas as linhas acidentalmente.

---

## **3. DELETE**

O comando `DELETE` remove linhas específicas de uma tabela com base em uma condição.

### **T-SQL e MySQL (funciona de forma idêntica):**

**Excluir uma linha específica:**
```sql
DELETE FROM Funcionarios
WHERE ID = 1;
```

**Excluir várias linhas com base em uma condição:**
```sql
DELETE FROM Funcionarios
WHERE IDDepartamento = 2;
```

**Excluir todas as linhas (com possibilidade de rollback):**
```sql
DELETE FROM Funcionarios;
```

> O **ROLLBACK** é um comando usado para desfazer alterações realizadas em uma transação que ainda não foi confirmada. Ele reverte o estado do banco de dados ao estado anterior ao início da transação. Serve para manter a integridade dos dados, especialmente em situações em que ocorre um erro ou quando as alterações feitas durante a transação não devem ser mantidas.

**Descrição:**
- Remove os registros selecionados.
- Não redefine a numeração automática de IDs gerados automaticamente.
- Pode ser usado com transações para desfazer mudanças, dependendo do suporte do banco de dados.

---

## **4. TRUNCATE**

O comando `TRUNCATE` remove **todas as linhas** de uma tabela, mas mantém a estrutura da tabela intacta.

### **T-SQL e MySQL (funciona de forma idêntica):**
```sql
TRUNCATE TABLE Funcionarios;
```

**Descrição:**
- Remove todas as linhas da tabela.
- Reseta colunas com valores gerados automaticamente (`AUTO_INCREMENT` ou `IDENTITY`).
- É mais rápido do que `DELETE`, pois não registra cada exclusão individualmente no log de transações.
- Não pode ser usado com uma cláusula `WHERE`.

---

### **Diferenças Principais entre DELETE e TRUNCATE**

| Característica          | DELETE                           | TRUNCATE                          |
|-------------------------|----------------------------------|-----------------------------------|
| **Remoção de Linhas**   | Permite remover linhas específicas com `WHERE`. | Remove todas as linhas.          |
| **Restauração (Rollback)** | Possível com transações (se suportado). | Não é possível.                  |
| **Velocidade**          | Mais lento (linha a linha).      | Mais rápido (ação em bloco).      |
| **Reseta AUTO_INCREMENT**| Não.                            | Sim.                              |

---

### **Exemplo Completo**

#### **T-SQL (SQL Server):**
```sql
-- Inserir dados
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary) 
VALUES 
(1, 'Alice', 1, 5000),
(2, 'Bob', 2, 7000);

-- Atualizar dados
UPDATE Employees
SET Salary = 7500
WHERE EmployeeName = 'Bob';

-- Excluir um funcionário
DELETE FROM Employees
WHERE EmployeeID = 1;

-- Remover todos os dados
TRUNCATE TABLE Employees;
```

#### **MySQL:**
```sql
-- Inserir dados
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary) 
VALUES 
(1, 'Alice', 1, 5000),
(2, 'Bob', 2, 7000);

-- Atualizar dados
UPDATE Employees
SET Salary = 7500
WHERE EmployeeName = 'Bob';

-- Excluir um funcionário
DELETE FROM Employees
WHERE EmployeeID = 1;

-- Remover todos os dados
TRUNCATE TABLE Employees;
```

Esses comandos são fundamentais para manipular dados em tabelas de forma eficiente e segura. **Sempre use com cuidado, especialmente os comandos `DELETE` e `TRUNCATE`, para evitar perda acidental de dados.**

---

## **5. SELECT**
O comando `SELECT` é utilizado para consultar dados de uma ou mais tabelas.

### **T-SQL**
```sql
-- Selecionar todas as colunas da tabela Funcionarios
SELECT * FROM Funcionarios;

-- Selecionar colunas específicas
SELECT NomeFuncionario, Salario FROM Funcionarios;
```

### **MySQL**
```sql
-- Selecionar todas as colunas da tabela Funcionarios
SELECT * FROM Funcionarios;

-- Selecionar colunas específicas
SELECT NomeFuncionario, Salario FROM Funcionarios;
```

**Diferença:** Não há diferença significativa entre T-SQL e MySQL para o comando `SELECT`. Ambos funcionam da mesma maneira.

---

## **6. ALIAS**
O `ALIAS` é utilizado para renomear colunas ou tabelas temporariamente.

### **T-SQL**
```sql
-- Renomear colunas
SELECT NomeFuncionario AS 'Funcionário', Salario AS 'Salário'
FROM Funcionarios;

-- Renomear tabelas
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios AS f
INNER JOIN Departamentos AS d
ON f.DepartamentoID = d.DepartamentoID;
```

### **MySQL**
```sql
-- Renomear colunas
SELECT NomeFuncionario AS 'Funcionário', Salario AS 'Salário'
FROM Funcionarios;

-- Renomear tabelas
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios AS f
INNER JOIN Departamentos AS d
ON f.DepartamentoID = d.DepartamentoID;
```

**Diferença:** Não há diferenças entre T-SQL e MySQL em relação ao uso de `ALIAS`. Ambos utilizam a mesma sintaxe.

---

## *7. FROM**
Indica de onde os dados serão extraídos.

### **T-SQL**
```sql
-- Selecionar todos os dados da tabela Funcionarios
SELECT * FROM Funcionarios;

-- Selecionar dados de várias tabelas
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
INNER JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;
```

### **MySQL**
```sql
-- Selecionar todos os dados da tabela Funcionarios
SELECT * FROM Funcionarios;

-- Selecionar dados de várias tabelas
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
INNER JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;
```

**Diferença:** A sintaxe do `FROM` é a mesma em ambos os sistemas. Não há diferença significativa.

---

## **8.WHERE**
Filtra os dados com base em uma condição.

### **T-SQL**
```sql
-- Funcionários com salário maior que 3000
SELECT NomeFuncionario, Salario 
FROM Funcionarios
WHERE Salario > 3000;

-- Funcionários do departamento com ID 1
SELECT NomeFuncionario, DepartamentoID 
FROM Funcionarios
WHERE DepartamentoID = 1;
```

### **MySQL**
```sql
-- Funcionários com salário maior que 3000
SELECT NomeFuncionario, Salario 
FROM Funcionarios
WHERE Salario > 3000;

-- Funcionários do departamento com ID 1
SELECT NomeFuncionario, DepartamentoID 
FROM Funcionarios
WHERE DepartamentoID = 1;
```

**Diferença:** A sintaxe de `WHERE` é a mesma em ambos os sistemas. Não há diferença.

---

## **9. GROUP BY**
Agrupa os resultados para realizar cálculos agregados, como somas ou contagens.

### **T-SQL**
```sql
-- Salário total por departamento
SELECT DepartamentoID, SUM(Salario) AS TotalSalarios
FROM Funcionarios
GROUP BY DepartamentoID;

-- Número de funcionários por departamento
SELECT DepartamentoID, COUNT(*) AS TotalFuncionarios
FROM Funcionarios
GROUP BY DepartamentoID;
```

### **MySQL**
```sql
-- Salário total por departamento
SELECT DepartamentoID, SUM(Salario) AS TotalSalarios
FROM Funcionarios
GROUP BY DepartamentoID;

-- Número de funcionários por departamento
SELECT DepartamentoID, COUNT(*) AS TotalFuncionarios
FROM Funcionarios
GROUP BY DepartamentoID;
```

**Diferença:** Não há diferença significativa entre T-SQL e MySQL no uso do `GROUP BY`. Ambos funcionam de maneira idêntica.

---

## **10. ORDER BY**
Ordena os resultados da consulta.

### **T-SQL**
```sql
-- Ordenar funcionários por nome
SELECT NomeFuncionario, Salario
FROM Funcionarios
ORDER BY NomeFuncionario ASC;

-- Ordenar salários em ordem decrescente
SELECT NomeFuncionario, Salario
FROM Funcionarios
ORDER BY Salario DESC;
```

### **MySQL**
```sql
-- Ordenar funcionários por nome
SELECT NomeFuncionario, Salario
FROM Funcionarios
ORDER BY NomeFuncionario ASC;

-- Ordenar salários em ordem decrescente
SELECT NomeFuncionario, Salario
FROM Funcionarios
ORDER BY Salario DESC;
```

**Diferença:** Não há diferença significativa entre T-SQL e MySQL em relação ao uso do `ORDER BY`. Ambos seguem a mesma sintaxe.

---

## **11. HAVING**
Filtra os resultados de um grupo criado pelo `GROUP BY`.

### **T-SQL**
```sql
-- Departamentos com salário total maior que 5000
SELECT DepartamentoID, SUM(Salario) AS TotalSalarios
FROM Funcionarios
GROUP BY DepartamentoID
HAVING SUM(Salario) > 5000;

-- Departamentos com mais de 2 funcionários
SELECT DepartamentoID, COUNT(*) AS TotalFuncionarios
FROM Funcionarios
GROUP BY DepartamentoID
HAVING COUNT(*) > 2;
```

### **MySQL**
```sql
-- Departamentos com salário total maior que 5000
SELECT DepartamentoID, SUM(Salario) AS TotalSalarios
FROM Funcionarios
GROUP BY DepartamentoID
HAVING SUM(Salario) > 5000;

-- Departamentos com mais de 2 funcionários
SELECT DepartamentoID, COUNT(*) AS TotalFuncionarios
FROM Funcionarios
GROUP BY DepartamentoID
HAVING COUNT(*) > 2;
```

**Diferença:** A sintaxe é idêntica em T-SQL e MySQL, sem diferenças significativas no uso de `HAVING`.

---

## **12. LIKE**
Usado para procurar padrões em colunas de texto.

### **T-SQL**
```sql
-- Funcionários cujo nome começa com 'A'
SELECT NomeFuncionario
FROM Funcionarios
WHERE NomeFuncionario LIKE 'A%';

-- Funcionários cujo nome termina com 'o'
SELECT NomeFuncionario
FROM Funcionarios
WHERE NomeFuncionario LIKE '%o';

-- Funcionários cujo nome contém 'ar'
SELECT NomeFuncionario
FROM Funcionarios
WHERE NomeFuncionario LIKE '%ar%';
```

### **MySQL**
```sql
-- Funcionários cujo nome começa com 'A'
SELECT NomeFuncionario
FROM Funcionarios
WHERE NomeFuncionario LIKE 'A%';

-- Funcionários cujo nome termina com 'o'
SELECT NomeFuncionario
FROM Funcionarios
WHERE NomeFuncionario LIKE '%o';

-- Funcionários cujo nome contém 'ar'
SELECT NomeFuncionario
FROM Funcionarios
WHERE NomeFuncionario LIKE '%ar%';
```

**Diferença:** Não há diferença no uso do `LIKE` entre T-SQL e MySQL. Ambos funcionam de maneira idêntica.

---

## **13. JOIN**
Usado para combinar dados de duas ou mais tabelas.

### **T-SQL**
```sql
-- INNER JOIN
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
INNER JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;

-- LEFT JOIN
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
LEFT JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;

-- FULL OUTER JOIN (somente T-SQL)
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
FULL OUTER JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;
```

### **MySQL**
```sql
-- INNER JOIN
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
INNER JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;

-- LEFT JOIN
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
LEFT JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;

-- FULL OUTER JOIN (simulação no MySQL)
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
LEFT JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID
UNION
SELECT f.NomeFuncionario, d.NomeDepartamento
FROM Funcionarios f
RIGHT JOIN Departamentos d
ON f.DepartamentoID = d.DepartamentoID;
```

**Diferença:**
- **T-SQL** tem suporte nativo para `FULL OUTER JOIN`.
- **MySQL** não suporta diretamente `FULL OUTER JOIN`, mas é possível simular usando a combinação de `LEFT JOIN` e `RIGHT JOIN` com `UNION`.

---

### **Diferenças T-SQL e MySQL**
- **T-SQL** e **MySQL** são bastante semelhantes em termos de sintaxe para a maioria dos comandos básicos de SQL, como `SELECT`, `FROM`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`, `LIKE` e `JOIN`.
- A principal diferença está no suporte para alguns tipos de `JOIN`, como o `FULL OUTER JOIN`, que é suportado no **T-SQL**, mas precisa ser simulado no **MySQL**.
  
