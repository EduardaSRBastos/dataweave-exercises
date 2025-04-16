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