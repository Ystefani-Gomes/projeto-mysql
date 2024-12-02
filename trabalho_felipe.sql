CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

CREATE TABLE tb_cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sobrenome VARCHAR(45) NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_ultima_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id_cliente),
    UNIQUE INDEX idx_email (email),
    INDEX idx_telefone (telefone)
) ENGINE = InnoDB;

CREATE TABLE tb_pedido (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    data_hora_pedido DATETIME NOT NULL,
    status_pedido VARCHAR(45) NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_pedido),
    INDEX idx_status (status_pedido),
    FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

SELECT * FROM tb_pedido;
