Alias: $krcore-procedure-codes = https://example.org/fhir/krcore/ValueSet/krcore-procedure-codes
Profile: MIBaseProcedureProfile
Parent: Procedure
Id: MIBaseProcedureProfile
Title: "MIBaseProcedureProfile"
Description: "MI Base Procedure Profile"
* status MS
* status ^short = "수술 진행 상태: preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"
* code 1..1 MS
* code ^short = "수술 코드"
* code from $krcore-procedure-codes (extensible)
* code ^binding.description = "KR Core Procedure Codes"
* subject MS
* subject ^short = "환자 정보"
* subject only Reference(MIBasePatientProfile)
* performed[x] 1..1 MS
* performed[x] only dateTime
* performed[x] ^short = "수술일자"
* encounter 1..1 MS
* encounter only Reference(MIBaseEncounterProfile)
* encounter ^short = "내원 정보"
* performer ^short = "수술 의료인"
  * actor MS
  * actor ^short = "수술 의료인 정보"
  * actor only Reference(MIBasePractitionerProfile or MIBasePractitionerRoleProfile)

Instance: ProcedureExample
InstanceOf: MIBaseProcedureProfile
Usage: #example
Title: "ProcedureExample"
Description: "An Example of Procedure"
* status = #completed
* code
  * coding
    * system = "https://hira.or.kr/CodeSystem/procedure-code"
    * code = #HD170
    * display = "수술 중 방사선치료(전자선 이용)"
* subject = Reference(PatientExample)
* performedDateTime = "2021-01-01"
* encounter = Reference(EncounterExample)
* performer.actor = Reference(PractitionerRoleExample)