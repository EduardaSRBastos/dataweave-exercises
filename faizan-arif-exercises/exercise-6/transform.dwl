%dw 2.0
output application/json  
---
payload groupBy $.region pluck {
  region: $$,
  totalsales: sum($.sales map sum($.amount)),
  products: $.product map ((product) -> do {
      var filteredProduct = $ filter ($.product == product)
      ---
        (product): {
          totalsales: (filteredProduct.sales map sum($.amount))[0],
          averagesales: (filteredProduct.sales map round(avg($.amount)))[0]
        }
    }) reduce ((item, acc = {}) -> acc ++ item)
}