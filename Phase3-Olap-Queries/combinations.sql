-- 1. Hourly traffic volume for each attack type in May 2018, Slicing on May, 2018, and drilling down to the hourly traffic volume
SELECT EXTRACT(DAY FROM "DateTime") AS Day,
       EXTRACT(HOUR FROM "DateTime") AS Hour,
       EXTRACT(MONTH FROM "DateTime") AS Month,
       EXTRACT(YEAR FROM "DateTime") AS Year,
       "CaptureName",
       SUM("Length") AS HourlyTrafficVolume
FROM public."PacketOutput"
WHERE "AttackName" IS NOT NULL
  AND EXTRACT(MONTH FROM "DateTime") = 5
  AND EXTRACT(YEAR FROM "DateTime") = 2018
GROUP BY Year, Month, Day, Hour, "CaptureName"
ORDER BY Day, Hour, "CaptureName";

-- 2. 
-- Comparing the number of tcp vs modbus tcp requests 
-- Dicing on capture modbusQueryFlooding\eth2dump-modbusQueryFlooding30m-1h_1 and date as May 19th, 2018 
-- + Drill to count by the minute 
SELECT 
    DATE_TRUNC('minute', "DateTime") AS Minute,
    COUNT(*) FILTER (WHERE "Protocol" = 'Modbus/TCP') AS ModbusTCP,
    COUNT(*) FILTER (WHERE "Protocol" = 'TCP') AS TCP  
FROM 
    public."PacketOutput"
WHERE 
    "CaptureKey" = 19 
    AND "DateTime"::date = '2018-05-29'
GROUP BY 
    Minute
ORDER BY 
    Minute;


--3 Dicing on Capture Name, Date, and Hour and Drilling down to the Minutes of a Ping Flood to determine Avg Relative Time 
SELECT 
    "RelativeTime",
    "AttackName",
    COUNT(*) AS PacketCount
FROM 
    public."PacketOutput"
WHERE 
    "AttackName" IS NOT NULL  -- Slicing to focus on attack traffic
GROUP BY 
    "RelativeTime", "AttackName"
ORDER BY 
    "RelativeTime";


-- 4 Rolling up -> Capture, slicing on source IP adderess = '172.27.224.251', aggregating on the average time differences 
SELECT 
    "CaptureName",
    AVG("TimeDelta") AS AvgTimeDelta -- Average delta time
FROM 
    public."PacketOutput"
WHERE 
    "SrcIP" = '172.27.224.251' -- Slicing on the source IP
GROUP BY 
    "CaptureName" -- Rolling up on the Capture Name
ORDER BY 
    "CaptureName";