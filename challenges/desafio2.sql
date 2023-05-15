SELECT 
  (SELECT COUNT(album_id) FROM SpotifyClone.albums) as albuns,
  (SELECT COUNT(artist_id) FROM SpotifyClone.artists) as artistas,
	COUNT(song_id) AS cancoes
FROM SpotifyClone.songs;