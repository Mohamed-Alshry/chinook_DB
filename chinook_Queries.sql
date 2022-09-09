/*Top Ten Artist have large number of Albums*/

select count(AlbumId) as Num_Albums , Ar.Name  as Atrist_Name
from Album as Al, Artist as Ar
where Ar.ArtistId = Al.ArtistId
GROUP BY Ar.Name
ORDER BY 1 DESC
LIMIT 10

/********************************/

/* Top Ten music Genre */

select count(TrackId) as Number_Tracks , G.Name as Genre_Name
from Genre G, Track T
where G.GenreId = T.GenreId
GROUP BY G.Name
ORDER BY 1 DESC
LIMIT 10

/********************************************************/
/*Arrangement of Genre of Spain*/

SELECT Count(G.GenreId) as Number_Genre, G.Name as Genre_Name
from Genre G, InvoiceLine IL, Track T, Invoice I
where G.GenreId = T. GenreId and T.TrackId = IL.TrackId and I.InvoiceId = IL.InvoiceId and BillingCountry = "Spain"
GROUP BY 2
ORDER BY 1 DESC

/*******************************************************************/
/* Total of sales for each employee */

SELECT sum(I.total), E.EmployeeId, E.FirstName, E.LastName
FROM Invoice I, Employee E, Customer C
WHERE I.CustomerId = C.CustomerId and C.SupportRepId = E.EmployeeId
GROUP BY 2
ORDER bY 1 DESC