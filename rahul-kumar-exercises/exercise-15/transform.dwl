%dw 2.0
output application/json  
---
genres: (payload.books groupBy $.genre) pluck ((value, key) -> {
  name: key,
  authors: value.author
})
