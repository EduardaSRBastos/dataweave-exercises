<div align="center">

# DataWeave Exercises

</div>

<br>

<h2>
  DataWeave exercises from 
  <a href="https://medium.com/@rahulkumarofficial/dataweave-practice-made-easy-solved-questions-for-skill-building-7c2aa4c82376">
  Medium - Rahul Kumar</a>
</h2>


### Exercise #1 - First Letter of Each Word

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-1">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json
---
Initial: payload.fullName splitBy  " " map ($[0]) joinBy ""
```

</details>


### Exercise #2 - Name and Birth Year

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-2">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json
---
payload map ((item) -> {
  fullName: item.name,
  birthYear: (now().year - 1) - item.age
})
```

</details>


### Exercise #3 - Numbers to Strings

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-3">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Numbers to Strings": payload map $ as String
```

</details>


### Exercise #4 - Format Date

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-4">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Formatted Date": payload as Date as String {format: "dd-MMM-yyyy"}
```

</details>


### Exercise #5 - Reverse Order

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-5">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Reverse Order": (payload orderBy $)[-1 to 0]
```

</details>


### Exercise #6 - Flatten Nested Array

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-6">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json 

fun flatArray(array) =
  array map ((item) -> 
    if (item is Array)
      flatten(item)
    else
      item) 
  then flatten($)
---
// Same result: flatten(flatten(payload))
"Flatten Array": flatArray(payload)
```

</details>


### Exercise #7 - Combine Arrays by ID

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-7">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
payload.input1 map ((input1Item) -> {
  id: input1Item.id,
  name: input1Item.name,
  age: (payload.input2 filter ((input2Item) -> input2Item.id == input1Item.id)).age[0]
})
```

</details>


### Exercise #8 - Unique Items in Array

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-8">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Unique Years": payload distinctBy $
```

</details>


### Exercise #9 - Number of Days Between Two Dates

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-9">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
Days: daysBetween(payload.startDate, payload.endDate)
```

</details>


### Exercise #10 - Merge Array of Objects into One Object

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-10">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
{ (payload) }
```

</details>


### Exercise #11 - Total Amount for Each Month

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-11">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Total Each Month": payload groupBy ($.date.month as String {format: "00"}) mapObject ((value, key) -> 
  (key): {
    total: sum(value.amount)
  }
)
```

</details>


### Exercise #12 - Convert 12-Hour to 24-Hour Format

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-12">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"12H to 24H": payload map ((item, index) -> item as LocalTime {format: "hh:mm a"} as String {format: "HH:mm"})
```

</details>


### Exercise #13 - Total Duration

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-13">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Total Duration": sum(payload.duration map ( 
  do {
    var parts = $ splitBy ":"
    ---
    (parts[0] + parts[1] / 60) as Number
}))
```

</details>


### Exercise #14 - Unique Words

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-14">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
"Unique Words": payload filter $ != "," splitBy  " " distinctBy $
```

</details>


### Exercise #15 - Reorganize Structure

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-15">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
genres: (payload.books groupBy $.genre) pluck ((value, key) -> {
  name: key,
  authors: value.author
})
```

</details>


### Exercise #16 - Transform Object Fields

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-16">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
discountedProducts: payload.products map ((product) -> 
    (product - "price") ++ {
    discountedPrice: product.price - (product.price * payload.discounts[product.category])
    })
```

</details>


### Exercise #17 - Convert Temperature

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-17">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
temperaturesInFahrenheit: payload.temperaturesInCelsius map ($ * 9/5) + 32
```

</details>


### Exercise #18 - Add Fields to Objects

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-18">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
discountedProducts: payload.products map ($ ++ 
    discounted: $.price - $.price * payload.discountLookup[$.id as String] default $.price
)
```

</details>


### Exercise #19 - Total Amount

<a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-19">DataWeave Playground<a>

<details>
  <summary>Script</summary>

```dataweave
%dw 2.0
output application/json  
---
totalOrderAmount: sum(payload.orderAmounts)
```

</details>
