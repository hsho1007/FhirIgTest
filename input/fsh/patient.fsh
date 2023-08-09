// Declaration
Profile: MIBasePatientProfile

// Keywords
Parent: Patient
Id: MIBasePatientProfile
Title: "MIBasePatientProfile"
Description: "MI Base Patient Profile"

// Rule
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* identifier 1..* MS
* identifier ^short = "환자 식별자 정보"
  * system 1..1 MS
  * system ^short = "요양기관 식별자 (OID)"
  * value 1..1 MS
  * value ^short = "환자번호"

// Define the slicing logic
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice pattern for identifier.type"
* identifier ^slicing.ordered = false

// identify the slices
* identifier contains
  patientNumber 1..1

// Define each slice: patientNumber
* identifier[patientNumber] ^short = "Medical record number"
* identifier[patientNumber].type.coding.code = #MR (exactly)
* identifier[patientNumber].type ^short = "환자 식별자 유형"
* identifier[patientNumber].type.coding.code ^short = "유형 코드"

* name 1..* MS
* name ^short = "환자 정보"
* name.given and name.family MS
* name.given ^short = "성명(이름)" 
* name.family ^short = "성명(성)"
* name.text 1..1 MS
* name.text ^short = "성명(전체)"
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* gender ^short = "성별: male(남성) | female(여성) | other(그외) | unknown(미확인)"
* birthDate 0..1 MS
* birthDate ^short = "생년월일"
* telecom ^short = "연락처 정보"
  * system 1..1 MS
  * system ^short = "연락처 종류"
  * value 1..1 MS
  * value ^short = "연락처"

* address ^short = "주소"
  * text 0..1 MS
  * text ^short = "주소 텍스트"
  * postalCode MS
  * postalCode ^short = "우편번호"

Instance: PatientExample
InstanceOf: MIBasePatientProfile
Description: "An example of a patient"
* identifier
  * type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type.coding[0].code = #MR
  * system[0] = "http://example.com"
  * value[0] = "example"
* name
  * text = "James Pond"  
* gender = 	#male
* birthDate = "1999-01-01"
* telecom
  * system[0] = #phone
  * value[0] = "(02)031-738-0211"