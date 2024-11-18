-- Verificar se o banco de dados já existe, e criar apenas se não existir
CREATE DATABASE IF NOT EXISTS exemplo_db;
USE exemplo_db;
-- Verificar se a tabela "usuarios" já existe e criar apenas se não existir
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Verificar se a tabela "pedidos" já existe e criar apenas se não existir
CREATE TABLE IF NOT EXISTS pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_pedido DATE NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
