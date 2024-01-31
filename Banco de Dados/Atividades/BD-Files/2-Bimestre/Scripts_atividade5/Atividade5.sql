
create database embarque;
use embarque;

CREATE TABLE peca (
    cod_peca CHAR(4) NOT NULL,
    nome_peca VARCHAR(40) NOT NULL,
    peso_peca SMALLINT NULL,
    cor_peca VARCHAR(20) NULL,
    cidade_peca VARCHAR(40) NULL,
    CONSTRAINT peca_pk 
		PRIMARY KEY (cod_peca)
);

CREATE TABLE fornecedor (
    cod_fornec CHAR(4) NOT NULL,
    nome_fornec VARCHAR(40) NOT NULL,
    status_fornec SMALLINT NULL,
    cidade_fornec VARCHAR(40) NULL,
	CONSTRAINT pk_cod_fornec
		PRIMARY KEY (cod_fornec)
);

CREATE TABLE embarque (
    cod_fornec CHAR(4) NOT NULL,
    cod_peca CHAR(4) NOT NULL,
    data_embarq DATE NOT NULL,
    qtde_embarq SMALLINT NOT NULL,
    
    CONSTRAINT embarq_pk 
		PRIMARY KEY (cod_fornec , cod_peca , data_embarq),
        
	CONSTRAINT embarque_peca_fk
		FOREIGN KEY (cod_peca)
        REFERENCES peca(cod_peca)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        
	CONSTRAINT embarque_fornec_fk
		foreign key (cod_fornec)
        references fornecedor(cod_fornec)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
);

#SET SQL_SAFE_UPDATES = 0; 
# Serve para desativar o modo seguro e deixa a tabela inteira ser excluída. 


