SELECT
	u.user_name AS pessoa_usuaria,
    COUNT(*) AS musicas_ouvidas,
    ROUND((SUM(s.song_duration) / 60), 2) AS total_minutos 
FROM
    users AS u
    INNER JOIN reproduction_history AS rh ON u.user_id = rh.user_id
    INNER JOIN songs AS s ON rh.song_id = s.song_id
GROUP BY
    pessoa_usuaria
ORDER BY
    pessoa_usuaria;
