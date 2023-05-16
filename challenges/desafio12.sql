SELECT
	art.artist_name AS artista,
	CASE
		WHEN COUNT(fav.song_id) >= 5 THEN 'A'
        WHEN COUNT(fav.song_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(fav.song_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
 	END AS ranking   
FROM
	favorites AS fav
		RIGHT JOIN
	songs AS s ON fav.song_id = s.song_id
		INNER JOIN 
	albums AS al ON s.album_id = al.album_id
		INNER JOIN
	artists AS art ON art.artist_id = al.artist_id
    GROUP BY artista
    ORDER BY COUNT(fav.song_id) DESC, artista;