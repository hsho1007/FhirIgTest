Alias: $krcore-practitioner-specialty = https://example.org/fhir/krcore/ValueSet/krcore-practitioner-specialty
Profile: MIBasePractitionerRoleProfile
Parent: PractitionerRole
Id: MIBasePractitionerRoleProfile
Title: "MIBasePractitionerRoleProfile"
Description: "MI Base PractitionerRole Profile"

* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* identifier ^short = "식별정보"
  * system ^short = "식별자 식별체계"
  * value ^short = "식별자"
* practitioner 1..1 MS
* practitioner ^short = "진료의 정보"
* practitioner only Reference(MIBasePractitionerProfile)
* specialty MS
* specialty ^short = "진료과 코드"
* specialty from $krcore-practitioner-specialty (extensible)
* specialty ^binding.description = "KR Core Practitioner Specialty"
  * coding.system 1..1 MS
  * coding.system ^short = "진료과 코드체계"
  * coding.code 1..1 MS
  * coding.code ^short = "진료과 코드"
  * coding.display ^short = "진료과 코드명"

Instance: PractitionerRoleExample
InstanceOf: MIBasePractitionerRoleProfile
Usage: #example
Title: "PractitionerRoleExample"
Description: "An example of a Practitioner"
* identifier
  * system = "urn:oid:1.2.3.4.5.6"
  * value = "MD12345"
* practitioner = Reference(PractitionerExample)
* specialty
  * coding.system = "http://www.mohw.go.kr/CodeSystem/practitioner-specialty"
  * coding.code = #24
  * coding.display = "응급의학과"