<div align="center">

# DataWeave Exercises

</div>

<br>

## Table of Contents

- #### [Exercises from Medium - Rahul Kumar](#exercises-from----medium---rahul-kumar)
- #### [Exercises from Medium - Faizan Arif](#exercises-from----medium---faizan-arif)

<br>

<h2>Exercises from
  <a href="https://medium.com/@rahulkumarofficial/dataweave-practice-made-easy-solved-questions-for-skill-building-7c2aa4c82376">
  Medium - Rahul Kumar</a>
</h2>


### Table of Exercises

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
  

    
<h3>Exercises</h3>

<table>
  <tbody align="center">
    <tr>
    <td>
    
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

  </td>
  
 <td>
   
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
  
   </tr>
  </td>

  <tr>
   <td>
  
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
   
  </td>
  
   <td>
     
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
   
   </tr>
  </td>

  <tr>
   <td>
  
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
   
  </td>
  
   <td>
     
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
   
   </tr>
  </td>

  <tr>
   <td>
   
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
   
  </td>
  
  <td>
     
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
   
   </tr>
  </td>

  <tr>
   <td>
  
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
   
  </td>
  
  <td>
     
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
 
   </tr>
  </td>

  <tr>
   <td>
   
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
  
  </td>
  
   <td>
  
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
  
   </tr>
  </td>

  <tr>
   <td>
  
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
  
  </td>
  
   <td>
  
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
  
   </tr>
  </td>

  <tr>
   <td>
   
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
  
  </td>
  
   <td>
  
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
  
   </tr>
  </td>

  <tr>
   <td>
   
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
  
  </td>
  
   <td>
  
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
  
   </tr>
  </td>

  <tr>
   <td>
   
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

  </td>
  </tr>
  
  </tbody>
</table> 

<br>

---

<br>

<h2>Exercises from
  <a href="https://medium.com/another-integration-blog/deep-dive-into-dataweave-practical-exercises-for-advanced-users-27c1b7a565a7">
  Medium - Faizan Arif</a>
</h2>


### Table of Exercises

<table>
  <tbody align="center">
    <tr>
      <td><a href="#exercise-1---dynamic-data-transformation-with-functions"><b>Exercise #1 - Dynamic Data Transformation with Functions</b></a></td>
      <td><a href="#exercise-2---enrich-json-structure"><b>Exercise #2 - Enrich JSON Structure</b></a></td>
      <td><a href="#exercise-3---add-new-field-to-each-object"><b>Exercise #3 - Add New Field to Each Object</b></a></td>
      <td><a href="#exercise-4---sort-an-array-of-objects"><b>Exercise #4 - Sort an Array of Objects</b></a></td>
      <td><a href="#exercise-6---calculate-total-and-average-of-grouped-payload"><b>Exercise #6 - Calculate Total and Average of Grouped Payload</b></a></td>
    </tr>
    <tr>
      <td><a href="#exercise-78--extract-values-from-specified-keys"><b>Exercise #7/8 - Extract Values from Specified Keys</b></a></td>
      <td><a href="#exercise-9---determine-the-top-value-per-specific-field"><b>Exercise #9 - Determine the Top Value per Specific Field</b></a></td>
      <td><a href="#exercise-10---find-and-multiply-every-number"><b>Exercise #10 - Find and Multiply Every Number</b></a></td>
    </tr>
  </tbody>
</table>


<h3>Exercises</h3>

  <table>
  <tbody align="center">
    <tr>
    <td>
      
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

  </td>
  
  <td>

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
    
  </td>
</tr>

<tr>
  <td>
  
  ### Exercise #3 - Add New Field to Each Object
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-3" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
[
  { "name": "John", "department": "Engineering" },
  { "name": "Jane", "department": "Marketing" },
  { "name": "Doe", "department": "HR" }
]
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
%dw 2.0
output application/json
---
payload map ( $ ++ ($.department match {
    case "Engineering" -> {status: "Active"}
    case "Marketing" -> {status: "Pending"}
    case "HR" -> {status: "Inactive"}
}))
  ```
  
  </details>

   </td>

   <td>
  
  ### Exercise #4 - Sort an Array of Objects
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-4" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
[
  { "task": "Task 1", "priority": "Medium" },
  { "task": "Task 2", "priority": "High" },
  { "task": "Task 3", "priority": "Low" },
  { "task": "Task 4", "priority": "High" },
  { "task": "Task 5", "priority": "Medium" }
]
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
%dw 2.0
output application/json

fun priorityLevel(priority) = priority match {
    case "High" -> 1
    case "Medium" -> 2
    case "Low" -> 3
}
---
// Alternative: payload orderBy $.priority[-1 to 0]

payload orderBy priorityLevel($.priority)
  ```
  
  </details>

   </td>

  </tr>

