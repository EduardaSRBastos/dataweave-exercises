%dw 2.0
output application/json  
---
payload.orders map ((order) -> {
  orderId: order.orderId,
  customer: order.customer.name,
  items: order.items map (item) -> 
    item ++ ((payload.products filter ($.id contains item.productId))[0]),
  total: sum(order.items map (item) -> 
    item.quantity * ((payload.products filter ($.id contains item.productId)).price[0]))
})