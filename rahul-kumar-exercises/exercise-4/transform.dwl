%dw 2.0
output application/json  
---
"Formatted Date": payload as Date as String {format: "dd-MMM-yyyy"}