%dw 2.0
output application/json 

fun flatArray(array) =
  array map ((item) -> 
    if (item is Array)
      flatten(item)
    else
      item) 
  then flatten($)
---
// Same result: flatten(flatten(payload))
flatArray(payload)