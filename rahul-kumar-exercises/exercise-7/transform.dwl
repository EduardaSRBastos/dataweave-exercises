%dw 2.0
output application/json  
---
payload.input1 map ((input1Item) -> {
  id: input1Item.id,
  name: input1Item.name,
  age: (payload.input2 filter ((input2Item) -> input2Item.id == input1Item.id)).age[0]
})