Profile: MIBasePulseOximetryProfile
Parent: MIBaseVitalSignsProfile
Id: MIBasePulseOximetryProfile
Title: "MIBasePulseOximetryProfile"
Description: "MI Base PulseOximetry Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "맥박산소포화도 측정 코드"
* code = $loinc#2708-6
* valueQuantity MS
* valueQuantity ^short = "맥박산소포화도 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값"
  * code = #% (exactly)

Instance: PulseOximetryExample
InstanceOf: MIBasePulseOximetryProfile
Usage: #example
Title: "PulseOximetryExample"
Description: "An Example of PulseOximetry"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity = 99 '%' "%O2"
* encounter = Reference(EncounterExample)