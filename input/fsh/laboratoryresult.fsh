Alias: $krcore-lab-result-observation-codes = https://example.org/fhir/krcore/ValueSet/krcore-observation-labresult-codes
Profile: MIBaseLaboratoryResultObservationProfile
Parent: Observation
Id: MIBaseLaboratoryResultObservationProfile
Title: "MIBaseLaboratoryResultObservationProfile"
Description: "MI Base Laboratory Result Observation Profile"
* status ^short = "진단검사 진행 상태: registered | preliminary | final | amended +"
* status MS
* category 1..1 MS
* category ^short = "관찰분류"
  * coding
    * system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
    * system ^short = "코드체계 식별자"
    * code = #laboratory (exactly)
    * code ^short = " 코드값"
* code MS
* code ^short = "검사코드"
* code from $krcore-lab-result-observation-codes (extensible)
* code ^binding.description = "KR Core Lab Result Observation Codes"
* subject 1.. MS
* subject ^short = "진단검사 대상"
* subject only Reference(MIBasePatientProfile)
* effective[x] MS
* effective[x] ^short = "검사일자"
* effective[x] only dateTime
* value[x] MS
* value[x] ^short = "검사 결과"
* value[x] only Quantity or string
* encounter 1..1 MS
* encounter ^short = "수진 정보"
* encounter only Reference(MIBaseEncounterProfile)

Instance: LaboratoryResultObservationExample
InstanceOf: MIBaseLaboratoryResultObservationProfile
Usage: #example
Title: "LaboratoryResultObservationExample"
Description: "An Example of Laboratory Result Observation"
* status = #final
* category
  * coding
    * system = "http://terminology.hl7.org/CodeSystem/observation-category"
    * code = #laboratory
    * display = "Laboratory"
* code
  * coding
    * system = "https://hira.or.kr/CodeSystem/lab-result-code"
    * code = #FZ811
    * display = "연속혈당측정검사"
  * text = "연속혈당측정검사"
* subject = Reference(PatientExample)
* effectiveDateTime = "2021-01-01"
* valueQuantity
  * value = 76
  * system = "http://unitsofmeasure.org"
  * unit = #mg/dL
* encounter = Reference(EncounterExample)