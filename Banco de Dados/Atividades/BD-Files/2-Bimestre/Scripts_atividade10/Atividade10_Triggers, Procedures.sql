#Se você não especificar explicitamente IN, OUT ou INOUT para um parâmetro nas Stored Procedures, o MySQL irá assumir que é um parâmetro de entrada (IN). 
#Isso pode funcionar para casos simples em que você só precisa de parâmetros de entrada e não precisa retornar valores.

#	1) Crie uma Trigger que atualize a quantidade em estoque dos produtos.  
#	Essa trigger deve fazer com que quando um novo registro seja inserido na tabela ItensPedido, a quantidade do produto seja reduzida do atributo QuantidadeEstoque na tabela Produtos.

USE loja;

DELIMITER //
CREATE TRIGGER atualizarQuantidadeEstoque
AFTER INSERT ON itenspedido
FOR EACH ROW
BEGIN
	UPDATE produtos
    SET QuantidadeEstoque = (QuantidadeEstoque - NEW.Quantidade)
    WHERE ID = NEW.ProdutoID;
END //
DELIMITER ;

#Exemplo2
#DELIMITER //
#CREATE TRIGGER before_update_customer
#	BEFORE UPDATE ON customer
#    FOR EACH ROW
#    BEGIN
#		SET NEW.last_update = NOW(); #NOW() --> Retorna a data e hora atual
#	END//
#DELIMITER ;

#	2) Crie uma Trigger que atualize a quantidade em estoque dos produtos.  
#	Essa trigger deve fazer com que quando um registro seja excluído na tabela ItensPedido, a quantidade do produto seja aumentada do atributo Quantidade Estoque na tabela Produtos.

USE loja;

DELIMITER //
CREATE TRIGGER atualizarQuantidadeEstoque2
AFTER DELETE ON itenspedido
FOR EACH ROW
BEGIN
	UPDATE produtos
    SET QuantidadeEstoque = (QuantidadeEstoque + OLD.Quantidade)
    WHERE ID = OLD.ProdutoID;
END //
DELIMITER ;

#	3) Crie uma Stored Procedure que receba como entrada o ID do pedido e retorne o total do pedido.

USE loja;

DELIMITER //
CREATE PROCEDURE ValorTotalPedidos(IN ID INT, OUT total DECIMAL(10, 2))
BEGIN
	SELECT TotalPedido 
    INTO total 
    FROM pedidos 
    WHERE ID = pedidos.ID;
END//
DELIMITER ;

CALL ValorTotalPedidos(2, @valorPedido);
SELECT @valorPedido;

#	4) Crie uma Stored Procedure que receba como entrada o ID do pedido, dê um desconto de 10% sobre o valor total do pedido e retorne o valor com desconto.

USE loja;

DELIMITER //
CREATE PROCEDURE DescontoValor (IN ID INT, OUT ValorComDesconto DECIMAL(10, 2))
BEGIN
	DECLARE valor_item DECIMAL(10, 2);
    SET valor_item = (
		SELECT TotalPedido 
        FROM pedidos 
        WHERE ID = pedidos.ID
    );
    SET ValorComDesconto = valor_item * 0.9;
END //
DELIMITER ;

CALL DescontoValor(2, @valorDesconto);
SELECT @valorDesconto;

#	5) Crie uma Trigger que chame uma Stored Procedure para redução da quantidade de produto em estoque (tabela Prdutos) sempre que um produto seja incluído na tabela ItensPedido.
USE loja;

DELIMITER //
CREATE PROCEDURE reducaoQuantidade(IN ProdutoID INT, IN QuantidadeProduto INT)
BEGIN
	UPDATE produtos
    SET QuantidadeEstoque = (QuantidadeEstoque - QuantidadeProduto)
    WHERE produtos.ID = ProdutoID;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER reduzirQuantidadeEstoque
AFTER INSERT ON itenspedido
FOR EACH ROW
BEGIN
	CALL reducaoQuantidade(NEW.ProdutoID, NEW.Quantidade);
END //
DELIMITER ;