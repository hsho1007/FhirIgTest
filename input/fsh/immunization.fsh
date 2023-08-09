Alias: $krcore-vaccine-codes = https://example.org/fhir/krcore/ValueSet/krcore-vaccine-codes
Profile: MIBaseImmunizationProfile
Parent: Immunization
Id: MIBaseImmunizationProfile
Title: "MIBaseImmunizationProfile"
Description: "MI Base Immunization Profile"
* status MS
* status ^short = "예방접종 상태: completed | entered-in-error | not-done"
* patient MS
* patient ^short = "예방접종 대상"
* patient only Reference(MIBasePatientProfile)
* vaccineCode MS
* vaccineCode ^short = "백신 코드"
* vaccineCode from $krcore-vaccine-codes (extensible)
* occurrence[x] MS
* occurrence[x] ^short = "예방접종 일시"
* occurrence[x] only dateTime
* protocolApplied ^short = "예방접종 프로토콜"
  * doseNumber[x] MS
  * doseNumber[x] ^short = "예방접종 차수"
* encounter 1.. MS
* encounter ^short = "내원 정보"
* encounter only Reference(MIBaseEncounterProfile)

Instance: ImmunizationExample
InstanceOf: MIBaseImmunizationProfile
Usage: #example
Title: "ImmunizationExample"
Description: "An Example of Immunization"
* status = #completed
* patient = Reference(PatientExample)
* vaccineCode
  * coding
    * system = "http://hl7.org/fhir/sid/cvx"
    * code = #158
    * display = "influenza, injectable, quadrivalent, contains preservative"
  * text = "독감 예방 주사"
* occurrenceDateTime = "2021-01-01"
* protocolApplied
  * doseNumberPositiveInt = 1
* encounter = Reference(EncounterExample)