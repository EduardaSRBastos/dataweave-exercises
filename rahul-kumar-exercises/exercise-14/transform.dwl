%dw 2.0
output application/json  
---
"Unique Words": payload filter $ != "," splitBy  " " distinctBy $