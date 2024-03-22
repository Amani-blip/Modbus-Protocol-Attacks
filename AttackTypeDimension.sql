CREATE TABLE IF NOT EXISTS public."AttackTypeDimension" (
    "AttackTypeKey" SERIAL PRIMARY KEY,
    "AttackName" character varying,
    "AttackSubType" character varying,
    "Info" text,
);

INSERT INTO public."AttackTypeDimension" ("AttackName", "AttackSubType", "Info")
VALUES 
('Benign', NULL, 'Normal traffic with no attack'),
('Mitm', 'Man In The Middle', 'An attack where the attacker secretly intercepts and possibly alters the communication between two parties who believe they are directly communicating with each other'),
('ModbusQuery2Flooding', 'Modbus', 'A type of DoS attack that sends a flood of Modbus query messages to a target device'),
('ModbusQueryFlooding', 'Modbus', 'Similar to ModbusQuery2Flooding but may vary in vector or volume'),
('PingFloodDDos', 'DDoS', 'An attack that overwhelms the target with ICMP Echo Request (ping) packets'),
('TCPSynFlood', 'DDoS', 'A type of DoS attack that sends a succession of SYN requests to a target’s system in an attempt to consume enough server resources to make the system unresponsive to legitimate traffic');
