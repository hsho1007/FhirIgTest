Alias: $krcore-drug-codes = https://example.org/fhir/krcore/ValueSet/kr-drug-codes
Alias: $hira-medication-ingredient = https://example.org/fhir/krcore/ValueSet/hira-medication-ingredient
Alias: $mfds-medication-ingredient = https://example.org/fhir/krcore/ValueSet/mfds-medication-ingredient
Profile: MIBaseMedicationProfile
Parent: Medication
Id: MIBaseMedicationProfile
Title: "MIBaseMedicationProfile"
Description: "MI Base Medication Profile"
* code 1..1 MS
* code ^short = "약물 코드"

// Define the slicing logic
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false


// identify the slices
* code.coding contains kdcode 0..1 MS

// Define each slice: KRNPI
* code.coding[kdcode] ^short = "KD 코드"
* code.coding[kdcode] from $krcore-drug-codes (required)
* code.coding[kdcode] ^binding.description = "KD Code"
* code.coding[kdcode].system = "https://biz.kpis.or.kr/CodeSystem/kdcode" (exactly)
* code.coding[kdcode].system 1..1 MS
* code.coding[kdcode].code 1..1 MS
* code.coding[kdcode].system ^short = "코드체계 식별자"
* code.coding[kdcode].code ^short = "코드값"
* code.coding[kdcode].display ^short = "코드명칭"

* code.text ^short = "약물 정보 텍스트 (코드가 없는 경우)"

* ingredient ^short = "약물 성분 코드"
* ingredient.item[x] only CodeableConcept

* ingredient.itemCodeableConcept.coding ^slicing.discriminator.type = #value
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.path = "system"
* ingredient.itemCodeableConcept.coding ^slicing.rules = #open
* ingredient.itemCodeableConcept.coding ^slicing.ordered = false

* ingredient.itemCodeableConcept.coding contains
  hiraMedicationIngredicent	0..1 and
  mfdsMedicationIngredient 0..1

* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent] ^short = "건강보험심사평가원 의약품 주성분코드"
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent] MS
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent] from $hira-medication-ingredient (required)
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent] ^binding.description = "건강보험심사평가원 의약품 주성분코드"
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent].system = "https://hira.or.kr/CodeSystem/medication-ingredient-code" (exactly)
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent].system ^short = "코드체계 식별자"
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent].system MS
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent].code ^short = "코드값"
* ingredient.itemCodeableConcept.coding[hiraMedicationIngredicent].display ^short = "코드명칭"

* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient] ^short = "식품의약품안전처 의약품 성분코드"
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient] MS
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient] from $mfds-medication-ingredient (required)
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient] ^binding.description = "식품의약품안전처 의약품 성분코드"
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient].system = "https://www.mfds.go.kr/CodeSystem/medication-ingredient-code" (exactly)
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient].system ^short = "코드체계 식별자"
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient].system MS
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient].code ^short = "코드값"
* ingredient.itemCodeableConcept.coding[mfdsMedicationIngredient].display ^short = "코드명칭"


Instance: MedicationExample
InstanceOf: MIBaseMedicationProfile
Usage: #example
Title: "MedicationExample"
Description: "MI Base Medication Profile"
* code
  * coding[0].system = "https://biz.kpis.or.kr/CodeSystem/kdcode"
  * coding[0].code = #657200821
  * coding[0].display = "트롤락주(케토롤락트로메타민)"
  * coding[1].system = "http://www.whocc.no/atc"
  * coding[1].code = #M01AB15
  * coding[1].display = "KETOROLAC"
* ingredient
  * itemCodeableConcept.coding
    * system = "https://hira.or.kr/CodeSystem/medication-ingredient-code"
    * code = #180033BIJ
    * display = "ketorolac tromethamine"