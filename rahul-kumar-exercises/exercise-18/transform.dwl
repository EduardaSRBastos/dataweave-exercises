%dw 2.0
output application/json  
---
discountedProducts: payload.products map ($ ++ 
    discounted: $.price - $.price * payload.discountLookup[$.id as String] default $.price
)
