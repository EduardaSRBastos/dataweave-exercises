%dw 2.0
output application/json
---
payload map ( $ ++ ($.department match {
    case "Engineering" -> {status: "Active"}
    case "Marketing" -> {status: "Pending"}
    case "HR" -> {status: "Inactive"}
}))