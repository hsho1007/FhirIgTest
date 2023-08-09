Profile: MIBaseBloodPressureProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseBloodPressureProfile
Title: "MIBaseBloodPressureProfile"
Description: "MI Base BloodPressure Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "혈압 측정 코드"
* code = $loinc#85354-9

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains
  systolic 1..1 MS and
  diastolic 1..1 MS

* component[systolic] ^short = "수축기 혈압 측정 결과"
* component[systolic].code = $loinc#8480-6
* component[systolic]
  * valueQuantity MS
  * valueQuantity ^short = "수축기 혈압 측정 결과"
    * value 1.. MS
    * value ^short = "측정값(숫자)"
    * unit ^short = "측정 단위 텍스트"
    * system 1.. MS
    * system = "http://unitsofmeasure.org" (exactly)
    * code 1.. MS
    * code ^short = "측정 단위 코드값"
    * code = #mm[Hg] (exactly)

* component[diastolic] ^short = "이완기 혈압 측정 결과"
* component[diastolic].code = $loinc#8462-4
* component[diastolic]
  * valueQuantity MS
  * valueQuantity ^short = "이완기 혈압 측정 결과"
    * value 1.. MS
    * value ^short = "측정값(숫자)"
    * unit ^short = "측정 단위 텍스트"
    * system 1.. MS
    * system = "http://unitsofmeasure.org" (exactly)
    * code 1.. MS
    * code ^short = "측정 단위 코드값"
    * code = #mm[Hg] (exactly)


Instance: BloodPressureExample
InstanceOf: MIBaseBloodPressureProfile
Usage: #example
Title: "BloodPressureExample"
Description: "An Example of BloodPressure"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* component[systolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolic].code.text = "Systolic blood pressure"
* component[systolic].valueQuantity = 109 'mm[Hg]' "mmHg"
* component[diastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolic].code.text = "Diastolic blood pressure"
* component[diastolic].valueQuantity = 44 'mm[Hg]' "mmHg"
* encounter = Reference(EncounterExample)