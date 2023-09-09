CREATE DATABASE gerenciando-departamentos-e-funcionarios;

SHOW DATABASES;

USE gerenciando-departamentos-e-funcionarios;

CREATE TABLE Departamentos (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeDepartamento VARCHAR(255) NOT NULL
);

CREATE TABLE Funcionarios (
    FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2),
    DepartamentoID INT AUTO_INCREMENT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);


INSERT INTO Departamentos (NomeDepartamento) 
VALUES ('Recursos Humanos');

INSERT INTO Departamentos (NomeDepartamento) 
VALUES ('Vendas');

INSERT INTO Departamentos (NomeDepartamento) 
VALUES ('TI');

INSERT INTO Departamentos (NomeDepartamento) 
VALUES ('Marketing');

INSERT INTO Departamentos (NomeDepartamento) 
VALUES ('Produção');

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) 
VALUES ('Gabigol', 'Gerente de RH', 6000.00);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) 
VALUES ('Cristiano', 'Vendedor', 3500.00);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) 
VALUES ('Paulo', 'Desenvolvedor', 5000.00);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) 
VALUES ('Vitória', 'Especialista em Marketing', 4500.00);

INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) 
VALUES ('Lionel', 'Supervisor de Produção', 4200.00);
