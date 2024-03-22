CREATE TABLE IF NOT EXISTS public."CaptureDimension"(
	"CaptureName" character varying, 
	"StartTime" timestamp, 
	"EndTime" timestamp, 
	"Duration" double precision, 
	"NumHalfOpenConnections" bigint,
	"SYNCount" bigint,
	"NumARPRequestsSent" bigint
);

INSERT INTO public."CaptureDimension"("CaptureName", "StartTime", "EndTime", "Duration", "NumHalfOpenConnections", "SYNCount", "NumARPRequestsSent")
SELECT
    "CaptureName",
    TO_TIMESTAMP(MIN("EpochTime")) as "StartTime",
    TO_TIMESTAMP(MAX("EpochTime")) as "EndTime",
    MAX("EpochTime") - MIN("EpochTime") as "Duration",
    COUNT(DISTINCT CASE WHEN LOWER("SYNFlag") = 'set' AND LOWER("ACKFlag") = 'not set' THEN ("SrcIP", "DstIP", "SrcPort", "DstPort") END) as "NumHalfOpenConnections",
    COUNT(CASE WHEN "SYNFlag" = 'set' THEN 1 END) as "SYNCount",
    COUNT(CASE WHEN "Protocol" = 'arp' AND ("DstMAC" = 'broadcast' OR "DstOUI" = 'ff:ff:ff:ff') THEN 1 END) as "NumARPRequestsSent"
FROM
    public."PacketOutput"
GROUP BY
    "CaptureName"
LIMIT 100;