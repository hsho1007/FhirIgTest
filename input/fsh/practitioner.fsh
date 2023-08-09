// Declarartion
Alias: $krcore-practitioner-license-code = https://example.org/fhir/krcore/ValueSet/krcore-practitioner-license-code

Profile: MIBasePractitionerProfile

// Keywords
Parent: Practitioner
Id: MIBasePractitionerProfile
Title: "MIBasePractitionerProfile"
Description: "MI Base Practitioner Profile"

// Rules
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* name 1.. MS
* name ^short = "의료진 성명"
  * family ^short = "의료진 성명(성)"
  * given ^short = "의료진 성명(이름)"
  * text 1..1 MS
  * text ^short = "의료진 성명(전체)"
* qualification ^short = "의료진 면허 정보"
  * identifier ^short = "면허 식별체계 정보"
    * system 1..1 MS
    * system ^short = "면허 식별체계 식별자"
    * value 1..1 MS
    * value ^short = "면허번호"
  * code 1..1 MS
  * code from $krcore-practitioner-license-code (extensible)
  * code ^short = "면허 및 자격증 코드"
  * code ^binding.description = "KR Core Practitioner Lincense Code"
    * coding ^short = "정의된 표준"
      * system MS
      * system ^short = "코드체계 식별자"
      * code MS
      * code ^short = "코드값"
      * display ^short = "코드명칭"

Instance: PractitionerExample
InstanceOf: MIBasePractitionerProfile
Description: "An example of a Practitioner"
* name[0].text = "김의사"
* telecom
  * system[0] = #phone
  * value[0] = "010-435-3211"
* qualification
  * identifier[0].system = "http://wwww.mohw.go.kr/practitioner-licence-number"
  * identifier[0].value = "123456"
  * code.coding[0].system = "http://www.mohw.go.kr/CodeSystem/practitioner-license-type"
  * code.coding[0].code = #의사