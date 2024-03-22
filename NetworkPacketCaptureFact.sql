CREATE TABLE IF NOT EXISTS public."NetworkPacketCaptureFact" (
    "PacketCaptureKey" SERIAL PRIMARY KEY, 
    "CaptureKey" INT,
    "DateTimeKey" INT,
    "SourceKey" INT,
    "DestinationKey" INT,
    "ProtocolKey" INT,
    "AttackTypeKey" INT,
    "FrameLength" INT,
    FOREIGN KEY ("CaptureKey") REFERENCES public."CaptureDimension"("CaptureKey"),
    FOREIGN KEY ("DateTimeKey") REFERENCES public."DateTimeDimension"("DateTimeKey"),
    FOREIGN KEY ("SourceKey") REFERENCES public."SourceDimension"("SrcKey"),
    FOREIGN KEY ("DestinationKey") REFERENCES public."DestinationDimension"("DstKey"),
    FOREIGN KEY ("ProtocolKey") REFERENCES public."ProtocolDimension"("ProtocolKey"),
    FOREIGN KEY ("AttackTypeKey") REFERENCES public."AttackTypeDimension"("AttackTypeKey")
);
INSERT INTO public."NetworkPacketCaptureFact" (
    "CaptureKey",
    "DateTimeKey",
    "SourceKey",
    "DestinationKey",
    "ProtocolKey",
    "AttackTypeKey",
    "FrameLength"
)
SELECT
    cd."CaptureKey",
    dt."DateTimeKey",
    sd."SrcKey",
    dd."DstKey",
    pd."ProtocolKey",
    ad."AttackTypeKey",
    po."Length"
FROM
    public."PacketOutput" po
LEFT JOIN public."CaptureDimension" cd ON po."CaptureName" = cd."CaptureName"
LEFT JOIN public."DateTimeDimension" dt ON po."date_time" = dt."Timestamp"
LEFT JOIN public."SourceDimension" sd ON po."SrcIP" = sd."SrcIP" AND CAST(po."SrcPort" AS BIGINT) = sd."SrcPort"
LEFT JOIN public."DestinationDimension" dd ON po."DstIP" = dd."DstIP" AND CAST(po."DstPort" AS BIGINT) = dd."DstPort"
LEFT JOIN public."ProtocolDimension" pd ON po."Protocol" = pd."ProtocolType"
LEFT JOIN public."AttackTypeDimension" ad ON po."AttackName" = ad."AttackName"
ON CONFLICT DO NOTHING; 
