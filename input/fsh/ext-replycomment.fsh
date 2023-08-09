Extension: MIBaseReplyCommentExtension
Id: mi-base-reply-comment
Title: "MIBaseReplyCommentExtension"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..1
* url 1..1
* value[x] 1..1
* value[x] only string
* value[x] ^short = "회신 내용"
