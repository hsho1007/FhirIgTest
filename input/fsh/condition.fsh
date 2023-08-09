Alias: $krcore-condition-code = https://example.org/fhir/krcore/ValueSet/krcore-condition-codes
Profile: MIBaseConditionProfile
Parent: Condition
Id: MIBaseConditionProfile
Title: "MIBaseConditionProfile"
Description: "MI Base Condition Profile"
* clinicalStatus MS
* clinicalStatus ^short = "현재 상태: active | recurrence | relapse | inactive | remission | resolved"
* verificationStatus MS
* verificationStatus ^short = "검증 상태: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
* category MS
* category ^short = "진단 및 주호소 범주: problem-list-item | encounter-diagnosis"
* code 1..1 MS
* code ^short = "진단 및 주호소 코드"
* code from $krcore-condition-code (extensible)
* code ^binding.description = "KR Core Condition Codes"
  * coding.system 1..1 MS
  * coding.system ^short = "코드체계 식별자"
  * coding.code 1..1 MS
  * coding.code ^short = "코드 값"
  * coding.display ^short = "진단 및 주호소 텍스트(추가 정보)"
* recordedDate MS
* recordedDate ^short = "진단일"
* subject MS
* subject only Reference(MIBasePatientProfile)
* subject ^short = "내원 환자 정보"
* encounter 1..1 MS
* encounter only Reference(MIBaseEncounterProfile)
* encounter ^short = "내원 정보"
* recorder MS
* recorder only Reference(MIBasePractitionerRoleProfile)
* recorder ^short = "내원 참여 의료인"

Instance: ConditionExample
InstanceOf: MIBaseConditionProfile
Usage: #example
Title: "ConditionExample"
Description: "An Example of Condition"
* clinicalStatus
  * coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
  * coding.code = #active
* verificationStatus
  * coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
  * coding.code = #confirmed
* category
  * coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
  * coding.code = #encounter-diagnosis
* code
  * coding.system = "urn:oid:1.2.410.100110.400.10"
  * coding.code = #I10
  * coding.display = "Benign Hypertension"
* recordedDate = "2021-06-10"
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* recorder = Reference(PractitionerRoleExample)
