CREATE DATABASE db_empresa;
GO
USE db_empresa;
CREATE TABLE t_departamento (
 id_departamento INT IDENTITY(1,1) PRIMARY KEY,  
 nome VARCHAR(100) NOT NULL,                      
 descricao VARCHAR(255)                           
    ); 
CREATE TABLE t_funcionario (
id_funcionario INT IDENTITY(1,1) PRIMARY KEY,    
nome VARCHAR(100) NOT NULL,                      
cargo VARCHAR(100),                               
salario DECIMAL(10, 2),                           
id_departamento INT,                              
FOREIGN KEY (id_departamento) REFERENCES
t_departamento(id_departamento) 
);

INSERT INTO t_departamento (nome, descricao)
VALUES 
('Recursos Humanos', 'Departamento responsável pela gestão de pessoas'),
('Tecnologia', 'Departamento de desenvolvimento e infraestrutura de TI'),
('Marketing', 'Departamento responsável pela publicidade e estratégias de marketing'),
('Financeiro', 'Departamento de controle financeiro e contábil'),
('Vendas', 'Departamento que gerencia as vendas e o relacionamento com clientes');
GO

INSERT INTO t_funcionario (nome, cargo, salario, id_departamento)
VALUES 
('Ana Costa', 'Analista de RH', 3500.00, 1),
('Bruno Silva', 'Desenvolvedor', 4500.00, 2),
('Carla Almeida', 'Gerente de Marketing', 7000.00, 3),
('Daniel Oliveira', 'Assistente Financeiro', 3000.00, 4),
('Eduardo Souza', 'Vendedor', 3200.00, 5),
('Fernanda Pereira', 'Analista de Marketing', 4000.00, 3),
('Gabriel Martins', 'Gerente de TI', 8000.00, 2),
('Helena Rodrigues', 'Coordenadora de Vendas', 5000.00, 5),
('Igor Fernandes', 'Analista Financeiro', 4000.00, 4),
('Juliana Rocha', 'Assistente de TI', 3500.00, 2),
('Karla Lima', 'Coordenadora de RH', 6000.00, 1),
('Lucas Santos', 'Desenvolvedor Full Stack', 4800.00, 2),
('Maria Ferreira', 'Gerente de Vendas', 7500.00, 5),
('Nathalia Barbosa', 'Analista de TI', 4200.00, 2),
('Otávio Costa', 'Supervisor de Marketing', 5500.00, 3),
('Paula Lima', 'Desenvolvedora', 4600.00, 2),
('Rafael Cruz', 'Assistente de Vendas', 3200.00, 5),
('Sílvia Dias', 'Coordenadora Financeira', 6500.00, 4),
('Tatiane Martins', 'Assistente de RH', 2800.00, 1),
('Ubirajara Pinto', 'Analista de Marketing', 4000.00, 3),
('Vinícius Rocha', 'Analista de Vendas', 3800.00, 5),
('Wanda Oliveira', 'Gerente de Tecnologia', 8200.00, 2),
('Xuxa Silva', 'Assistente de Marketing', 3300.00, 3),
('Yago Santos', 'Assistente de TI', 3100.00, 2),
('Zélia Mendes', 'Supervisor de Marketing', 5500.00, 3),
('Adriana Costa', 'Gerente de Recursos Humanos', 7500.00, 1),
('Bárbara Lima', 'Analista de TI', 4500.00, 2),
('Carlos Souza', 'Analista de Vendas', 3700.00, 5),
('Débora Rodrigues', 'Assistente de Vendas', 2900.00, 5),
('Eduardo Silva', 'Coordenador de TI', 5500.00, 2),
('Fátima Oliveira', 'Analista de Marketing', 4000.00, 3),
('Gustavo Almeida', 'Gerente de Marketing', 7000.00, 3),
('Hugo Martins', 'Analista de Vendas', 3800.00, 5),
('Isabel Rocha', 'Coordenadora Financeira', 6000.00, 4),
('Júlio Pereira', 'Assistente de TI', 3300.00, 2),
('Karina Souza', 'Analista de RH', 3500.00, 1),
('Lúcio Ferreira', 'Gerente de TI', 7800.00, 2),
('Mário Pinto', 'Coordenador de RH', 6100.00, 1),
('Núbia Costa', 'Vendedora', 3200.00, 5),
('Omar Rodrigues', 'Supervisor de TI', 5300.00, 2),
('Paula Santos', 'Gerente de Vendas', 7500.00, 5),
('Quiteria Lima', 'Assistente Financeiro', 3000.00, 4),
('Rita Gomes', 'Analista de Marketing', 3900.00, 3),
('Samuel Pinto', 'Desenvolvedor', 4700.00, 2),
('Tatiane Martins', 'Assistente de Marketing', 3100.00, 3),
('Ulisses Costa', 'Gerente de Vendas', 8000.00, 5),
('Vera Silva', 'Assistente de RH', 2800.00, 1),
('Wagner Souza', 'Analista de TI', 4300.00, 2),
('Xuxa Costa', 'Assistente de Vendas', 2900.00, 5),
('Yasmin Almeida', 'Analista Financeiro', 3900.00, 4),
('Zélia Ribeiro', 'Coordenadora de TI', 5800.00, 2);
