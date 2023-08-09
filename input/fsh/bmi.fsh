Profile: MIBaseBMIProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseBMIProfile
Title: "MIBaseBMIProfile"
Description: "MI Base BMI Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "BMI 측정 코드"
* code = $loinc#39156-5
* valueQuantity MS
* valueQuantity ^short = "BMI 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값"
  * code = #kg/m2 (exactly)

Instance: BMIExample
InstanceOf: MIBaseBMIProfile
Usage: #example
Title: "BMIExample"
Description: "An Example of BMI"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity
  * value = 16.2
  * unit = #kg/m2
  * system = "http://unitsofmeasure.org"
  * code = #kg/m2
* encounter = Reference(EncounterExample)