CREATE TABLE IF NOT EXISTS public."DateTimeDimension" (
    "Timestamp" timestamp,
    "EpochTime" double precision,
    "TimeDelta" double precision,
    "RelativeTime" double precision
);

INSERT INTO public."DateTimeDimension" ("Timestamp", "EpochTime", "TimeDelta", "RelativeTime")
SELECT
    "DateTime",
    "EpochTime",
    "TimeDelta",
    "RelativeTime"
FROM
    public."PacketOutput";
	
ALTER TABLE public."DateTimeDimension"
ADD COLUMN "DateTimeKey" SERIAL PRIMARY KEY;