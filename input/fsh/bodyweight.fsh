Alias: $ucum-bodyweight-codes = http://hl7.org/fhir/ValueSet/ucum-bodyweight|4.0.1
Profile: MIBaseBodyWeightProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseBodyWeightProfile
Title: "MIBaseBodyWeightProfile"
Description: "MI Base Body Weight Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "체중 측정 코드"
* code = $loinc#29463-7
* valueQuantity MS
* valueQuantity ^short = "체중 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값(kg | g)"
  * code from $ucum-bodyweight-codes (required)

Instance: BodyWeightExample
InstanceOf: MIBaseBodyWeightProfile
Usage: #example
Title: "BodyWeightExample"
Description: "An Example of Body Weight"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity
  * value = 55
  * unit = #kg
  * system = "http://unitsofmeasure.org"
  * code = #kg
* encounter = Reference(EncounterExample)