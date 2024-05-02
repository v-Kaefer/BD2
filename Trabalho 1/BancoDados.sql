/*
• Pelo menos 03 carros, 05 passageiros e 10 corridas.
• Elabore dados próximos da realidade (não utilizar 'Pessoa A', 'Pessoa B' etc). 
• Escreva os comandos SQL para inserir os registos no banco de dados Oracle.
*/

INSERT INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) 
    VALUES
    (1, 'ABC123', 'Ford', 'Fiesta', 2015, 'João Dos Santos'),
    (2, 'DEF456', 'Chevrolet', 'Cruze', 2018, 'Maria Aparecida'),
    (3, 'GHI789', 'Volkswagen', 'Golf', 2019, 'Pedro Henrique'),
    (4, 'JKL012', 'Fiat', 'Uno', 2017, 'Ana Maria'),
    (5, 'MNO345', 'Renault', 'Kwid', 2016, 'Carlos Gomes');

INSERT INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Cartao, Meio_Pagamento) 
    VALUES
    ('12345678901', 'Ana Maria', 'ana@email.com', '987654321', 'Centro', '1234567890123456', 'Crédito'),
    ('23456789012', 'Carlos Antonio', 'carlos@email.com', '876543210', 'Partenon', '2345678901234567', 'Débito'),
    ('34567890123', 'Mariana Da Silva', 'marianadas@email.com', '765432109', 'João Pessoa', '3456789012345678', 'Dinheiro'),
    ('45678901234', 'Pedro Henrique', 'pedroaga@email.com', '654321098', 'Carlos Gomes', '4567890123456789', 'Crédito'),
    ('56789012345', 'Joana Valentina', 'jovalenti@email.com', '543210987', 'Cidade Baixa', '5678901234567890', 'Débito');

INSERT INTO Viagem (Id, Kms, Valor, Padrao) 
    VALUES
     ('001', 10.50, 50.25, 'Basic'),
     ('002', 200.75, 75.50, 'First Class'),
     ('003', 150.25, 60.10, 'Classic'),
     ('004', 120.30, 55.15, 'Basic'),
     ('005', 21.80, 80.60, 'Basic'),
     ('006', 155.35, 65.20, 'Classic'),
     ('007', 13.40, 60.20, 'Basic'),
     ('008', 22.85, 85.70, 'Classic'),
     ('009', 170.45, 70.30, 'First Class'),
     ('010', 14.50, 65.25, 'Basic'),
     ('011', 230.90, 90.80, 'First Class'),
     ('012', 18.55, 75.40, 'Basic'),
     ('013', 15.60, 70.30, 'Basic'),
     ('014', 240.95, 95.90, 'First Class'),
     ('015', 190.65, 80.50, 'First Class');

INSERT INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) 
    VALUES
     ('Centro', 'Navegantes', '001'), 
     ('Agronomia', 'Nonoai', '003'), 
     ('Bela Vista', 'Medianeira', '004'),
     ('Humaitá', 'Bairro W', '005'),
     ('Independência', 'Campo Novo', '006'),
     ('Ipanema', 'Cascata', '007'),
     ('Jardim Botânico', 'Cristal', '008'),
     ('Jardim Isabel', 'Guarujá', '010'),
     ('Coronel Aparício Borges', 'Glória', '012'),
     ('Farrapos', 'Hípica', '013');

INSERT INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) 
    VALUES
     (00.00, 'Canoas', '002'), 
     (5.75, 'Caxias do Sul', '009'), 
     (00.00, 'Bagé', '011'),
     (00.00, 'Alegrete', '014'),
     (4.75, 'Camaquã', '015');

INSERT INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) 
    VALUES
     (1, '001'), 
     (2, '002'), 
     (3, '003'),
     (4, '004'),
     (5, '005'),
     (1, '006'),
     (2, '007'),
     (3, '008'),
     (4, '009'),
     (5, '010'),
     (1, '011'),
     (2, '012'),
     (3, '013'),
     (4, '014'),
     (5, '015');

INSERT INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) 
    VALUES
     ('12345678901', '001'), 
     ('23456789012', '002'), 
     ('34567890123', '003'),
     ('45678901234', '004'),
     ('56789012345', '005'),
     ('12345678901', '006'),
     ('23456789012', '007'),
     ('34567890123', '008'),
     ('45678901234', '009'),
     ('56789012345', '010'),
     ('12345678901', '011'),
     ('23456789012', '012'),
     ('34567890123', '013'),
     ('45678901234', '014'),
     ('56789012345', '015');
