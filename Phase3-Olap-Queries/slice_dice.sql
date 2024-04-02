-- Combined packet information joined with PK and FKs
SELECT * FROM public."PacketOutput"
ORDER BY "PacketKey" ASC LIMIT 100

-- Slicing on Resolved Source MAC address, selecting rows where SrcOUIResolved = ‘VMware, Inc.’ 
SELECT * FROM public."PacketOutput"
WHERE "SrcOUIResolved" = 'VMware, Inc.'
ORDER BY "PacketKey";

-- Dicing where the attack type is Man-in-the-Middle and the protocol is ‘ARP’
SELECT * FROM public."PacketOutput"
WHERE "AttackName" = 'mitm' AND "Protocol" = 'ARP'
ORDER BY "PacketKey";

-- Dicing where the attack type is TCP SYN Flooding and protocol is TCP 
SELECT * FROM public."PacketOutput"
WHERE "AttackName" = 'tcpSYNFloodDDoS' AND "Protocol" = 'TCP'
ORDER BY "PacketKey";

