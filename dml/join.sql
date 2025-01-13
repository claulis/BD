
-- Seleciona os nomes dos funcionários e seus respectivos departamentos
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
INNER JOIN t_departamento d ON f.id_departamento = d.id;

-- Seleciona os nomes dos funcionários e seus departamentos, mas apenas aqueles com salário superior a 4000
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
INNER JOIN t_departamento d ON f.id_departamento = d.id
WHERE f.salario > 4000;

-- Seleciona os departamentos e calcula a média salarial dos funcionários em cada departamento
SELECT d.nome AS Departamento, AVG(f.salario) AS Media_Salario
FROM t_funcionario f
INNER JOIN t_departamento d ON f.id_departamento = d.id
GROUP BY d.nome;

-- Seleciona os departamentos com média salarial superior a 4500
SELECT d.nome AS Departamento, AVG(f.salario) AS Media_Salario
FROM t_funcionario f
INNER JOIN t_departamento d ON f.id_departamento = d.id
GROUP BY d.nome
HAVING AVG(f.salario) > 4500;

-- Seleciona os departamentos com média salarial superior a 4500 
--e ordena os resultados pela média salarial em ordem decrescente
SELECT d.nome AS Departamento, AVG(f.salario) AS Media_Salario
FROM t_funcionario f
INNER JOIN t_departamento d ON f.id_departamento = d.id
GROUP BY d.nome
HAVING AVG(f.salario) > 4500
ORDER BY Media_Salario DESC;

-- Seleciona todos os funcionários e seus departamentos, 
incluindo funcionários que não estão alocados em nenhum departamento (NULL)
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
LEFT JOIN t_departamento d ON f.id_departamento = d.id;

-- Seleciona todos os funcionários e seus departamentos, mas apenas aqueles que estão alocados em um departamento (exclui NULL)
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
LEFT JOIN t_departamento d ON f.id_departamento = d.id
WHERE d.nome IS NOT NULL;

-- Seleciona todos os departamentos e seus funcionários, incluindo departamentos sem funcionários (NULL)
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
RIGHT JOIN t_departamento d ON f.id_departamento = d.id;

-- Seleciona todos os departamentos e seus funcionários, mas apenas aqueles que não têm funcionários alocados (exclui não correspondências)
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
RIGHT JOIN t_departamento d ON f.id_departamento = d.id
WHERE f.nome IS NULL; 

-- Seleciona todos os funcionários e departamentos em um produto cartesiano (todas as combinações possíveis)
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
FULL OUTER JOIN t_departamento d ON f.id_departamento = d.id;

-- Realiza um CROSS JOIN entre funcionários e departamentos (produto cartesiano)
SELECT f.nome AS Funcionario, d.nome AS Departamento
FROM t_funcionario f
CROSS JOIN t_departamento d;

-- Realiza um SELF JOIN para encontrar pares de funcionários no mesmo departamento (exclui pares iguais)
SELECT a.nome AS Funcionario1, b.nome AS Funcionario2 
FROM t_funcionario a, t_funcionario b 
WHERE a.id_departamento = b.id_departamento AND a.id <> b.id;


--mostra os departamentos cuja média salarial dos funcionários é superior à média salarial geral.
SELECT d.nome AS Departamento, AVG(f.salario) AS Media_Salario
FROM t_departamento d
INNER JOIN t_funcionario f ON d.id = f.id_departamento
GROUP BY d.nome
HAVING AVG(f.salario) > (
    SELECT AVG(salario) 
    FROM t_funcionario
);

--Encontrar Departamentos com Mais de Dois Funcionários
SELECT d.nome AS Departamento
FROM t_departamento d
WHERE d.id IN (
    SELECT f.id_departamento
    FROM t_funcionario f
    GROUP BY f.id_departamento
    HAVING COUNT(f.id) > 2
);

--Contar Funcionários em Cada Departamento
SELECT d.nome AS Departamento, 
       (SELECT COUNT(*) 
        FROM t_funcionario f 
        WHERE f.id_departamento = d.id) AS Numero_Funcionarios
FROM t_departamento d;
