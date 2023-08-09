Extension: MIBaseReplyDateExtension
Id: mi-base-reply-date
Title: "MIBaseReplyDateExtension"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..1
* url 1..1
* value[x] 1..1
* value[x] only dateTime
* value[x] ^short = "회신 일자"
