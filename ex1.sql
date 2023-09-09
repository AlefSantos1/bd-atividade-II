CREATE DATABASE  gerenciando_pedidos_de_clientes;

SHOW DATABASES;

USE gerenciando_pedidos_de_clientes;


CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome CHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT AUTO_INCREMENT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES ('Bruninho', 'bruninho@email.com', '71 1234-5678');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES ('Maria', 'maria@email.com', '71 9876-5432');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES ('Oliveira', 'oliveira@email.com', '71 5555-5555');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES ('Aninha', 'ana@email.com', '71 9999-8888');

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES ('Almeidagg', 'almeida@email.com', '71 7777-6666');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES ('27-07-2023', 100.50);

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES ('17-04-2023', 75.25);

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES ('11-01-2023', 200.00);

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES ('23-05-2023', 50.75);

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES ( '12-08-2023', 120.00);
