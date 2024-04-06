select "CaptureName", "NumARPRequestsSent" as "NumArp", "Duration", ("NumARPRequestsSent" / "Duration") as arp_for_time from "CaptureDimension"
order by arp_for_time DESC LIMIT 10