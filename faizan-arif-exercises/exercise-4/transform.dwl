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