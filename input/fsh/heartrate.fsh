Profile: MIBaseHeartRateProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseHeartRateProfile
Title: "MIBaseHeartRateProfile"
Description: "MI Base HeartRate Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "심박수 측정 코드"
* code = $loinc#8867-4
* valueQuantity MS
* valueQuantity ^short = "심박수 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값"
  * code = #/min (exactly)

Instance: HeartRateExample
InstanceOf: MIBaseHeartRateProfile
Usage: #example
Title: "HeartRateExample"
Description: "An Example of HeartRate"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity
  * value = 44
  * unit = #beats/min
  * system = "http://unitsofmeasure.org"
  * code = #/min
* encounter = Reference(EncounterExample)