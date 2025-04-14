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