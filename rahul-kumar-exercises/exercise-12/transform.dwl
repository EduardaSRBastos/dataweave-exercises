%dw 2.0
output application/json  
---
"12H to 24H": payload map ((item, index) -> item as LocalTime {format: "hh:mm a"} as String {format: "HH:mm"})