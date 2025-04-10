%dw 2.0
output application/json  
---
"Reverse Order": (payload orderBy $)[-1 to 0]