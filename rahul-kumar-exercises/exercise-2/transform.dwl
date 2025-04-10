%dw 2.0
output application/json  
---
payload map ((item) -> {
  fullName: item.name,
  birthYear: (now().year - 1) - item.age
})