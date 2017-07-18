
----Query all of the entries in the Genre table
--select Label, GenreId from Genre;

----Using the INSERT statement, add one of your favorite artists to the Artist table.
--insert into Artist(ArtistName, YearEstablished)
--values("The Rolling Stones", 1963);
--select * from Artist
--insert into Artist(ArtistName, YearEstablished)
--values("AC/DC",1973);

----Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--insert into Album
--Values(null, "Exile on Main St", 1971, 50, "Rolling Stones", 29, 2);

----Using the INSERT statement, add some songs that are on that album to the Song table.
--insert into Song(Title, SongLength, ReleaseDate, Genreid, Artistid, Albumid)
-- values('Shape of you', 62, '02/02/2017', 9, 8, 20);

----Write a SELECT query that provides the song titles, album title, and artist name for all of 
----the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, 
----and the WHERE keyword to filter the results to the album and artist you added. 
--select S.Title as 'Song Title', Al.Title as 'Album Title', A.ArtistName from Album Al, Artist A, Song S
--where Al.Albumid = S.Albumid
--and A.Artistid = Al.Artistid

----Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
----SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
----SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
--select S.Title as 'Song Title', Al.Title as 'Album Title', A.ArtistName From Song S 
--Left Join Album AL On S.Albumid = Al.Albumid
--left Join Artist A on Al.Artistid = A.Artistid;


----Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--select CAST(al.title AS varchar(max)) as 'Album Title', count(s.albumId) as "Number of Tracks"
--from Album al, Song s
--where al.AlbumId = s.AlbumId
--GROUP BY CAST(al.title AS varchar(max))

----Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--select Cast(A.ArtistName As varchar(max)) as 'ArtistName', count(s.albumId) as 'Number of Tracks'
--from Artist A, Song S
--where A.Artistid = S.Artistid
--GROUP BY CAST(A.ArtistName as varchar(max))

----Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--select Cast(G.Label As varchar(max)) as 'Genre', count(s.albumId) as 'Number of Tracks'
--from Genre G, Song S
--where G.Genreid = S.Genreid
--GROUP BY CAST(G.Label as varchar(max))


----Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--select * from Album 
--select Title, AlbumLength from Album
--where AlbumLength = (select max(AlbumLength) from Album)

----Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duratio
--select Title, SongLength from Song
--where SongLength = (select max(SongLength) from Song)


----Modify the previous query to also display the title of the album.
--select S.Title, S.SongLength, Al.Title from Song S, Album Al
--where S.SongLength = (select max(SongLength) from Song)
--and Al.AlbumId = S.AlbumId




GO
