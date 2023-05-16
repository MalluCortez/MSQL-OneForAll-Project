SELECT
	artist_name AS artista,
    album_name AS album
FROM
	albums As a 
		INNER JOIN
	artists As art ON art.artist_id = a.artist_id
    WHERE artist_name LIKE '%Elis Regina%'
    ORDER BY album;