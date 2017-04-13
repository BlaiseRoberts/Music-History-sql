select * from genre;

insert into artist values (null, 'James Blake', 2009);

insert into album
	select null,
		'James Blake',
		'01/01/2011',
		2457,
		'Polydor Ltd.',
		a.ArtistId,
		g.GenreId
	from Artist a, Genre g where a.ArtistName='James Blake' and g.Label = 'Electronic';

insert into song 
		select null,
			'Unluck',
			180,
			'01/01/2011',
			g.GenreId,
			a.ArtistId,
			al.AlbumId
		from Genre g, Artist a, Album al where g.Label='Electronic' and a.ArtistName='James Blake' and al.Title = 'James Blake';	
insert into song 
		select null,
			'The Wilhelm Scream',
			277,
			'01/01/2011',
			g.GenreId,
			a.ArtistId,
			al.AlbumId
		from Genre g, Artist a, Album al where g.Label='Electronic' and a.ArtistName='James Blake' and al.Title = 'James Blake';		
insert into song 
		select null,
			'Limit to Your Love',
			276,
			'01/01/2011',
			g.GenreId,
			a.ArtistId,
			al.AlbumId
		from Genre g, Artist a, Album al where g.Label='Electronic' and a.ArtistName='James Blake' and al.Title = 'James Blake';		
			
select s.title SongTitle,  al.TiTLe AlbumTitle, a.ArtistName
from SONG s
left join Album al on s.AlbumId = al.AlbumId
left join Artist a on al.ArtistId = a.ArtistId
where a.ArtistName = "James Blake";	
	
select al.Title, count(s.SongId) NumberOfSongs
from Song s, Album al
where s.AlbumId = al.AlbumId
group by al.AlbumId;

select a.ArtistName, count(s.SongId) NumberOfSongs
from Song s, Artist a
where s.ARTistId = a.artistID
group by a.ArtistId;

select g.label, count(s.SongId) NumberOfSongs
from Song s, genre g
where s.genreId = g.genreID
group by s.genreid;	

select al.Title, max(al.albumlength) LongestAlbum
from album al;

select s.Title SongTitle, al.Title AlbumTitle, max(s.songlength) LongestSong
from song s, album al
where s.albumid = al.albumid;