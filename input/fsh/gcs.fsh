Profile: MIBaseGlasgowComaScaleProfile
Parent: MIBaseVitalSignsProfile
Id: MIBaseGlasgowComaScaleProfile
Title: "MIBaseGlasgowComaScaleProfile"
Description: "MI Base GlasgowComaScale Profile"
* code only CodeableConcept
* code 1..1 MS
* code ^short = "Glasgow Coma Scale 측정 코드"
* code = $loinc#9269-2

* valueQuantity MS
  * value 1.. MS
  * system 1.. MS
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code = #{score} (exactly)

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains
  Motor 1..1 MS and
  Verbal 1..1 MS and
  EyeOpening 1..1 MS

* component[Motor]
  * code = $loinc#9268-4
  * value[x] only CodeableConcept
  * valueCodeableConcept from MIBaseGCSMotorAnswer (required)

* component[Verbal]
  * code = $loinc#9270-0
  * value[x] only CodeableConcept
  * valueCodeableConcept from MIBaseGCSVerbalAnswer (required)

* component[EyeOpening]
  * code = $loinc#9267-6
  * value[x] only CodeableConcept
  * valueCodeableConcept from MIBaseGCSEyeOpeningAnswer (required)

Instance: GlasgowComaScaleExample
InstanceOf: MIBaseGlasgowComaScaleProfile
Usage: #example
Title: "GlasgowComaScaleExample"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#9269-2
* valueQuantity = 13 '{score}'
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* component[Motor]
  * code = $loinc#9268-4
  * valueCodeableConcept = #LA6566-9 "Localizing pain"
* component[Verbal]
  * code = $loinc#9270-0
  * valueCodeableConcept = #LA6560-2 "Confused"
* component[EyeOpening]
  * code = $loinc#9267-6
  * valueCodeableConcept = #LA6556-0 "Eyes open spontaneously"
* encounter = Reference(EncounterExample)