Alias: $organization-type = https://hira.or.kr/CodeSystem/organization-type

ValueSet: KR_Core_Organization_Type
Id: krcore-organization-type
Title: "KR Core Organization Type"
Description: "KR Core 기관 구분 코드"
* ^url = "https://example.org/fhir/krcore/ValueSet/krcore-organization-type"
* ^version = "1.0.9"
* ^status = #draft
* ^date = "2021-11-27T23:35:13+09:00"
* ^publisher = "Korea Health Information Service"
* ^contact[0].name = "Korea Health Information Service"
* ^contact[=].telecom[0].system = #url
* ^contact[=].telecom[=].value = "https://www.k-his.or.kr/"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "contact@healthall.co.kr"
* ^contact[+].name = "HealthAll Inc."
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "contact@healthall.co.kr"
* ^contact[=].telecom.use = #work
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* include codes from system $organization-type