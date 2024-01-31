CREATE DATABASE dbAcademicoExercicios;
USE dbAcademicoExercicios;

--
-- criação de tabelas
--

-- tabela depto -----------------

CREATE TABLE depto (
   cod_depto  CHAR(5)      NOT NULL,
   nome_depto VARCHAR(40)  NOT NULL,
   CONSTRAINT pk_depto 
      PRIMARY KEY (cod_depto)
);

-- tabela disciplina -----------------

CREATE TABLE disciplina (
   cod_depto     CHAR(5)     NOT NULL,
   num_disc      INTEGER     NOT NULL,
   nome_disc     VARCHAR(40) NOT NULL,
   creditos_disc INTEGER     NOT NULL,
   CONSTRAINT pk_disciplina 
      PRIMARY KEY (cod_depto, num_disc)
);

-- tabela periodo --------------
  
CREATE TABLE periodo (
   ano_sem     INTEGER NOT NULL,
   cod_depto   CHAR(5) NOT NULL,
   num_disc    INTEGER NOT NULL,
   sigla_ofer  CHAR(2) NOT NULL,
   dia_sem     INTEGER NOT NULL,
   hora_inicio INTEGER NOT NULL,
   cod_pred    INTEGER NULL,
   num_sala    INTEGER NULL,
   num_horas   INTEGER NOT NULL,
   CONSTRAINT pk_periodo 
      PRIMARY KEY (
         cod_depto, 
         num_disc, 
         ano_sem, 
         sigla_ofer, 
         dia_sem, 
         hora_inicio
      )
);

-- tabela predio -----------------
CREATE TABLE predio (
   cod_pred  INTEGER     NOT NULL,
   nome_pred VARCHAR(40) NOT NULL,
   CONSTRAINT pk_predio 
      PRIMARY KEY (cod_pred)
);
-- tabela prereq -----------------

CREATE TABLE prereq (
   cod_depto        CHAR(5) NOT NULL,
   num_disc         INTEGER NOT NULL,
   cod_depto_prereq CHAR(5) NOT NULL,
   num_disc_prereq  INTEGER NOT NULL,
   CONSTRAINT pk_prereq 
      PRIMARY KEY (
         cod_depto_prereq, 
         cod_depto, 
         num_disc, 
         num_disc_prereq
      )
);

-- tabela professor --------------

CREATE TABLE professor (
   cod_prof  INTEGER     NOT NULL,
   nome_prof VARCHAR(40) NULL,
   cod_depto CHAR(5)     NOT NULL,
   cod_tit   INTEGER     NULL,
   CONSTRAINT pk_professor 
      PRIMARY KEY (cod_prof)
);

-- tabela prof_oferta ---------

CREATE TABLE prof_oferta (
   ano_sem    INTEGER NOT NULL,
   cod_depto  CHAR(5) NOT NULL,
   num_disc   INTEGER NOT NULL,
   sigla_ofer CHAR(2) NOT NULL,
   cod_prof   INTEGER NOT NULL,
   CONSTRAINT pk_prof_oferta 
      PRIMARY KEY (
         cod_depto, 
         num_disc, 
         ano_sem, 
         sigla_ofer, 
         cod_prof
      )
);

-- tabela sala -------------------------
CREATE TABLE sala (
   cod_pred        INTEGER     NOT NULL,
   num_sala        INTEGER     NOT NULL,
   descricao_sala  VARCHAR(40) NULL,
   capacidade_sala INTEGER     NULL,
   CONSTRAINT pk_sala 
      PRIMARY KEY (
         cod_pred, 
         num_sala
      )
);
-- tabela titulacao -------------

CREATE TABLE titulacao (
   cod_tit  INTEGER     NOT NULL,
   nome_tit VARCHAR(40) NOT NULL,
   CONSTRAINT pk_titulacao 
      PRIMARY KEY (cod_tit)
);

-- tabela oferta -------------

CREATE TABLE oferta (
   ano_sem         INTEGER NOT NULL,
   cod_depto       CHAR(5) NOT NULL,
   num_disc        INTEGER NOT NULL,
   sigla_ofer      CHAR(2) NOT NULL,
   capacidade_ofer INTEGER NULL,
   CONSTRAINT pk_oferta 
      PRIMARY KEY (
         cod_depto, 
         num_disc, 
         ano_sem, 
         sigla_ofer
      )
);

--
-- adição de chaves estrangeiras
--

ALTER TABLE  disciplina
   ADD CONSTRAINT 
      fk_disciplina_depto 
   FOREIGN KEY (cod_depto)
      REFERENCES depto (cod_depto)
         ON DELETE RESTRICT 
         ON UPDATE CASCADE;

