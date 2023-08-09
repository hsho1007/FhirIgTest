Alias: $loinc = http://loinc.org
Profile: MIBaseBodyHeightProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseBodyHeightProfile
Title: "MIBaseBodyHeightProfile"
Description: "MI Base Body Height Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "신장 측정 코드"
* code = $loinc#8302-2
* valueQuantity MS
* valueQuantity ^short = "신장 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값"
  * code = #cm (exactly)

Instance: BodyHeightExample
InstanceOf: MIBaseBodyHeightProfile
Usage: #example
Title: "BodyHeightExample"
Description: "An Example of Body Height"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity
  * value = 174.5
  * unit = #cm
  * system = "http://unitsofmeasure.org"
  * code = #cm
* encounter = Reference(EncounterExample)