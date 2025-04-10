%dw 2.0
output application/json  
---
(payload orderBy $)[-1 to 0]