create database atividade4;
use atividade4;

CREATE TABLE clientes (
    id_cliente INTEGER NOT NULL,
    nome VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL,
    telefone CHAR(15) NULL,
    endereco VARCHAR(200) NULL,
    
    CONSTRAINT pk_id_cliente 
		PRIMARY KEY (id_cliente),
    CONSTRAINT unique_email 
		UNIQUE (email)
);

CREATE TABLE pedidos (
    id_pedido INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    datapd DATE NOT NULL,
    statuspd VARCHAR(40) NOT NULL,
    
    CONSTRAINT pk_id_pedido 
		PRIMARY KEY (id_pedido)
);

alter table pedidos
	add constraint fk_id_cliente
		foreign key (id_cliente)
        references clientes(id_cliente)
			on delete cascade
            on update cascade;

CREATE TABLE produtos (
    id_produto INTEGER NOT NULL,
    nome VARCHAR(40),
    preco NUMERIC(7,2) NOT NULL,
    estoque INTEGER NOT NULL,
    
    CONSTRAINT pk_id_produto 
		PRIMARY KEY (id_produto)
);

CREATE TABLE itensPedido (
    id_itensPedido INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    qtd INTEGER NOT NULL,
    unitPreco NUMERIC(7,2) NOT NULL,
    
    CONSTRAINT pk_itensPedido 
		PRIMARY KEY (id_itensPedido)
);
    
alter table itensPedido
	add constraint fk_id_pedido
		foreign key (id_pedido)
        references pedidos(id_pedido),
	add constraint fk_id_produto
		foreign key (id_produto)
        references produtos(id_produto)
			on update cascade
            on delete no action;
            






    
		
	