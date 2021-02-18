-- EXERCICI 1
SELECT COUNT(flightID) FROM usairlineflights.flights;

-- EXERCICI 2
SELECT Origin, AVG(ArrDelay), AVG(DepDelay)
       FROM usairlineflights.flights
       GROUP BY Origin;

-- EXERCICI 3
SELECT Origin, colYear, colMonth, AVG(ArrDelay)
       FROM usairlineflights.flights
       GROUP BY Origin, colYear, colMonth
       ORDER BY Origin;

-- EXERCICI 4
SELECT City, colYear, colMonth, AVG(ArrDelay)
FROM flights AS flg
INNER JOIN  usairports AS usap
ON flg.Origin = usap.IATA
GROUP BY Origin, colYear, colMonth
ORDER BY City, colYear, colMonth;

-- EXERCICI 5
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled)
FROM usairlineflights.flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY SUM(Cancelled) DESC;

-- EXERCICI 6
SELECT TailNum, SUM(Distance)
FROM usairlineflights.flights
WHERE TailNum IS NOT NULL
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10;

--EXERCICI 7
SELECT UniqueCarrier, AVG(ArrDelay)
FROM usairlineflights.flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;
