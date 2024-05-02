CREATE TABLE Carro (
    Codigo INTEGER PRIMARY KEY,
    Placa VARCHAR(6),
    Marca VARCHAR(20),
    Modelo VARCHAR(20),
    Ano INTEGER,
    Nome_Motorista VARCHAR(30),
    CONSTRAINT UNIQUEPLACA UNIQUE (Placa)
);

CREATE TABLE Passageiro (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(30),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    Bairro VARCHAR(30),
    Cartao VARCHAR(16),
    Meio_Pagamento CHAR,
    CONSTRAINT UNIQUECARTAO UNIQUE (Cartao),
    CONSTRAINT UNIQUETEL UNIQUE (TELEFONE)
);

CREATE TABLE Viagem (
    Id CHAR PRIMARY KEY,
    Kms FLOAT,
    Valor FLOAT,
    Padrao CHAR
);

CREATE TABLE Urbana (
    Bairro_Partida VARCHAR(30),
    Bairro_Destino VARCHAR(30),
    fk_Viagem_Id CHAR(100) PRIMARY KEY
);

CREATE TABLE Interurbana (
    Taxa_Adicional FLOAT,
    Cidade_Destino CHAR,
    fk_Viagem_Id CHAR PRIMARY KEY
);

CREATE TABLE Faz (
    fk_Carro_Codigo INTEGER,
    fk_Viagem_Id CHAR
);

CREATE TABLE Usa (
    fk_Passageiro_CPF VARCHAR(11),
    fk_Viagem_Id CHAR
);
 
ALTER TABLE Urbana ADD CONSTRAINT FK_Urbana_2
    FOREIGN KEY (fk_Viagem_Id)
    REFERENCES Viagem (Id)
    ON DELETE CASCADE;
 
ALTER TABLE Interurbana ADD CONSTRAINT FK_Interurbana_2
    FOREIGN KEY (fk_Viagem_Id)
    REFERENCES Viagem (Id)
    ON DELETE CASCADE;
 
ALTER TABLE Faz ADD CONSTRAINT FK_Faz_2
    FOREIGN KEY (fk_Viagem_Id)
    REFERENCES Viagem (Id)
    ON DELETE SET NULL;
 
ALTER TABLE Usa ADD CONSTRAINT FK_Usa_1
    FOREIGN KEY (fk_Passageiro_CPF)
    REFERENCES Passageiro (CPF);
    /*ON DELETE RESTRICT é padrão no Oracle*/
 
ALTER TABLE Usa ADD CONSTRAINT FK_Usa_2
    FOREIGN KEY (fk_Viagem_Id)
    REFERENCES Viagem (Id)
    ON DELETE SET NULL;