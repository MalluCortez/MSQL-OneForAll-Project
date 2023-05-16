SELECT
	u.user_name AS pessoa_usuaria,
    COUNT(replay.user_id) AS musicas_ouvidas,
    ROUND((SUM(s.song_duration) / 60), 2) AS total_minutos 
FROM 
	reproduction_history As replay
		INNER JOIN
	users AS u ON replay.user_id = u.user_id
		INNER JOIN 
	songs AS s ON replay.song_id = s.song_id
    GROUP BY pessoa_usuaria
    ORDER BY pessoa_usuaria;