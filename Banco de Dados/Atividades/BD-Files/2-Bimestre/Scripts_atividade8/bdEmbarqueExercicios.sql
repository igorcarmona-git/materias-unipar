--
-- criação do banco
--

create database bdEmbarqueExercicios;

use bdEmbarqueExercicios;

--
-- criação de tabelas
--
CREATE TABLE peca (
   cod_peca CHAR (4) NOT NULL,
   nome_peca VARCHAR (40) NOT NULL,
   peso_peca SMALLINT NULL,
   cor_peca VARCHAR (20) NULL,
   cidade_peca VARCHAR (40) NULL,
   CONSTRAINT peca_pk 
     PRIMARY KEY (cod_peca)
);
CREATE TABLE fornecedor (
   cod_fornec CHAR (4) NOT NULL,
   nome_fornec VARCHAR (40) NOT NULL,
   status_fornec SMALLINT NULL,
   cidade_fornec VARCHAR (40) NULL,
   CONSTRAINT fornec_pk 
     PRIMARY KEY (cod_fornec)
);
CREATE TABLE embarque (
   cod_fornec CHAR (4)  NOT NULL,
   cod_peca CHAR (4) NOT NULL,
   data_embarq DATE NOT NULL,
   qtde_embarq SMALLINT NOT NULL,
   CONSTRAINT embarq_pk
      PRIMARY KEY (cod_fornec,
                   cod_peca, 
                   data_embarq)
);

--
-- adição de chaves estrangeiras
--
ALTER TABLE embarque
   ADD CONSTRAINT embarq_fornec_fk
      FOREIGN KEY (cod_fornec)
         REFERENCES fornecedor(cod_fornec)
           ON DELETE RESTRICT
           ON UPDATE CASCADE;
           
ALTER TABLE embarque
   ADD CONSTRAINT embarq_peca_fk
   FOREIGN KEY (cod_peca)
      REFERENCES peca(cod_peca)
         ON DELETE CASCADE
         ON UPDATE CASCADE;

--
-- carrega tabela peca
--
INSERT INTO peca
   (cod_peca,nome_peca,peso_peca,cor_peca,cidade_peca)
   VALUES
   ('P1','Parafuso',5,'Cinza','Porto Alegre');
INSERT INTO peca
   (cod_peca,nome_peca,peso_peca,cor_peca,cidade_peca)
   VALUES
   ('P2','Arruela',5,'Cinza','Porto Alegre');
INSERT INTO peca
   (cod_peca,nome_peca,peso_peca,cor_peca,cidade_peca)
   VALUES
   ('P3','Mancal',25,'Vermelho','Rio');
INSERT INTO peca
   (cod_peca,nome_peca,peso_peca,cor_peca,cidade_peca)
   VALUES
   ('P4','Eixo',15,'Verde','Rio');
INSERT INTO peca
   (cod_peca,nome_peca,peso_peca,cor_peca,cidade_peca)
   VALUES
   ('P5','Motor',65,'Vermelho',NULL);

--
-- carrega tabela fornecedor
--
INSERT INTO fornecedor
   (cod_fornec,nome_fornec,status_fornec,cidade_fornec)
   VALUES
   ('F1','Antunes',5,'Porto Alegre');
INSERT INTO fornecedor
   (cod_fornec,nome_fornec,status_fornec,cidade_fornec)
   VALUES
   ('F2','Silva',10,'Porto Alegre');
INSERT INTO fornecedor
   (cod_fornec,nome_fornec,status_fornec,cidade_fornec)
   VALUES
   ('F3','Souza',15,'Curitiba');
INSERT INTO fornecedor
   (cod_fornec,nome_fornec,status_fornec,cidade_fornec)
   VALUES
   ('F6','Antunes',10,'Rio');
INSERT INTO fornecedor
   (cod_fornec,nome_fornec,status_fornec,cidade_fornec)
   VALUES
   ('F4','Machado',10,NULL);
INSERT INTO fornecedor
   (cod_fornec,nome_fornec,status_fornec,cidade_fornec)
   VALUES
   ('F5','Barcelos',12,'Rio');

--
-- carrega tabela embarque
--
INSERT INTO embarque (cod_fornec,cod_peca,data_embarq,qtde_embarq) VALUES ('F1','P1','2000-01-12',300);
   
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F1','P1','2000-01-15',200);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F1','P2','2000-01-12',350);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F1','P3','2000-07-22',250);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F1','P4','2000-01-12',150);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F1','P5','2000-05-14',200);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F2','P1','2000-01-12',300);  
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F2','P1','2000-12-04',300);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F2','P2','2000-12-04',350);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F2','P3','2000-12-04',250);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F2','P4','2000-09-24',150);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F3','P2','2000-04-04',200);
INSERT INTO embarque
   (cod_fornec,cod_peca,data_embarq,qtde_embarq)
   VALUES
   ('F3','P3','2000-10-30',350);
  