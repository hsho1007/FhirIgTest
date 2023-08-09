Profile: MIBaseRespiratoryRateProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseRespiratoryRateProfile
Title: "MIBaseRespiratoryRateProfile"
Description: "MI Base RespiratoryRate Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "호흡수 측정 코드"
* code = $loinc#9279-1
* valueQuantity MS
* valueQuantity ^short = "호흡수 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값"
  * code = #/min (exactly)

Instance: RespiratoryRateExample
InstanceOf: MIBaseRespiratoryRateProfile
Usage: #example
Title: "RespiratoryRateExample"
Description: "An Example of RespiratoryRate"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#9279-1
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity = 26 '/min' "breaths per minute"
* encounter = Reference(EncounterExample)