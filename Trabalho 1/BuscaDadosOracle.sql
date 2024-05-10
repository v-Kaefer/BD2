/* a) (1,0) Listar os Códigos dos Carros que realizaram corridas que partiram do bairro 'Floresta'; 
*/
SELECT DISTINCT Carro.Codigo
FROM Carro
JOIN Faz ON Carro.Codigo = Faz.fk_Carro_Codigo
JOIN Viagem ON Faz.fk_Viagem_Id = Viagem.Id
JOIN Urbana ON Viagem.Id = Urbana.fk_Viagem_Id
WHERE Urbana.Bairro_Partida = 'Floresta';

/* b) (1,0) Listar o nome dos passageiros e o código dos carros que fizeram corridas com esses passageiros,
 mas somente para as corridas que tem o mesmo bairro de partida do cadastrado para o passageiro; 
*/
SELECT DISTINCT Passageiro.Nome, Carro.Codigo
FROM Passageiro
JOIN Usa ON Passageiro.CPF = Usa.fk_Passageiro_CPF
JOIN Viagem ON Usa.fk_Viagem_Id = Viagem.Id
JOIN Urbana ON Viagem.Id = Urbana.fk_Viagem_Id
JOIN Faz ON Viagem.Id = Faz.fk_Viagem_Id
JOIN Carro ON Faz.fk_Carro_Codigo = Carro.Codigo
WHERE Passageiro.Bairro = Urbana.Bairro_Partida;

/* c) (1,0) Listar o CPF e nome dos passageiros e a quantidade total de quilômetros percorridos por cada um deles em suas corridas de taxi.
*/
SELECT Passageiro.CPF, Passageiro.Nome, SUM(Viagem.Kms) AS "Total_Kms"
FROM Passageiro
JOIN Usa ON Passageiro.CPF = Usa.fk_Passageiro_CPF
JOIN Viagem ON Usa.fk_Viagem_Id = Viagem.Id
GROUP BY Passageiro.CPF, Passageiro.Nome;
