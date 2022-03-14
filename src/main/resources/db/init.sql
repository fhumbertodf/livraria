
DROP TABLE IF EXISTS livro_autor;
DROP TABLE IF EXISTS autor;
DROP TABLE IF EXISTS livro;
DROP TABLE IF EXISTS usuario;


CREATE TABLE autora (
  id INTEGER NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) DEFAULT NULL,
  nome VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE livro (
  id INTEGER NOT NULL AUTO_INCREMENT,
  dataLancamento DATE DEFAULT NULL,
  isbn VARCHAR(255) DEFAULT NULL,
  preco double NOT NULL,
  titulo VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE livro_autor (
  livro_id INTEGER NOT NULL,
  autores_id INTEGER NOT NULL,
  PRIMARY KEY (livro_id, autores_id)
);

CREATE TABLE usuario (
  id INTEGER NOT NULL AUTO_INCREMENT,
  email VARCHAR(255) DEFAULT NULL,
  senha VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE livro_autor ADD CONSTRAINT FK9590997AD70C7E4A FOREIGN KEY (autores_id) REFERENCES autor (id);
ALTER TABLE livro_autor ADD CONSTRAINT FK9590997AFA17418 FOREIGN KEY (livro_id) REFERENCES livro (id);

INSERT INTO autor VALUES (1,'sergio.lopes@caelum.com.br','Sergio Lopes');
INSERT INTO autor VALUES (2,'nico.steppat@caelum.com.br','Nico Steppat');
INSERT INTO autor VALUES (3,'aniche@teste.com.br','Mauricio Aniche');
INSERT INTO autor VALUES (4,'flavio.almeida@caelum.com.br','Flavio Almeida');
INSERT INTO autor VALUES (5,'paulo.silveira@caelum.com.br','Paulo Silveira');

INSERT INTO livro VALUES (1,'2016-02-26','121-3-12-312312-3',49.9,'MEAN');
INSERT INTO livro VALUES (2,'2016-02-27','123-1-31-212313-1',49.9,'Arquitetura Java');
INSERT INTO livro VALUES (3,'2016-03-01','123-1-31-231312-3',39.9,'AngularJS');
INSERT INTO livro VALUES (5,'2016-03-01','124-5-55-533223-2',39.9,'TDD');
INSERT INTO livro VALUES (7,'2016-03-01','122-3-44-322323-2',59.9,'SOA');
INSERT INTO livro VALUES (9,'2016-03-01','123-1-23-131231-2',19.9,'Primefaces');
INSERT INTO livro VALUES (10,'2016-03-01','123-1-23-123123-1',79.9,'JSF2');
INSERT INTO livro VALUES (11,'2016-03-01','123-1-31-312312-3',59.9,'JPA');

INSERT INTO livro_autor VALUES (1,4);
INSERT INTO livro_autor VALUES (2,1);
INSERT INTO livro_autor VALUES (2,2);
INSERT INTO livro_autor VALUES (2,5);
INSERT INTO livro_autor VALUES (3,1);
INSERT INTO livro_autor VALUES (5,3);
INSERT INTO livro_autor VALUES (7,2);
INSERT INTO livro_autor VALUES (9,1);
INSERT INTO livro_autor VALUES (10,2);
INSERT INTO livro_autor VALUES (11,4);

INSERT INTO usuario VALUES (1,'nico.steppat@caelum.com.br','12345');
