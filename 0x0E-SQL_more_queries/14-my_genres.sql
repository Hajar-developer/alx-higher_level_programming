-- lists all shows in hbtn_0d_tvsows that have at least 1 genre linked
SELECT name
FROM tv_genres
LEFT JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
LEFT JOIN tv_shows ON tv_show_genres.show_id = tv_shows.id
WHERE tv_shows.title = 'Dexter'
GROUP BY name
ORDER BY name ASC;
