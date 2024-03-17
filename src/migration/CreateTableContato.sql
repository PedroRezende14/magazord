CREATE TABLE contato (
    id int NOT NULL AUTO_INCREMENT,
    tipo boolean NOT NULL,
    descricao varchar(255) NOT NULL,
    idPessoa int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT `contact_ibfk_2` FOREIGN KEY (idPessoa) REFERENCES Pessoa (`id`) ON DELETE CASCADE
) 