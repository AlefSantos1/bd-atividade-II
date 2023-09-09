CREATE DATABASE gerenciando_comentarios_de_blog;

SHOW DATABASES;

USE gerenciando_comentarios_de_blog;


CREATE TABLE Artigos (
    ArtigoID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Conteudo TEXT,
    DataPublicacao DATE
);


CREATE TABLE Comentarios (
    ComentarioID INT AUTO_INCREMENT PRIMARY KEY,
    ArtigoID INT AUTO_INCREMENT,
    Autor VARCHAR(100) NOT NULL,
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigoID)
);


INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) 
VALUES ('Black lives matter', 'racismo e violência policial', '09-01-2023');

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) 
VALUES ('A arte', 'arte', '23-06-2023');

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) 
VALUES (' A educação em tempos de Covid-19', 'educação e pandemia', '30-06-2023');

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) 
VALUES ('Vale a pena investir em prevenção para evitar o bullying', 'bullying escolar', '01-09-2023');

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) 
VALUES ('É preciso reduzir a desigualdade social brasileira', 'desigualdade social no Brasil', '03-09-2023');

INSERT INTO Comentários (ArtigoID, Autor, Texto, DataComentario) 
VALUES ('Gonzaga', 'Jamais haverá palavras para descrever o profundo trauma e o sofrimento intergeracional que resultaram da injustiça racial', '14-01-2023');

INSERT INTO Comentários (ArtigoID, Autor, Texto, DataComentario) 
VALUES ('Bino', 'Hoje em dia, em pleno século 21, até mesmo a televisão, a moda, a publicidade e os videojogos são por muitos considerados como manifestações artísticas', '27-06-2023');

INSERT INTO Comentários (ArtigoID, Autor, Texto, DataComentario) 
VALUES ('Raissa', 'No meu ponto de vista, essa será oportunidade para repensar o papel da escola e dos pais na vida escolar dos estudantes', '07-09-2023');

INSERT INTO Comentários (ArtigoID, Autor, Texto, DataComentario) 
VALUES ('Larissa', 'Apesar desses atos serem frequentes, pouco espaço tem existido nas escolas para reflexão, havendo apenas ações repressivas quando eles vêm à tona', '08-09-2023');

INSERT INTO Comentários (ArtigoID, Autor, Texto, DataComentario) 
VALUES ('Jonny', 'O pior é que a maioria dos pobres no Brasil vive na periferia das cidades', '10-09-2023');









