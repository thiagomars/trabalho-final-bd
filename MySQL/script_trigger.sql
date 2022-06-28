/*Trigger que verifica se a data prevista de formção do usuário em questão ainda pode realizar empréstimo*/
DELIMITER //
CREATE TRIGGER verifica_emprestimo
BEFORE INSERT ON registros
FOR EACH ROW
BEGIN
	IF NEW.data > (
		SELECT al.data_formacao_prevista 
		FROM alunos al, usuarios us
		WHERE us.usuario = al.usuario
    ) + 15 THEN
		SET NEW.data = 10101010; /*Ainda precisa ser ajeitada*/
    END IF;
END;
//
DELIMITER ;
