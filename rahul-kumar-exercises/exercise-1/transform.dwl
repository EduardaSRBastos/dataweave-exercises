%dw 2.0
output application/json
---
Initial: payload.fullName splitBy  " " map ($[0]) joinBy ""