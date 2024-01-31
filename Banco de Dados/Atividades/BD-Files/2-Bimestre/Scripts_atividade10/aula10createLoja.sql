CREATE DATABASE loja;

USE loja;

CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    TotalCompras DECIMAL(10, 2) DEFAULT 0
);

CREATE TABLE Pedidos (
    ID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    TotalPedido DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Preco DECIMAL(10 , 2 ) DEFAULT 0,
    PrecoDesconto DECIMAL(10 , 2 ),
    QuantidadeEstoque INT
);

CREATE TABLE ItensPedido (
    ID INT PRIMARY KEY,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(ID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ID)
);

INSERT INTO Clientes (ID, Nome, Email)
VALUES (1, 'João Silva', 'joao@example.com'),
       (2, 'Maria Santos', 'maria@example.com'),
       (3, 'Pedro Almeida', 'pedro@example.com'),
       (4, 'Ana Oliveira', 'ana@example.com'),
       (5, 'Carlos Souza', 'carlos@example.com');

INSERT INTO Pedidos (ID, ClienteID, DataPedido)
VALUES (1, 1, '2023-05-01'),
       (2, 2, '2023-05-02'),
       (3, 3, '2023-05-03'),
       (4, 4, '2023-05-04'),
       (5, 5, '2023-05-05');
       
INSERT INTO Produtos (ID, Nome, Preco, QuantidadeEstoque)
VALUES (1, 'Camiseta', 30.00, 10),
       (2, 'Calça Jeans', 90.00, 20);
       


INSERT INTO ItensPedido (ID, PedidoID, ProdutoID, Quantidade)
VALUES (1, 1, 1, 2),
       (2, 1, 2, 1),
       (3, 2, 2, 1);

-- Trigger do slide
DELIMITER //

CREATE TRIGGER Desconto_Produto
BEFORE INSERT ON Produtos
FOR EACH ROW
BEGIN
    SET NEW.PrecoDesconto = (NEW.Preco * 0.90);
END //

DELIMITER ;

INSERT INTO Produtos (ID, Nome, Preco, QuantidadeEstoque)
VALUES (3, 'Tênis Esportivo', 100.00, 100),
       (4, 'Bolsa Feminina', 50.00, 15),
       (5, 'Óculos de Sol', 80.00, 5);

DELIMITER //
CREATE TRIGGER atualizar_total_pedido 
AFTER INSERT ON ItensPedido
FOR EACH ROW
BEGIN
    DECLARE valor_item DECIMAL(10, 2);
    SET valor_item = (SELECT Preco 
                       FROM Produtos WHERE ID = NEW.ProdutoID);
    
    UPDATE Pedidos
    SET TotalPedido = TotalPedido + (valor_item * NEW.Quantidade)
    WHERE ID = NEW.PedidoID;
END //
DELIMITER ;

-- 
INSERT INTO ItensPedido (ID, PedidoID, ProdutoID, Quantidade)
VALUES (4, 3, 1, 2),
       (5, 4, 3, 4),
       (6, 4, 5, 1);
       
-- E se quiser atualizar quando excluir?
DELIMITER //
CREATE TRIGGER atualizar2_total_pedido 
AFTER DELETE ON ItensPedido
FOR EACH ROW
BEGIN
    DECLARE valor_item DECIMAL(10, 2);
    SET valor_item = (SELECT Preco 
                       FROM Produtos WHERE ID = OLD.ProdutoID);
    
    UPDATE Pedidos
    SET TotalPedido = TotalPedido - (valor_item * OLD.Quantidade)
    WHERE ID = OLD.PedidoID;
END //
DELIMITER ;

DELETE FROM ItensPedido WHERE ID = 7;

-- procedures

-- Criando a procedure
Delimiter //
CREATE PROCEDURE ConsultaProd ()
	BEGIN
		SELECT * FROM Produtos;
	END //
Delimiter ;

-- Executando a procedure
CALL ConsultaProd;

-- Criando a procedure
Delimiter //
CREATE PROCEDURE ConsultaProdParametro 
(IN NomeConsulta VARCHAR(45))
	BEGIN
		SELECT * FROM Produtos
        WHERE Nome = NomeConsulta;
	END //
Delimiter ;

-- Executando a procedure
CALL ConsultaProdParametro('Camiseta');
-- Utilizando variável
SET @Nome_Prod = 'Camiseta';
CALL ConsultaProdParametro(@Nome_Prod);

Delimiter //
CREATE PROCEDURE BuscaNome
(IN IDConsulta INT, OUT NomeReposta VARCHAR (50))
	BEGIN
		SELECT Nome
		INTO NomeReposta
		FROM Produtos
		WHERE ID = IDConsulta;
	END //
Delimiter ;

CALL BuscaNome (1, @NomeProduto);
SELECT @NomeProduto;

Delimiter //
CREATE PROCEDURE CalculaDesconto
(INOUT Valor Decimal (10,2), IN Desconto DECIMAL (10,2))
	BEGIN
		SET Valor = Valor - Desconto;
	END //
Delimiter ;

SET @ValorProduto = 800.00;
CALL CalculaDesconto(@ValorProduto, 200.00);
SELECT @ValorProduto;

-- OLD e testes

-- DELIMITER //

-- CREATE TRIGGER trigger_calcula_total
-- BEFORE INSERT ON Pedidos
-- FOR EACH ROW
-- BEGIN
--     DECLARE total DECIMAL(10, 2);

--     SET total = 0;

--     -- Calcula o valor total do pedido multiplicando a quantidade pelo preço unitário de cada item
--     SELECT SUM(Quantidade * PrecoUnitario) INTO total
--     FROM ItensPedido
--     WHERE PedidoID = NEW.ID;

--     SET NEW.TotalPedido = total;
-- END //

-- DELIMITER ;

-- DELIMITER //

-- CREATE TRIGGER trigger_atualiza_total_compras
-- AFTER DELETE ON Pedidos
-- FOR EACH ROW
-- BEGIN
--     DECLARE clienteID INT;

--     SET clienteID = OLD.ClienteID;

--     -- Atualiza o total de compras do cliente subtraindo o valor do pedido excluído
--     UPDATE Clientes
--     SET TotalCompras = TotalCompras - OLD.TotalPedido
--     WHERE ID = clienteID;
-- END //

-- DELIMITER ;
