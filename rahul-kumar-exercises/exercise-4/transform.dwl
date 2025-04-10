%dw 2.0
output application/json  
---
payload as Date as String {format: "dd-MMM-yyyy"}