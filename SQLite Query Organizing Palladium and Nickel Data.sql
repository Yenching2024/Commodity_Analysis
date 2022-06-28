-- USING SQL, pulling the relevent data, and combining the tables based on JOIN function into a usable database
-- For ease right now, we are using SQLite, but could also have used another database system like PostgreSQL as well. 

SELECT COUNT(*) FROM commodity20002022
WHERE Symbol = 'Nickel';

SELECT COUNT(*) FROM commodity20002022
WHERE Symbol = 'Palladium';

-- Palladium has 3621 days of data, whereas Nickel only has 3381. So we have many dates where there is only Palladium data
-- Now to export each Nickel and Palladium into their own tables, via csv

SELECT * FROM commodity20002022
WHERE Symbol = 'Nickel';

SELECT * FROM commodity20002022
WHERE Symbol = 'Palladium';

--Export each of these two queries, to have a list of Nickel and Palladium info based on date


-- We use INNER JOIN to only include the dates where we have both Palladium and Nickel info 

SELECT *
FROM NickelPricing
	INNER JOIN PalladiumPricing
    using (Date);


/*We might run into some problems seeing as the headings are named the same things, so we probably need to rename
based on metal, eg. Nickel_High. We can do this whne we load it into pandas for analysis, rather than doing it in SQL now.*/











