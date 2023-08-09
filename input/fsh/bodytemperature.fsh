Alias: $ucum-body-temperature-codes = http://hl7.org/fhir/ValueSet/ucum-bodytemp|4.0.1
Profile: MIBaseBodyTemperatureProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseBodyTemperatureProfile
Title: "MIBaseBodyTemperatureProfile"
Description: "MI Base Body Temperature Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "체온 측정 코드"
* code = $loinc#8310-5
* valueQuantity MS
* valueQuantity ^short = "체온 측정 결과"
  * value 1.. MS
  * value ^short = "측정값(숫자)"
  * unit ^short = "측정 단위 텍스트"
  * system 1.. MS
  * system ^short = "측정 단위 코드체계 식별자"
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code ^short = "측정 단위 코드값"
  * code from $ucum-body-temperature-codes (required)

Instance: BodyTemperatureExample
InstanceOf: MIBaseBodyTemperatureProfile
Usage: #example
Title: "BodyTemperatureExample"
Description: "An Example of Body Temperature"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity
  * value = 36.6
  * unit = #Cel
  * system = "http://unitsofmeasure.org"
  * code = #Cel
* encounter = Reference(EncounterExample)