Alias: $krcore-practitioner-specialty = https://example.org/fhir/krcore/ValueSet/krcore-practitioner-specialty
Extension: MIBaseReplyDepartmentExtension
Id: mi-base-reply-department
Title: "MIBaseReplyDepartmentExtension"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..1
* url 1..1
* value[x] 1..1
* value[x] only code
* value[x] 1..1
* value[x] ^short = "회신 진료과"
* valueCode 1..1
* valueCode from $krcore-practitioner-specialty (extensible)
