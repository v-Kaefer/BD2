/*
• Pelo menos 03 carros, 05 passageiros e 10 corridas.
• Elabore dados próximos da realidade (não utilizar 'Pessoa A', 'Pessoa B' etc). 
• Escreva os comandos SQL para inserir os registos no banco de dados Oracle.
*/

INSERT ALL 
    INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) VALUES (1, 'ABC123', 'Ford', 'Fiesta', 2015, 'João Dos Santos')
    INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) VALUES (2, 'DEF456', 'Chevrolet', 'Cruze', 2018, 'Maria Aparecida')
    INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) VALUES (3, 'GHI789', 'Volkswagen', 'Golf', 2019, 'Pedro Henrique')
    INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) VALUES (4, 'JKL012', 'Fiat', 'Uno', 2017, 'Ana Maria')
    INTO Carro (Codigo, Placa, Marca, Modelo, Ano, Nome_Motorista) VALUES (5, 'MNO345', 'Renault', 'Kwid', 2016, 'Carlos Gomes')
SELECT * FROM DUAL;

INSERT ALL
    INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Cartao, Meio_Pagamento) VALUES ('12345678901', 'Ana Maria', 'ana@email.com', '987654321', 'Centro', '1234567890123456', 'Crédito')
    INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Cartao, Meio_Pagamento) VALUES ('23456789012', 'Carlos Antonio', 'carlos@email.com', '876543210', 'Partenon', '2345678901234567', 'Débito')
    INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Cartao, Meio_Pagamento) VALUES ('34567890123', 'Mariana Da Silva', 'marianadas@email.com', '765432109', 'João Pessoa', '3456789012345678', 'Dinheiro')
    INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Cartao, Meio_Pagamento) VALUES ('45678901234', 'Pedro Henrique', 'pedroaga@email.com', '654321098', 'Carlos Gomes', '4567890123456789', 'Crédito')
    INTO Passageiro (CPF, Nome, Email, Telefone, Bairro, Cartao, Meio_Pagamento) VALUES ('56789012345', 'Joana Valentina', 'jovalenti@email.com', '543210987', 'Cidade Baixa', '5678901234567890', 'Débito')
SELECT * FROM DUAL;

INSERT ALL
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('001', 10.50, 50.25, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('002', 200.75, 75.50, 'First Class')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('003', 150.25, 60.10, 'Classic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('004', 120.30, 55.15, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('005', 21.80, 80.60, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('006', 155.35, 65.20, 'Classic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('007', 13.40, 60.20, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('008', 22.85, 85.70, 'Classic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('009', 170.45, 70.30, 'First Class')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('010', 14.50, 65.25, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('011', 230.90, 90.80, 'First Class')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('012', 18.55, 75.40, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('013', 15.60, 70.30, 'Basic')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('014', 240.95, 95.90, 'First Class')
    INTO Viagem (Id, Kms, Valor, Padrao) VALUES ('015', 190.65, 80.50, 'First Class')
SELECT * FROM DUAL;

INSERT ALL
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Centro', 'Navegantes', '001')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Agronomia', 'Nonoai', '003')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Bela Vista', 'Medianeira', '004')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Humaitá', 'Bairro W', '005')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Independência', 'Floresta', '006')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Ipanema', 'Cascata', '007')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Jardim Botânico', 'Cristal', '008')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Jardim Isabel', 'Guarujá', '010')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Coronel Aparício Borges', 'Glória', '012')
    INTO Urbana (Bairro_Partida, Bairro_Destino, fk_Viagem_Id) VALUES ('Floresta', 'Hípica', '013')
SELECT * FROM DUAL;

INSERT ALL
    INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) VALUES (00.00, 'Canoas', '002')
    INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) VALUES (5.75, 'Floresta', '009')
    INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) VALUES (00.00, 'Bagé', '011')
    INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) VALUES (00.00, 'Alegrete', '014')
    INTO Interurbana (Taxa_Adicional, Cidade_Destino, fk_Viagem_Id) VALUES (4.75, 'Camaquã', '015')
SELECT * FROM DUAL;

INSERT ALL
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (1, '001')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (2, '002')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (3, '003')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (4, '004')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (5, '005')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (1, '006')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (2, '007')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (3, '008')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (4, '009')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (5, '010')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (1, '011')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (2, '012')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (3, '013')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (4, '014')
    INTO Faz (fk_Carro_Codigo, fk_Viagem_Id) VALUES (5, '015')
SELECT * FROM DUAL;

INSERT ALL
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('12345678901', '001')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('23456789012', '002')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('34567890123', '003')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('45678901234', '004')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('56789012345', '005')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('12345678901', '006')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('23456789012', '007')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('34567890123', '008')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('45678901234', '009')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('56789012345', '010')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('12345678901', '011')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('23456789012', '012')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('34567890123', '013')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('45678901234', '014')
    INTO Usa (fk_Passageiro_CPF, fk_Viagem_Id) VALUES ('56789012345', '015')
SELECT * FROM DUAL;