<tr>
  <td>
  
  ### Exercise #6 - Calculate Total and Average of Grouped Payload
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-6" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
[
  {
      "product": "Laptop",
      "region": "North",
      "sales": [
          {
              "month": "January",
              "amount": 1200
          },
          {
              "month": "Febraury",
              "amount": 1500
          },
          {
              "month": "March",
              "amount": 1800
          }
      ]
  },
  {
      "product": "smartphone",
      "region": "North",
      "sales": [
          {
              "month": "January",
              "amount": 800
          },
          {
              "month": "Febraury",
              "amount": 1000
          },
          {
              "month": "March",
              "amount": 1200
          }
      ]
  },
  {
      "product": "Laptop",
      "region": "South",
      "sales": [
          {
              "month": "January",
              "amount": 1000
          },
          {
              "month": "Febraury",
              "amount": 1900
          },
          {
              "month": "March",
              "amount": 1500
          }
      ]
  },
  {
      "product": "smartphone",
      "region": "South",
      "sales": [
          {
              "month": "January",
              "amount": 1000
          },
          {
              "month": "Febraury",
              "amount": 1200
          },
          {
              "month": "March",
              "amount": 800
          }
      ]
  }
]
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
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
  ```
  
  </details>

   </td>

   <td>
  
  ### Exercise #7/8- Extract Values from Specified Keys
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-7" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
{
  "name1": "Root",
  "children": [
    {
      "name2": "Child1",
      "children": [
        {
          "name3": "Grandchild1",
          "children": []
        },
        {
          "name4": "Grandchild2",
          "children": [
            {
              "name5": "GreatGrandchild1",
              "children": []
            }
          ]
        }
      ]
    },
    {
      "name6": "Child2",
      "children": []
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

fun getValues(value) =
  flatten(value match {
    case is String -> []
    case is Array -> value map getValues($)
    case is Object -> value pluck ((value, key) -> 
        if (key startsWith "name")
            value
        else
            getValues(value))
  })
---
flatten(getValues(payload))
  ```
  
  </details>

   </td>

  </tr>

  <tr>
  <td>
  
  ### Exercise #9 - Determine the Top Value per Specific Field
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-9" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
{
  "students": [
    {
      "name": "John",
      "courses": [
        {
          "name": "Math",
          "grade": 95
        },
        {
          "name": "Science",
          "grade": 82
        },
        {
          "name": "History",
          "grade": 90
        }
      ]
    },
    {
      "name": "Alice",
      "courses": [
        {
          "name": "Math",
          "grade": 88
        },
        {
          "name": "Science",
          "grade": 95
        },
        {
          "name": "History",
          "grade": 92
        }
      ]
    },
    {
      "name": "Bob",
      "courses": [
        {
          "name": "Math",
          "grade": 75
        },
        {
          "name": "Science",
          "grade": 80
        },
        {
          "name": "History",
          "grade": 85
        }
      ]
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
payload.students flatMap ((student) -> student.courses map ((course) -> {
    "course": course.name,
    TopPerformingstudents: [
      {
        "name": student.name,
        "grade": course.grade
      }
    ]
  })) groupBy ((course) -> course.course) mapObject ((value, key, index) -> value maxBy ((item) -> item.TopPerformingstudents.grade[0]))
  ```
  
  </details>

   </td>

   <td>
  
  ### Exercise #10 - Find and Multiply Every Number
  
  <a href="https://dataweave.mulesoft.com/learn/playground?projectMethod=GHRepo&repo=EduardaSRBastos%2Fdataweave-exercises&path=faizan-arif-exercises%2Fexercise-10" target="_blank">DataWeave Playground<a>
  
  <details>
    <summary>Input</summary>
  
  ```json
[
  2,
  4,
  "hello",
  [5, { "name1": 10, "name2": "10" }, [9, 10, "dw", [12, [15, 17, "18", [19]]]]]
]
  ```
  
  </details>
  
  <details>
    <summary>Script</summary>
  
  ```dataweave
%dw 2.0
import * from dw::util::Tree
output application/json  
---
payload mapLeafValues ((value) -> 
  if (value is Number)
    value * 10
  else
    value)
  ```
  
  </details>

   </td>

  </tr>

  
  </tbody>
</table> 

