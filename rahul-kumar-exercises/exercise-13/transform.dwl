%dw 2.0
output application/json  
---
"Total Duration": sum(payload.duration map ( 
  do {
    var parts = $ splitBy ":"
    ---
    (parts[0] + parts[1] / 60) as Number
}))