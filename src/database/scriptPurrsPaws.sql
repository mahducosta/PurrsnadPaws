CREATE DATABASE PURRSANDPAWS;

USE PURRSANDPAWS;

CREATE TABLE resposta(
    idResposta INT PRIMARY KEY AUTO_INCREMENT,
    resposta char(3),
    constraint chkreposta check (resposta in ('sim', 'nao')) 
);
CREATE TABLE usuario(
    idUsuario int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(255),
    dtNasc DATE,
    senha VARCHAR(255),
    fkResposta int,
    constraint fkusuarioresposta FOREIGN KEY (fkResposta) references resposta (idResposta)
);

CREATE TABLE pet(
    idUsuario int AUTO_INCREMENT,
    tipo VARCHAR(45) not NULL,
    adotado char(3) not NULL,
    dtNasc DATE not NULL,
    porte VARCHAR(45),
    descricao VARCHAR(300),
    atividadesRecentes VARCHAR(300),
    Fkusuario int,
    constraint fkpetUsuario FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario),
    constraint pkComposta PRIMARY KEY (idUsuario, Fkusuario),
);


INSERT INTO resposta (resposta) VALUES
('sim'),
('nao');

select * from usuario;

drop DATABASE PURRSANDPAWS;
