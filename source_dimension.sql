CREATE TABLE IF NOT EXISTS public."SourceDimension" (
    "SrcKey" SERIAL PRIMARY KEY,
    "SrcIP" character varying,
    "SrcMAC" character varying,
    "SrcMACResolved" character varying,
    "SrcOUI" character varying,
    "SrcOUIResolved" character varying,
    "SrcPort" double precision
);

INSERT INTO public."SourceDimension"(
    "SrcIP", 
    "SrcMAC", 
    "SrcMACResolved", 
    "SrcOUI", 
    "SrcOUIResolved", 
    "SrcPort"
)
SELECT DISTINCT
    "SrcIP", 
    "SrcMAC", 
    "SrcMACResolved", 
    "SrcOUI", 
    "SrcOUIResolved", 
    "SrcPort", 
FROM
    public."PacketOutput";
