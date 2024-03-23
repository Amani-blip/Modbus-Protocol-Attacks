CREATE TABLE IF NOT EXISTS public."Benign"
(
    "Time" double precision,
    "SrcIP" character varying,
    "DstIP" character varying,
    "Protocol" character varying,
    "Length" bigint,
    "Info" text,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision,
    "SequenceNumber" double precision,
    "SrcOUI" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUResolved" character varying,
    "DstPort" double precision,
    "DstMACResolved.1" character varying,
    "SYNFlag" character varying,
    "ACKFlag" character varying,
    "ProtocolType" character varying,
    "EpochTime" double precision,
    "RelativeTime" double precision,
    "TimeDelta" double precision,
    "CaptureName" character varying,
    "AttackName" character varying,
    "DateTime" timestamp with time zone
);

CREATE TABLE IF NOT EXISTS public."Mitm"
( 
    "Time" double precision,
    "SrcIP" character varying,
    "DstIP" character varying,
    "Protocol" character varying,
    "Length" bigint,
    "Info" text,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision,
    "SequenceNumber" double precision,
    "SrcOUI" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUResolved" character varying,
    "DstPort" double precision,
    "DstMACResolved.1" character varying,
    "SYNFlag" character varying,
    "ACKFlag" character varying,
    "ProtocolType" character varying,
    "EpochTime" double precision,
    "RelativeTime" double precision,
    "TimeDelta" double precision,
    "CaptureName" character varying,
    "AttackName" character varying,
	"DateTime" timestamp with time zone
);

CREATE TABLE IF NOT EXISTS public."ModbusQuery2Flooding"
(
    "Time" double precision,
    "SrcIP" character varying,
    "DstIP" character varying,
    "Protocol" character varying,
    "Length" bigint,
    "Info" text,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision,
    "SequenceNumber" double precision,
    "SrcOUI" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUResolved" character varying,
    "DstPort" double precision,
    "DstMACResolved.1" character varying,
    "SYNFlag" character varying,
    "ACKFlag" character varying,
    "ProtocolType" character varying,
    "EpochTime" double precision,
    "RelativeTime" double precision,
    "TimeDelta" double precision,
    "CaptureName" character varying,
    "AttackName" character varying,
    "DateTime" timestamp with time zone
);

CREATE TABLE IF NOT EXISTS public."ModbusQueryFlooding"
(
    "Time" double precision,
    "SrcIP" character varying,
    "DstIP" character varying,
    "Protocol" character varying,
    "Length" bigint,
    "Info" text,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision,
    "SequenceNumber" double precision,
    "SrcOUI" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUResolved" character varying,
    "DstPort" double precision,
    "DstMACResolved.1" character varying,
    "SYNFlag" character varying,
    "ACKFlag" character varying,
    "ProtocolType" character varying,
    "EpochTime" double precision,
    "RelativeTime" double precision,
    "TimeDelta" double precision,
    "CaptureName" character varying,
    "AttackName" character varying,
    "DateTime" timestamp with time zone
);


CREATE TABLE IF NOT EXISTS public."PingFloodDDos"
(
    "Time" double precision,
    "SrcIP" character varying,
    "DstIP" character varying,
    "Protocol" character varying,
    "Length" bigint,
    "Info" text,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision,
    "SequenceNumber" double precision,
    "SrcOUI" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUResolved" character varying,
    "DstPort" double precision,
    "DstMACResolved.1" character varying,
    "SYNFlag" character varying,
    "ACKFlag" character varying,
    "ProtocolType" character varying,
    "EpochTime" double precision,
    "RelativeTime" double precision,
    "TimeDelta" double precision,
    "CaptureName" character varying,
    "AttackName" character varying,
    "DateTime" timestamp with time zone
);

CREATE TABLE IF NOT EXISTS public."TcpSYNFlood"
(
    "Time" double precision,
    "SrcIP" character varying,
    "DstIP" character varying,
    "Protocol" character varying,
    "Length" bigint,
    "Info" text,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision,
    "SequenceNumber" double precision,
    "SrcOUI" character varying,
    "DstMAC" character varying,
    "DstMACResolved" character varying,
    "DstOUI" character varying,
    "DstOUResolved" character varying,
    "DstPort" double precision,
    "DstMACResolved.1" character varying,
    "SYNFlag" character varying,
    "ACKFlag" character varying,
    "ProtocolType" character varying,
    "EpochTime" double precision,
    "RelativeTime" double precision,
    "TimeDelta" double precision,
    "CaptureName" character varying,
    "AttackName" character varying,
    "DateTime" timestamp with time zone
);



-- Uncomment below once data is imported 

-- ALTER TABLE public."Benign" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."Mitm" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."ModbusQuery2Flooding" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."ModbusQueryFlooding" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."PingFloodDDos" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."TcpSYNFlood" DROP COLUMN IF EXISTS "DstMACResolved.1";


-- CREATE TABLE IF NOT EXISTS public."PacketOutput" AS
-- SELECT "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "DateTime"
-- FROM public."Benign"
-- UNION
-- SELECT "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "DateTime"
-- FROM public."Mitm"
-- UNION
-- SELECT "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "DateTime"
-- FROM public."ModbusQuery2Flooding"
-- UNION
-- SELECT "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "DateTime"
-- FROM public."ModbusQueryFlooding"
-- UNION
-- SELECT "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "DateTime"
-- FROM public."PingFloodDDos"
-- UNION
-- SELECT "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "DateTime"
-- FROM public."TcpSYNFlood"
-- ;


