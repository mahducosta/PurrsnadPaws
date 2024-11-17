CREATE DATABASE PURRSANDPAWS;

USE PURRSANDPAWS;

CREATE TABLE resposta(
    idResposta INT PRIMARY KEY AUTO_INCREMENT,
    resposta VARCHAR(20)
);
CREATE TABLE usuario(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(255),
    dtNasc DATE,
    senha VARCHAR(255),
    fkadocao INT,
    fkPet INT,
    CONSTRAINT fkusuariopet FOREIGN KEY (fkPet) REFERENCES resposta (idResposta),
    CONSTRAINT fkusuarioadocao FOREIGN KEY (fkAdocao) REFERENCES resposta (idResposta)
);

INSERT INTO resposta (resposta) VALUES
('sim'),
('nao'),
('Gato'),
('Cachorro'),
('Outro'),
('Nenhum');


SELECT  
    u.idUsuario as IdUsuario,
    u.nome as Nome,
    u.email as Email,
    u.dtNasc as DtNascimento,
    u.senha as Senha,
    r1.resposta as InteresseAdoção,
    r2.resposta as PetUsuario
    from usuario as u
    join resposta as r1
    on u.fkadocao= r1.idResposta
    join resposta as r2
    on u.fkPet = r2.idResposta;

SELECT 
    nome, 
    dtnasc, 
    TIMESTAMPDIFF(YEAR, dtnasc, CURDATE()) AS idade
    FROM usuario;

SELECT
    TRUNCATE(AVG(TIMESTAMPDIFF(YEAR, dtnasc, CURDATE())),0) as MediaIdade
    FROM usuario;



SELECT
    r.resposta as Interesse,
    COUNT(*) as total
    from usuario as u
    join resposta as r
    on u.fkadocao = r.idResposta
    GROUP BY r.resposta;

SELECT
    r.resposta as Interesse,
    COUNT(*) as total
    from usuario as u
    join resposta as r
    on u.fkpet = r.idResposta
    GROUP BY r.resposta;


select * from resposta;

select * from usuario;

drop table resposta;

drop DATABASE PURRSANDPAWS;
