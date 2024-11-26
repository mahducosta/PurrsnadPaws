CREATE DATABASE PURRSANDPAWS;

USE PURRSANDPAWS;

CREATE TABLE resposta(
    idResposta INT PRIMARY KEY AUTO_INCREMENT,
    interesse char(3),
    constraint chkinteresse check (interesse in ('Sim', 'Não')),
    pet varchar(45),
    fkUsuario int,
    constraint fkrespostaUsuario Foreign Key (fkUsuario) REFERENCES usuario (idUsuario)
);
CREATE TABLE usuario(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(255),
    dtNasc DATE,
    senha VARCHAR(255)
);

insert into usuario (nome, email, dtNasc, senha) VALUES 
('duda','duda123@gmail.com', '2005-07-01', '1234');

CREATE TABLE QUIZ(
    idQuiz int PRIMARY KEY AUTO_INCREMENT,
    resultado VARCHAR(45),
    fkUsuario int,
    constraint fkQuizUsuario FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario)
);
SELECT * FROM resposta;
INSERT INTO resposta (interesse, fkUsuario, pet) VALUES ('Não', 4, 'Gato');
INSERT INTO resposta (interesse, fkUsuario, pet) VALUES ('Sim', 5, 'Cachorro')]

INSERT INTO quiz (resultado, fkUsuario) VALUES


SELECT
    q.resultado as Resultado,
    q.fkUsuario as usuario

SELECT 
    nome, 
    dtnasc, 
    TIMESTAMPDIFF(YEAR, dtnasc, CURDATE()) AS idade
    FROM usuario;
    
-- KPI IDADE    
SELECT
    TRUNCATE(AVG(TIMESTAMPDIFF(YEAR, dtnasc, CURDATE())),0) as MediaIdade
    FROM usuario;

-- GRAFICO PIZZA INTERESSE EM ADOTAR
SELECT
    COUNT(fkUsuario) as total,
    r.interesse as adoção
    from resposta as r
    JOIN usuario as u
    on r.fkusuario = u.idUsuario
    GROUP BY r.interesse;

-- GRAFICO BARRA TIPO DE PET QUE POSSUI
SELECT
    COUNT(fkUsuario) as total,
    r.pet as pet
    from resposta as r
    JOIN usuario as u
    on r.fkusuario = u.idUsuario
    GROUP BY r.pet
    ORDER BY r.pet asc;

-- KPI TOTAL USUARIOS
SELECT  
    COUNT(idUsuario) as total
    from usuario;


select * from resposta;

select * from usuario;


SELECT * FROM quiz;

INSERT INTO quiz(resultado, fkUsuario) VALUES ('${resultado}', '${id}');