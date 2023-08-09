Alias: $krcore-vital-signs-codes = https://example.org/fhir/krcore/ValueSet/krcore-vital-signs-codes
Profile: MIBaseVitalSignsProfile
Parent: Observation
Id: MIBaseVitalSignsProfile
Title: "MIBaseVitalSignsProfile"
Description: "MI Base Vital Signs Profile"
* status MS
* status ^short = "상태코드: registered(등록됨) | preliminary(초기값 등록) | final(완료) | amended(수정됨) +"
* category 1.. MS
* category ^short = "관찰 및 측정 범주"

* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.ordered = false

* category contains VSCat 1..1

* category[VSCat].coding
  * system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
  * code = #vital-signs (exactly)

* code MS
* code ^short = "활력징후 코드"
* code from $krcore-vital-signs-codes (extensible)
* code ^binding.description = "KR Core Vital Signs Codes"

* subject 1..1 MS
* subject ^short = "내원 환자 정보"
* subject only Reference(MIBasePatientProfile)

* effective[x] 1.. MS
* effective[x] ^short = "측정 일자"

* value[x] MS
* value[x] ^short = "측정값"

* encounter 1..1 MS
* encounter only Reference(MIBaseEncounterProfile)
* encounter ^short = "내원 정보"

* component MS
* component ^short = "세부 측정항목"
  * code MS
  * code ^short = "세부 측정항목 코드"
  * code from $krcore-vital-signs-codes (extensible)
  * code ^binding.description = "KR Core Vital Signs Codes"
  * value[x] MS
  * value[x] ^short = "세부 측정항목 측정값"