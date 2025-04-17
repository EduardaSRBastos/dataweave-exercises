%dw 2.0
import * from dw::util::Tree
output application/json  
---
payload mapLeafValues ((value) -> 
  if (value is Number)
    value * 10
  else
    value)