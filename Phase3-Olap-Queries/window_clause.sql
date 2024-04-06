select *,
rank () over W
from "CaptureDimension"
window W as (partition by "AttackDuration"
			order by "SYNCount");