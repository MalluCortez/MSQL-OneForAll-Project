SELECT 
	s.song_name AS cancao,
    COUNT(rh.song_id) AS reproducoes
FROM 
	reproduction_history AS rh
		INNER JOIN
	songs AS s ON rh.song_id = s.song_id
    GROUP BY cancao
    ORDER BY reproducoes DESC, cancao ASC
    LIMIT 2;