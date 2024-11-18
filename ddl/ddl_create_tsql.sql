-- Verificar se o banco de dados já existe
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'exemplo_db')
BEGIN
    CREATE DATABASE exemplo_db;
END
GO
USE exemplo_db;
GO
-- Verificar se a tabela "usuarios" já existe e criar apenas se não existir
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'usuarios')
BEGIN
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nome NVARCHAR(100) NOT NULL,
        email NVARCHAR(100) UNIQUE NOT NULL
    );
END
GO

-- Verificar se a tabela "pedidos" já existe e criar apenas se não existir
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'pedidos')
BEGIN
    CREATE TABLE pedidos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        descricao NVARCHAR(255) NOT NULL,
        valor DECIMAL(10, 2) NOT NULL,
        data_pedido DATE NOT NULL,
        CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
    );
END
GO
