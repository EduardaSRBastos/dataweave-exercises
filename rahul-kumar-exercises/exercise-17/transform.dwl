%dw 2.0
output application/json  
---
temperaturesInFahrenheit: payload.temperaturesInCelsius map ($ * 9/5) + 32
