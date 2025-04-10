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
