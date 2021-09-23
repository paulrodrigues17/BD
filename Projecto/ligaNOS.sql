
/*
Base de Dados

 LIGA NOS


 */

USE Paul;

DROP TABLE IF EXISTS JOGADORES,CLUBE,MELHOR_MARCADOR;

CREATE TABLE IF NOT EXISTS 
JOGADORES
(
  JogadoresId       INT PRIMARY KEY AUTO_INCREMENT,
  Nome              VARCHAR(128) UNIQUE NOT NULL,
  Numero            INT NOT NULL,
  Posicao           VARCHAR(32) NOT NULL,
  Pais              VARCHAR(64) NOT NULL,
  Golos             INT DEFAULT NULL
); 

INSERT INTO 
  JOGADORES(Nome, Numero, Posicao, Pais, Golos)
VALUES
 ('Moussa Marega',11,'Avançado','Mali',100),
 ('Alex Telles',13,'Defesa','Brasil',2),
 ('Renan Ribeiro',1,'Guarda-Redes','Brasil',NULL),
 ('Pizzi',21,'Médio','Portugal',10);

CREATE TABLE IF NOT EXISTS 
CLUBE
(
  Nome              VARCHAR(64) UNIQUE NOT NULL,
  DataFund          INT NOT NULL,
  Estadio           VARCHAR(64) DEFAULT NULL,
  Claques           VARCHAR(64) NOT NULL,
  JogadoresId       INT NOT NULL,
  AnosExist         INT NOT NULL,
  Classificacao     INT NOT NULL,
  PRIMARY KEY(Nome,JogadoresId),
  FOREIGN KEY(JogadoresId) REFERENCES JOGADORES(JogadoresId) ON DELETE CASCADE /*JogadoresId de CLUBES vai buscar a JogadoresId de JOGADORES */
  /*FOREIGN KEY(Classificacao) REFERENCES CLASSIFICACAO(Lugar) ON DELETE CASCADE, Classificacao de CLUBES vai buscar a Lugar de CLASSIFICACAO*/
); 
 
INSERT INTO 
  CLUBE(Nome, DataFund, Estadio, Claques, JogadoresId, AnosExist, Classificacao)
VALUES
  ('Porto',1893,'Dragão','SuperDragões',1,2020-1893,2),
  ('Benfica',1904,'Luz','NN',4,2020-1904,1),
  ('Sporting',1906,'Alvalade','JuveLeo',3,2020-1906,6);

CREATE TABLE IF NOT EXISTS
MELHOR_MARCADOR
(
    Jogador VARCHAR(128) NOT NULL,
    Clube   VARCHAR(128) NOT NULL,
    Golos   INT DEFAULT NULL,
    PRIMARY KEY(Jogador),
    FOREIGN KEY(Jogador) REFERENCES JOGADORES(Nome) ON DELETE CASCADE,
    FOREIGN KEY(Clube) REFERENCES CLUBE(Nome) ON DELETE CASCADE
);

select Golos INTO @v1 from JOGADORES where Nome='Moussa Marega';

INSERT INTO 
  MELHOR_MARCADOR(Jogador,Clube,Golos)
VALUES
  ('Moussa Marega','Porto',@v1),
  ('Alex Telles','Porto',2),
 ('Renan Ribeiro','Sporting',NULL);


