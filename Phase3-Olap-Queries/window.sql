select *,
rank () over (partition by "AttackDuration"
			 order by "SYNCount")
from "CaptureDimension";