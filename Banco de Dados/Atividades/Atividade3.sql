create database aula1;
use aula1;

#Exercicio1 e Exercicio3 

CREATE TABLE fornecedor (
    cod_fornecedor CHAR(4) NOT NULL,
    nome_fornecedor VARCHAR(40) NOT NULL,
    status_fornecedor SMALLINT NULL,
    cidade_fornecedor VARCHAR(40) NULL,
    CONSTRAINT pk_cod_fornecedor 
		PRIMARY KEY (cod_fornecedor)
);

CREATE TABLE peca (
    cod_peca CHAR(4) NOT NULL,
    nome_peca VARCHAR(40) NOT NULL,
    peso_peca SMALLINT NULL,
    cor_peca VARCHAR(20) NULL,
    cidade_peca VARCHAR(40) NULL,
    CONSTRAINT pk_cod_peca 
		PRIMARY KEY (cod_peca)
);

CREATE TABLE embarque (
    cod_fornecedor CHAR(4) NOT NULL,
    cod_peca CHAR(4) NOT NULL,
    data_embarque DATE NOT NULL,
    qtd_embarque SMALLINT NOT NULL,
    CONSTRAINT pk_embarque 
		PRIMARY KEY (cod_fornecedor, cod_peca, data_embarque)
);

# Definição de chaves estrangeiras das tabelas acima

alter table embarque
	add constraint fk_cod_fornecedor
		foreign key (cod_fornecedor)
        references fornecedor(cod_fornecedor)
        on delete no action
        on update cascade;
        
alter table embarque
	add constraint fk_cod_peca
		foreign key (cod_peca)
        references peca(cod_peca)
        on delete cascade
        on update cascade;

#Exercicio2 e Exercicio4

CREATE TABLE departamento (
    cod_departamento INTEGER NOT NULL,
    nome_departamento VARCHAR(40) NOT NULL,
    cod_emp_gerente INTEGER DEFAULT '10' NOT NULL,
    CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento)
);

CREATE TABLE empregado (
    cod_empregado INTEGER NOT NULL,
    nome_empregado VARCHAR(40) NOT NULL,
    cod_departamento INTEGER NOT NULL,
    cod_empregado_chefe INTEGER NOT NULL,
    CONSTRAINT pk_cod_empregado PRIMARY KEY (cod_empregado)
);

# Definição de chaves estrangeiras das tabelas acima

alter table empregado
	add constraint fk_cod_departamento
		foreign key (cod_departamento)
        references departamento(cod_departamento)
        on delete no action
        on update cascade;
	
alter table empregado    
	add constraint fk_cod_empregado_chefe
		foreign key (cod_empregado_chefe)
        references empregado(cod_empregado)
        on delete set null
        on update cascade;

alter table departamento
	add constraint fk_cod_emp_gerente
		foreign key (cod_emp_gerente)
		references empregado(cod_empregado);
    