ALTER TABLE  periodo
   ADD CONSTRAINT 
      fk_periodo_sala 
   FOREIGN KEY (cod_pred, num_sala)
      REFERENCES sala (cod_pred, num_sala)
         ON DELETE RESTRICT 
         ON UPDATE CASCADE;

ALTER TABLE  periodo
   ADD CONSTRAINT 
      fk_periodo_oferta 
   FOREIGN KEY (cod_depto, num_disc, 
                ano_sem, sigla_ofer
               )
      REFERENCES oferta (
         cod_depto, num_disc, 
         ano_sem, sigla_ofer
        )
         ON DELETE CASCADE 
         ON UPDATE CASCADE;
         

ALTER TABLE  prereq
   ADD CONSTRAINT 
      fk_prereq_eh_pre_discipli 
   FOREIGN KEY (cod_depto_prereq, 
                num_disc_prereq
               )
      REFERENCES disciplina 
            (cod_depto, num_disc)
         ON DELETE RESTRICT 
         ON UPDATE CASCADE;

ALTER TABLE  prereq
   ADD CONSTRAINT 
      fk_prereq_tem_pre_discipli 
   FOREIGN KEY (cod_depto, num_disc)
      REFERENCES disciplina (cod_depto, 
                             num_disc
                            )
         ON DELETE CASCADE 
         ON UPDATE CASCADE;


ALTER TABLE  professor
   ADD CONSTRAINT 
      fk_professor_titulacao 
   FOREIGN KEY (cod_tit)
      REFERENCES titulacao(cod_tit)
         ON DELETE SET NULL 
         ON UPDATE CASCADE;


ALTER TABLE  professor
   ADD CONSTRAINT 
      fk_professor_depto 
   FOREIGN KEY (cod_depto)
      REFERENCES depto(cod_depto)
         ON DELETE RESTRICT 
         ON UPDATE CASCADE;
         

ALTER TABLE  prof_oferta
   ADD CONSTRAINT 
      fk_prof_oferta_professor 
   FOREIGN KEY (cod_prof)
      REFERENCES professor(cod_prof)
         ON DELETE RESTRICT 
         ON UPDATE CASCADE;


ALTER TABLE  prof_oferta
   ADD CONSTRAINT 
      fk_prof_oferta_oferta 
   FOREIGN KEY (cod_depto, num_disc, 
                ano_sem, sigla_ofer
               )
      REFERENCES oferta 
         (cod_depto, num_disc, 
          ano_sem, sigla_ofer
         )
         ON DELETE CASCADE 
         ON UPDATE CASCADE;


ALTER TABLE  sala
   ADD CONSTRAINT 
      fk_sala_predio 
   FOREIGN KEY (cod_pred)
      REFERENCES predio (cod_pred)
         ON DELETE RESTRICT  
         ON UPDATE CASCADE;
         
ALTER TABLE oferta
   ADD CONSTRAINT 
      fk_oferta_disciplina 
   FOREIGN KEY (cod_depto, num_disc)
      REFERENCES disciplina 
           (cod_depto, num_disc)
         ON DELETE RESTRICT 
         ON UPDATE CASCADE;
         
-- aqui os dados são carregados 
-- cuidar com a ordem das referências 

INSERT INTO depto (cod_depto,nome_depto) VALUES
('INF01','Informática');
INSERT INTO depto (cod_depto,nome_depto) VALUES
('MED01','Medicina Interna');
INSERT INTO depto (cod_depto,nome_depto) VALUES
('MAT01','Matemática');
INSERT INTO depto (cod_depto,nome_depto) VALUES
('FIS01','Física');


INSERT INTO predio (cod_pred,nome_pred) VALUES
(43421,'Informática - laboratórios');
INSERT INTO predio (cod_pred,nome_pred) VALUES
(43422,'Informática - administração');
INSERT INTO predio (cod_pred,nome_pred) VALUES
(43423,'Informática - aulas');

INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,101,'Laboratório Windows',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,102,'Laboratório Redes',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,103,'Laboratório Linux',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,104,'Laboratório Windows',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,105,'Laboratório Linux',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,106,'Laboratório Hardware',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43421,107,'Laboratório Automação',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43422,101,'Secretaria geral',NULL);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43422,102,'Secretaria graduação',NULL);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43422,103,'Secretaria pós-graduação',NULL);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,101,'Sala de aula comum',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,102,'Sala de aula comum',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,103,'Sala de aula comum',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,104,'Sala de aula multimídia',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,105,'Auditório',80);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,106,'Sala de aula laboratório',30);
INSERT INTO sala (cod_pred,num_sala,descricao_sala,capacidade_sala) VALUES
(43423,107,'Sala de aula laboratório',30);



