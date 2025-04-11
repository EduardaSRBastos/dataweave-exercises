%dw 2.0
output application/json  
---
totalOrderAmount: sum(payload.orderAmounts)