CREATE TABLE IF NOT EXISTS public."ProtocolDimension"
(
    "ProtocolKey" SERIAL PRIMARY KEY,
    "ProtocolType" character varying,
    "SrcPort" bigint,
    "DstPort" bigint,
    "SequenceNumber" bigint,
    "Info" character varying
);

INSERT INTO public."ProtocolDimension"("ProtocolType", "SrcPort", "DstPort", "SequenceNumber", "Info")
SELECT DISTINCT
    "Protocol" as "ProtocolType",
    "SrcPort" as "SrcPort",
    "DstPort" as "DstPort",
    "SequenceNumber" as "SequenceNumber",
    "Info" as "Info"
FROM
    public."PacketOutput"