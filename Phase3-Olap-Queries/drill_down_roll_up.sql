--Drill down (High-level, traffic volume on a monthly basis)
SELECT EXTRACT(MONTH FROM "PacketOutput"."DateTime") AS Month, 
       EXTRACT(YEAR FROM "PacketOutput"."DateTime") AS Year, 
       "PacketOutput"."AttackName", 
       SUM("PacketOutput"."Length") AS TotalTrafficVolume
FROM public."PacketOutput"
WHERE "PacketOutput"."AttackName" IS NOT NULL
GROUP BY Month, Year, "PacketOutput"."AttackName"
ORDER BY Year, Month, TotalTrafficVolume DESC;

--Drilled Downed traffic volume data from monthly to daily 
SELECT
    EXTRACT(DAY FROM "PacketOutput"."DateTime") AS Day,
    EXTRACT(MONTH FROM "PacketOutput"."DateTime") AS Month,
    EXTRACT(YEAR FROM "PacketOutput"."DateTime") AS Year,
    "PacketOutput"."AttackName",
    SUM("PacketOutput"."Length") AS TrafficVolume
FROM
    public."PacketOutput"
WHERE
    "PacketOutput"."AttackName" IS NOT NULL
GROUP BY
    Year, Month, Day, "PacketOutput"."AttackName"
ORDER BY
    Year, Month,Day;

-- Roll-up on number of ARP requests, half-open connections, and SYN requests 
SELECT
    p."AttackName",
    SUM(c."SYNCount") AS SYNCount
FROM
    public."PacketOutput" AS p
JOIN
    public."CaptureDimension" AS c
    ON p."CaptureKey" = c."CaptureKey"
GROUP BY
    p."AttackName"
ORDER BY 
	SYNCount;

SELECT
    p."AttackName",
    SUM(c."SYNCount") AS NumHalfOpenConnections
FROM
    public."PacketOutput" AS p
JOIN
    public."CaptureDimension" AS c
    ON p."CaptureKey" = c."CaptureKey"
GROUP BY
    p."AttackName"
ORDER BY 
	NumHalfOpenConnections;

SELECT
    p."AttackName",
    SUM(c."NumARPRequestsSent") AS TotalARPRequests
FROM
    public."PacketOutput" AS p
JOIN
    public."CaptureDimension" AS c
    ON p."CaptureKey" = c."CaptureKey"
GROUP BY
    p."AttackName"
ORDER BY 
	TotalARPRequests;

-- Rolling up daily traffic volume for each unique source MAC address (OUI) to monthly traffic volume
SELECT DATE("PacketOutput"."DateTime") AS DATE, 
	"PacketOutput"."SrcOUIResolved" AS SrcOUI, 
	SUM("PacketOutput"."Length") AS DailyTrafficVolume 
FROM public."PacketOutput"
GROUP BY Date, SrcOUI
ORDER BY Date, DailyTrafficVolume DESC;

SELECT EXTRACT (MONTH FROM "PacketOutput"."DateTime") AS Month, 
	EXTRACT (YEAR FROM "PacketOutput"."DateTime") AS Year,
	"PacketOutput"."SrcOUIResolved" AS SrcOUI,
	SUM("PacketOutput"."Length") AS MonthlyTrafficVolume 
FROM public."PacketOutput"
GROUP BY Month, Year, SrcOUI
ORDER BY Year, Month, MonthlyTrafficVolume DESC;


