INSERT INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) 
    VALUES
    (1, 'ABC123', 'Ford', 'Fiesta', 2015, 'João'),
    (2, 'DEF456', 'Chevrolet', 'Cruze', 2018, 'Maria'),
    (3, 'GHI789', 'Volkswagen', 'Golf', 2019, 'Pedro');

INSERT INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Meio_Pagamento) 
    VALUES
     ('12345678901', 'Ana', 'ana@example.com', '987654321', 'Centro', 'C'),
     ('23456789012', 'Carlos', 'carlos@example.com', '876543210', 'Bairro A', 'D'),
     ('34567890123', 'Mariana', 'mariana@example.com', '765432109', 'Bairro B', 'E');

INSERT INTO Viagem (Id, Kms, Valor, Padrao) 
    VALUES
     ('V001', 100.5, 50.25, 'S'),
     ('V002', 200.75, 75.50, 'N'),
     ('V003', 150.25, 60.10, 'S');

INSERT INTO Urbana (Bairro_Partida, fk_Viagem_Id) 
    VALUES
     ('Centro', 'V001'), 
     ('Bairro A', 'V002'), 
     ('Bairro B', 'V003');

INSERT INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) 
    VALUES
     (10.50, 'Cidade X', 'V001'), 
     (15.75, 'Cidade Y', 'V002'), 
     (12.25, 'Cidade Z', 'V003');

INSERT INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) 
    VALUES
     (1, 'V001'), 
     (2, 'V002'), 
     (3, 'V003');

INSERT INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) 
    VALUES
     ('12345678901', 'V001'), 
     ('23456789012', 'V002'), 
     ('34567890123', 'V003');