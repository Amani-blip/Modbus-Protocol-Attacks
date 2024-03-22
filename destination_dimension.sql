CREATE TABLE IF NOT EXISTS public."DestinationDimension"
(
    "DstKey" SERIAL PRIMARY KEY,
    "DstIP" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUIResolved" character varying,
    "DstPort" bigint
);

INSERT INTO public."DestinationDimension"("DstIP","DstMAC", "DstMACResolved", "DstOUI", "DstOUIResolved", "DstPort")
SELECT DISTINCT
    "DstIP" as "DstIP",
    "DstMAC" as "DstMAC",
    "DstMACResolved" as "DstMACResolved",
    "DstOUI" as "DstOUI",
    "DstOUResolved" as "DstOUIResolved",
    "DstPort" as "DstPort"
FROM
    public."PacketOutput"