SELECT
	COUNT(rh.user_id) AS musicas_no_historico
FROM
	reproduction_history AS rh
		INNER JOIN
	users AS u ON rh.user_id = u.user_id
    WHERE u.user_name LIKE '%Barbara Liskov%';