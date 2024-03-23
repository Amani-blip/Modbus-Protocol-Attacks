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
-- UPDATE public."PacketOutput"
-- SET "CaptureKey" = "CaptureDimension"."CaptureKey"
-- FROM public."CaptureDimension"
-- WHERE public."PacketOutput"."CaptureName" = public."CaptureDimension"."CaptureName";

-- ALTER TABLE public."PacketOutput"
-- ADD CONSTRAINT fk_packets_captures
-- FOREIGN KEY ("CaptureKey")
-- REFERENCES public."CaptureDimension"("CaptureKey");