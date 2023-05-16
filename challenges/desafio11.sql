SELECT
	a.album_name AS album,
    COUNT(fav.song_id) AS favoritadas
FROM 
	favorites AS fav
		INNER JOIN
	songs AS s ON fav.song_id = s.song_id
		INNER JOIN
	albums AS a ON s.album_id = a.album_id
    GROUP BY album
    ORDER BY favoritadas DESC, album
    LIMIT 3;