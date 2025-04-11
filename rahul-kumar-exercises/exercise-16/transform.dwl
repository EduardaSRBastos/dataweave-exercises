%dw 2.0
output application/json  
---
discountedProducts: payload.products map ((product) -> 
    (product - "price") ++ {
    discountedPrice: product.price - (product.price * payload.discounts[product.category])
    })