INSERT INTO titulacao (cod_tit,nome_tit) VALUES
(1,'Graduado');
INSERT INTO titulacao (cod_tit,nome_tit) VALUES
(2,'Especialista');
INSERT INTO titulacao (cod_tit,nome_tit) VALUES
(3,'Mestre');
INSERT INTO titulacao (cod_tit,nome_tit) VALUES
(4,'Doutor');


INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('MAT01',101,'Cálculo Diferencial',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('MAT01',102,'Álgebra linear',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('MAT01',103,'Geometria analítica',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',101,'Programação FORTRAN',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',102,'Algoritmos e programação',6);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',103,'Estruturas de dados',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',104,'Programação lógica',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',105,'Teoria da commputação',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',106,'Banco de dados',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',107,'Linguagens formais',2);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',108,'Compiladores',4);
INSERT INTO disciplina (cod_depto,num_disc,nome_disc,creditos_disc) VALUES
('INF01',109,'Classificação e pesquisa',6);

  
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',109,'INF01',107);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',109,'INF01',108);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',108,'INF01',106);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',108,'INF01',105);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',107,'INF01',104);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',106,'INF01',104);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',105,'INF01',104);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',104,'INF01',102);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('INF01',103,'INF01',102);
INSERT INTO prereq(cod_depto,num_disc,cod_depto_prereq,num_disc_prereq) VALUES
('MAT01',103,'MAT01',101);



INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'MAT01',101,'A',40);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'MAT01',101,'A',2,8,43423,101,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'MAT01',101,'A',4,8,43423,101,2);

INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'MAT01',101,'B',40);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'MAT01',101,'B',2,10,43423,101,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'MAT01',101,'B',4,10,43423,101,2);

INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'MAT01',101,'C',40);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'MAT01',101,'C',2,8,43423,102,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'MAT01',101,'C',4,8,43423,102,2);

INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',101,'A',40);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',101,'A',2,8,43421,102,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',101,'A',4,8,43421,102,2);

INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',101,'B',40);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',101,'B',2,18,43421,102,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',101,'B',4,18,43421,102,2);

INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',102,'A',20);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',102,'A',2,8,43421,101,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',102,'A',4,8,43421,103,2);
INSERT INTO periodo
   (ano_sem,cod_depto,num_disc,sigla_ofer,
      dia_sem,hora_inicio,cod_pred,num_sala,num_horas) VALUES
(20021,'INF01',102,'A',6,8,43421,103,2);

INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',102,'B',20);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',102,'C',20);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',103,'U',60);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',104,'U',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',105,'U',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',106,'A',30);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',106,'B',30);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',107,'U',70);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',108,'U',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20021,'INF01',109,'U',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'MAT01',102,'A',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'MAT01',102,'B',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'MAT01',102,'C',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',101,'U',20);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',102,'A',20);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',102,'B',20);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',102,'C',20);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',103,'U',60);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',104,'U',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',105,'U',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',106,'U',70);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',107,'A',30);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',107,'B',40);
INSERT INTO oferta (ano_sem,cod_depto,num_disc,sigla_ofer,capacidade_ofer) VALUES
(20022,'INF01',109,'U',40);

INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(1,'INF01',4,'Souza');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(2,'INF01',4,'Antunes');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(3,'INF01',4,'Macedo');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(4,'INF01',NULL,'Machado');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(5,'INF01',3,'Tavares');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(6,'INF01',3,'Pereira');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(7,'MAT01',4,'Álvares');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(8,'MAT01',4,'Silva');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(9,'MAT01',NULL,'Souza');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(10,'INF01',NULL,'Machado');
INSERT INTO professor (cod_prof,cod_depto,cod_tit,nome_prof) VALUES
(11,'INF01',4,'Moreira');


INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'MAT01',101,'A',10);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'MAT01',101,'A',11);

INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'MAT01',101,'A',2);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'MAT01',101,'B',7);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'MAT01',101,'C',8);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',101,'A',4);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',101,'A',5);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',101,'B',1);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',102,'A',2);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',102,'B',3);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',102,'C',6);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',102,'C',5);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',103,'U',7);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',104,'U',4);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',105,'U',2);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',106,'A',3);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',106,'B',6);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',107,'U',5);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',108,'U',4);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20021,'INF01',109,'U',5);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'MAT01',102,'A',3);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'MAT01',102,'B',6);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'MAT01',102,'C',5);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',101,'U',2);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',102,'A',6);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',102,'B',1);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',102,'C',2);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',103,'U',3);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',104,'U',2);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',105,'U',1);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',106,'U',6);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',107,'A',3);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',107,'B',4);
INSERT INTO prof_oferta(ano_sem,cod_depto,num_disc,sigla_ofer,cod_prof) VALUES
(20022,'INF01',109,'U',3);
