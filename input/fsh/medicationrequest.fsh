Profile: MIBaseMedicationRequestProfile
Parent: MedicationRequest
Id: MIBaseMedicationRequestProfile
Title: "MIBaseMedicationRequestProfile"
Description: "MI Base MedicationRequest Profile"
* status MS
* status ^short = "약물 처방 진행 상태: active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
* intent MS
* intent ^short = "약물 처방 의도: order | proposal | plan +"
* medication[x] MS
* medication[x] ^short = "처방 약물 정보"
* medication[x] only Reference(MIBaseMedicationProfile)
* subject MS
* subject only Reference(MIBasePatientProfile)
* subject ^short = "내원 환자 정보"
* encounter 1..1 MS
* encounter only Reference(MIBaseEncounterProfile)
* encounter ^short = "내원 정보"
* authoredOn 1..1 MS
* authoredOn ^short = "처방일자"
* dosageInstruction 1.. MS
* dosageInstruction ^short = "약물 투여 지시"
* dosageInstruction
  * text 1..1 MS
  * text ^short = "투약 방법 텍스트 (SIG)"
  * timing 1..1 MS
  * timing ^short = "투여 시기"
  * route 1..1 MS
  * route ^short = "투여 경로"
  * doseAndRate 1..1 MS
  * doseAndRate ^short = "처방 약물 용량"

Instance: MedicationRequestExample
InstanceOf: MIBaseMedicationRequestProfile
Usage: #example
Title: "MedicationRequestExample"
Description: "An Example of MedicationRequest"
* status = #completed
* intent = #order
* medicationReference = Reference(MedicationExample)
* subject = Reference(PatientExample)
* encounter = Reference(EncounterExample)
* authoredOn = "2021-01-01"
* dosageInstruction
  * text = "하루 1번 2TAB"
  * timing.repeat.boundsPeriod
    * start = "2021-01-01"
    * end = "2021-01-05"
  * route.coding
    * system = "http://snomed.info/sct"
    * code = #10547007
  * doseAndRate
    * doseQuantity.value = 2
    * doseQuantity.unit = #TAB