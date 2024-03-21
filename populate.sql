CREATE TABLE IF NOT EXISTS public."Benign"
(
    "No." bigint,
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
    "date_time" timestamp
);

CREATE TABLE IF NOT EXISTS public."Mitm"
(
    "No." bigint,
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
    "date_time" timestamp
);

CREATE TABLE IF NOT EXISTS public."ModbusQuery2Flooding"
(
    "No." bigint,
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
    "date_time" timestamp
);

CREATE TABLE IF NOT EXISTS public."ModbusQueryFlooding"
(
    "No." bigint,
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
    "date_time" timestamp
);


CREATE TABLE IF NOT EXISTS public."PingFloodDDos"
(
    "No." bigint,
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
    "date_time" timestamp
);

CREATE TABLE IF NOT EXISTS public."TcpSYNFlood"
(
    "No." bigint,
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
    "date_time" timestamp
);



-- Uncomment below once data is imported 
-- ALTER TABLE public."Benign" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."Mitm" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."ModbusQuery2Flooding" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."ModbusQueryFlooding" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."PingFloodDDos" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- ALTER TABLE public."TcpSYNFlood" DROP COLUMN IF EXISTS "DstMACResolved.1";
-- /*
-- 'No.', 'Time', 'SrcIP', 'DstIP', 'Protocol', 'Length', 'Info', 'SrcMAC', 'SrcMACResolved', 'SrcOUIResolved', 'SrcPort', 'SequenceNumber', 'SrcOUI', 'DstMAC', 'DstMACResolved', 'DstOUI', 'DstOUResolved', 'DstPort', 'DstMACResolved.1', 'SYNFlag', 'ACKFlag', 'ProtocolType', 'EpochTime', 'RelativeTime', 'TimeDelta', 'CaptureName', 'AttackName', 'date_time'
-- */

CREATE TABLE IF NOT EXISTS public."PacketOutput" AS
SELECT "No.", "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "date_time"
FROM public."Benign"
UNION
SELECT "No.", "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "date_time"
FROM public."Mitm"
UNION
SELECT "No.", "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "date_time"
FROM public."ModbusQuery2Flooding"
UNION
SELECT "No.", "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "date_time"
FROM public."ModbusQueryFlooding"
UNION
SELECT "No.", "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "date_time"
FROM public."PingFloodDDos"
UNION
SELECT "No.", "Time", "SrcIP", "DstIP", "Protocol", "Length", "Info", "SrcMAC", "SrcMACResolved", "SrcOUIResolved", "SrcPort", "SequenceNumber", "SrcOUI", "DstMAC", "DstMACResolved", "DstOUI", "DstOUResolved", "DstPort", "SYNFlag", "ACKFlag", "ProtocolType", "EpochTime", "RelativeTime", "TimeDelta", "CaptureName", "AttackName", "date_time"
FROM public."TcpSYNFlood"
;

ALTER TABLE public."PacketOutput" DROP COLUMN IF EXISTS "No.";


