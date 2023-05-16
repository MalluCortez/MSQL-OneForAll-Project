SELECT
	art.artist_name AS artista,
    a.album_name AS album,
	COUNT(follow.artist_id) AS pessoas_seguidoras
FROM
	albums AS a
		INNER JOIN 
	artists AS art ON a.artist_id = art.artist_id
		INNER JOIN
	followers AS follow ON follow.artist_id = art.artist_id
    GROUP BY artista, album
    ORDER BY pessoas_seguidoras DESC, artista, album;