ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "CaptureKey" integer;

ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "DateTimeKey" integer;

ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "SrcKey" integer;

ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "SrcKey" integer;

ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "DstKey" integer;

ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "ProtocolKey" integer;

ALTER TABLE public."PacketOutput"
ADD IF NOT EXISTS "AttackTypeKey" integer;

-- Number of rows in PacketOutput is 6889976

-- UNCOMMENT AND COMMENT EACH ONE ACCORDINGLY ONE AT A TIME
UPDATE public."PacketOutput"
SET "CaptureKey" = "CaptureDimension"."CaptureKey"
FROM public."CaptureDimension"
WHERE public."PacketOutput"."CaptureName" = public."CaptureDimension"."CaptureName";

ALTER TABLE public."PacketOutput"
ADD CONSTRAINT fk_packets_captures
FOREIGN KEY ("CaptureKey")
REFERENCES public."CaptureDimension"("CaptureKey");


-- UPDATE public."PacketOutput" Date Time Key
UPDATE public."PacketOutput" po
SET "DateTimeKey" = dt."DateTimeKey"
FROM public."DateTimeDimension" dt
WHERE po."DateTime" = dt."Timestamp";


ALTER TABLE public."PacketOutput"
ADD CONSTRAINT fk_packetoutput_datetime
FOREIGN KEY ("DateTimeKey")
REFERENCES public."DateTimeDimension"("DateTimeKey");


-- UPDATE public."PacketOutput" Source Key
UPDATE public."PacketOutput"
SET "SrcKey" = sd."SrcKey"
FROM public."SourceDimension" sd
WHERE public."PacketOutput"."SrcIP" = sd."SrcIP"
AND CAST(public."PacketOutput"."SrcPort" AS BIGINT) = sd."SrcPort";

ALTER TABLE public."PacketOutput"
ADD CONSTRAINT fk_packetoutput_source
FOREIGN KEY ("SrcKey")
REFERENCES public."SourceDimension"("SrcKey");


-- UPDATE public."PacketOutput" Destination Key
UPDATE public."PacketOutput"
SET "DstKey" = dd."DstKey"
FROM public."DestinationDimension" dd
WHERE public."PacketOutput"."DstIP" = dd."DstIP"
AND CAST(public."PacketOutput"."DstPort" AS BIGINT) = dd."DstPort"; 


ALTER TABLE public."PacketOutput"
ADD CONSTRAINT fk_packetoutput_destination
FOREIGN KEY ("DstKey")
REFERENCES public."DestinationDimension"("DstKey");


-- UPDATE public."PacketOutput" Protocol Key
UPDATE public."PacketOutput"
SET "ProtocolKey" = pd."ProtocolKey"
FROM public."ProtocolDimension" pd
WHERE public."PacketOutput"."Protocol" = pd."ProtocolType"
AND public."PacketOutput"."SrcPort" = pd."SrcPort"
AND public."PacketOutput"."DstPort" = pd."DstPort";  


ALTER TABLE public."PacketOutput"
ADD CONSTRAINT fk_packetoutput_protocol
FOREIGN KEY ("ProtocolKey")
REFERENCES public."ProtocolDimension"("ProtocolKey");


-- UPDATE public."PacketOutput" Attack Type Key
UPDATE public."PacketOutput"
SET "AttackTypeKey" = atd."AttackTypeKey"
FROM public."AttackTypeDimension" atd
WHERE public."PacketOutput"."AttackName" = atd."AttackName";

ALTER TABLE public."PacketOutput"
ADD CONSTRAINT fk_packetoutput_attacktype
FOREIGN KEY ("AttackTypeKey")
REFERENCES public."AttackTypeDimension"("AttackTypeKey");




UPDATE public."PacketOutput"
SET "AttackTypeKey" = CASE
    WHEN "AttackName" = 'Benign' THEN 1
    WHEN "AttackName" = 'Mitm' THEN 2
    WHEN "AttackName" = 'ModbusQuery2Flooding' THEN 3
    WHEN "AttackName" = 'ModbusQueryFlooding' THEN 4
    WHEN "AttackName" = 'PingFloodDDos' THEN 5
    WHEN "AttackName" = 'TCPSynFlood' THEN 6
END;


