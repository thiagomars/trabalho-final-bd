/*Trigger que verifica se a data prevista de formção do usuário em questão ainda pode realizar empréstimo*/
DELIMITER //
CREATE TRIGGER verifica_emprestimo
BEFORE INSERT ON registros
FOR EACH ROW
BEGIN
	IF NEW.data > (
		SELECT GROUP_CONCAT(al.data_formacao_prevista)
		FROM alunos al, usuarios us 
		WHERE us.usuario = al.usuario
    ) + 15 THEN
			DELETE FROM registros WHERE cod_reserva = NEW.cod_reserva;
    END IF;
END;
//
DELIMITER ;
