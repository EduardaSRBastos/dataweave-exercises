%dw 2.0
output application/json  
---
"Total Each Month": payload groupBy ($.date.month as String {format: "00"}) mapObject ((value, key) -> 
  (key): {
    total: sum(value.amount)
  }
)