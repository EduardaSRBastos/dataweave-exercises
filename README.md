<div align="center">

# DataWeave Exercises

</div>

<br>

<details>
  
  <summary>
    <h2>Medium - 
      <a href="https://medium.com/@rahulkumarofficial/dataweave-practice-made-easy-solved-questions-for-skill-building-7c2aa4c82376">
      Rahul Kumar</a>
    </h2>
  </summary>
  
  ---
  
  ## Table of Contents
  
  <table>
    <tbody align="center">
      <tr>
        <td><a href="#exercise-1---first-letter-of-each-word"><b>Exercise #1 - First Letter of Each Word</b></a></td>
        <td><a href="#exercise-2---name-and-birth-year"><b>Exercise #2 - Name and Birth Year</b></a></td>
        <td><a href="#exercise-3---numbers-to-strings"><b>Exercise #3 - Numbers to Strings</b></a></td>
        <td><a href="#exercise-4---format-date"><b>Exercise #4 - Format Date</b></a></td>
        <td><a href="#exercise-5---reverse-order"><b>Exercise #5 - Reverse Order</b></a></td>
      </tr>
      <tr>
        <td><a href="#exercise-6---flatten-nested-array"><b>Exercise #6 - Flatten Nested Array</b></a></td>
        <td><a href="#exercise-7---combine-arrays-by-id"><b>Exercise #7 - Combine Arrays by ID</b></a></td>
        <td><a href="#exercise-8---unique-items-in-array"><b>Exercise #8 - Unique Items in Array</b></a></td>
        <td><a href="#exercise-9---number-of-days-between-two-dates"><b>Exercise #9 - Number of Days Between Two Dates</b></a></td>
        <td><a href="#exercise-10---merge-array-of-objects-into-one-object"><b>Exercise #10 - Merge Array of Objects into One Object</b></a></td>
      </tr>
      <tr>
        <td><a href="#exercise-11---total-amount-for-each-month"><b>Exercise #11 - Total Amount for Each Month</b></a></td>
        <td><a href="#exercise-12---convert-12-hour-to-24-hour-format"><b>Exercise #12 - Convert 12-Hour to 24-Hour Format</b></a></td>
        <td><a href="#exercise-13---total-duration"><b>Exercise #13 - Total Duration</b></a></td>
        <td><a href="#exercise-14---unique-words"><b>Exercise #14 - Unique Words</b></a></td>
        <td><a href="#exercise-15---reorganize-structure"><b>Exercise #15 - Reorganize Structure</b></a></td>
      </tr>
      <tr>
        <td><a href="#exercise-16---transform-object-fields"><b>Exercise #16 - Transform Object Fields</b></a></td>
        <td><a href="#exercise-17---convert-temperature"><b>Exercise #17 - Convert Temperature</b></a></td>
        <td><a href="#exercise-18---add-fields-to-objects"><b>Exercise #18 - Add Fields to Objects</b></a></td>
        <td><a href="#exercise-19---total-amount"><b>Exercise #19 - Total Amount</b></a></td>
      </tr>
    </tbody>
  </table>
  
  ---
  
  ### Exercise #1 - First Letter of Each Word
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=rahul-kumar-exercises%2Fexercise-1" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
  {
    "fullName": "Nagaraju Kshathriya Raghunathrao"
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  [
    {"name": "John", "age": 25},
    {"name": "Alice", "age": 30},
    {"name": "Bob", "age": 22}
  ]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  [1, 2, 3, 4, 5]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  "2022-01-01"
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  ["apple", "banana", "orange", "grape"]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  [1, [2, [3, 4], 5], 6]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "input1": [
      { "id": 1, "name": "Alice" },
      { "id": 2, "name": "Bob" }
    ],
    "input2": [
      { "id": 1, "age": 25 },
      { "id": 2, "age": 30 }
    ]
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  ["2021", "1994", "2034", "2032", "2021", "2022", "1995", "2032"]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "startDate": "2022-01-01",
    "endDate": "2022-01-10"
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  [
    {"name": "Alice"},
    {"age": 25},
    {"city": "New York"}
  ]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  [
    {"date": "2022-01-05", "amount": 100},
    {"date": "2022-01-15", "amount": 150},
    {"date": "2022-02-10", "amount": 200},
    {"date": "2022-02-25", "amount": 120}
  ]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  ["02:30 PM", "08:45 AM", "05:15 PM"]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  [
    {"title": "Clip1", "duration": "00:30"},
    {"title": "Clip2", "duration": "01:15"},
    {"title": "Clip3", "duration": "00:45"}
  ]
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  "Even if they are djinns, I will get djinns that can outdjinn them."
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "books": [
      {
        "title": "The Alchemist",
        "genre": "Fiction",
        "author": {
          "name": "Paulo Coelho",
          "birthYear": 1947
        }
      },
      {
        "title": "Sapiens",
        "genre": "Non-Fiction",
        "author": {
          "name": "Yuval Noah Harari",
          "birthYear": 1976
        }
      },
      {
        "title": "To Kill a Mockingbird",
        "genre": "Fiction",
        "author": {
          "name": "Harper Lee",
          "birthYear": 1926
        }
      },
      {
        "title": "The Lean Startup",
        "genre": "Business",
        "author": {
          "name": "Eric Ries",
          "birthYear": 1978
        }
      },
      {
        "title": "The Great Gatsby",
        "genre": "Fiction",
        "author": {
          "name": "F. Scott Fitzgerald",
          "birthYear": 1896
        }
      }
    ]
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "products": [
      {"id": 1, "name": "Laptop", "category": "Electronics", "price": 1200},
      {"id": 2, "name": "Shirt", "category": "Apparel", "price": 25},
      {"id": 3, "name": "Headphones", "category": "Electronics", "price": 100}
    ],
    "discounts": {
      "Electronics": 0.1,
      "Apparel": 0.05
    }
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "temperaturesInCelsius": [0, 10, 25, 30, -5]
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "products": [
      {"id": 1, "name": "Laptop", "price": 1200},
      {"id": 2, "name": "Shirt", "price": 25},
      {"id": 3, "name": "Headphones", "price": 100}
    ],
    "discountLookup": {
      "1": 0.1,
      "2": 0.05
    }
  }
  ```
  
  </details>
  
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
    <summary>Input</summary>
  
  ```json
  {
    "orderAmounts": [120, 50, 75, 200, 100]
  }
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
  %dw 2.0
  output application/json  
  ---
  totalOrderAmount: sum(payload.orderAmounts)
  ```
  
  </details>

</details>


<details>
  
  <summary>
    <h2>Medium - 
      <a href="https://medium.com/another-integration-blog/deep-dive-into-dataweave-practical-exercises-for-advanced-users-27c1b7a565a7">
      Faizan Arif</a>
    </h2>
  </summary>
  
  ---
  
  ## Table of Contents
  
  <table>
    <tbody align="center">
      <tr>
        <td><a href="#exercise-1---dynamic-data-transformation-with-functions"><b>Exercise #1 - Dynamic Data Transformation with Functions</b></a></td>
        <td><a href="#exercise-2---enrich-json-structure"><b>Exercise #2 - Enrich JSON Structure</b></a></td>
      </tr>
      <tr>
      </tr>
    </tbody>
  </table>
  
  ---
  
  ### Exercise #1 - Dynamic Data Transformation with Functions
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-1" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
{
  "data": [
    { "type": "text", "content": "Hello, World!" },
    { "type": "number", "content": 42 },
    { "type": "boolean", "content": true },
    { "type": "array", "content": [1, 2, 3] },
    { "type": "object", "content": { "key": "value" } }
  ]
}
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
%dw 2.0
output application/json

fun transformContent(contentType, content) =
  contentType match{
    case "text" ->
      transformedContent: upper(content as String)
    case "number" ->
      transformedContent: content * 2
    case "boolean" ->
      transformedContent: !content
    case "array" ->
      transformedContent: content map ($ ++ 0) as Number
    case "object" ->
      transformedContent: content mapObject { (upper($$)): upper($) }
  }
---
payload.data map ((item) -> 
  (item - "content") ++ (transformContent(item."type", item.content)))
  ```
  
  </details>


  ### Exercise #2 - Enrich JSON Structure
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-2" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
{
  "orders": [
    {
      "orderId": "A001",
      "customer": {
        "id": "C001",
        "name": "Amit Bannerjee",
        "address": "123 Main St"
      },
      "items": [
        { "productId": "P001", "quantity": 2 },
        { "productId": "P002", "quantity": 1 }
      ]
    },
    {
      "orderId": "A002",
      "customer": {
        "id": "C002",
        "name": "Kalyan Singh",
        "address": "456 Oak St"
      },
      "items": [
        { "productId": "P001", "quantity": 1 },
        { "productId": "P003", "quantity": 5 }
      ]
    }
  ],
  "products": [
    { "id": "P001", "name": "Widget", "price": 9.99 },
    { "id": "P002", "name": "Gadget", "price": 14.99 },
    { "id": "P003", "name": "Doohickey", "price": 19.99 }
  ]
}
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
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
  ```
  
  </details>
  
</details>