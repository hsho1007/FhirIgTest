// Declaration
Alias: $krcore-organization-type = https://example.org/fhir/krcore/ValueSet/krcore-organization-type

Profile: MIBaseOrganizationProfile

// Keywords
Parent: Organization
Id: MIBaseOrganizationProfile
Title: "MIBaseOrganizationProfile"
Description: "MI Base Organization Profile"

// Rules
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* identifier MS
* identifier ^short = "식별 정보"
  * system MS
  * system ^short = "기관 식별 체계"
  * value MS
  * value ^short = "기관 식별자"

// Define the slicing logic
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

// identify the slices
* identifier contains KRNPI 0..1 MS

// Define each slice: KRNPI
* identifier[KRNPI] ^short = "한국 요양기관 식별자"
* identifier[KRNPI] ^definition = "건깅보험심사평가원에서 부여하는 요양기관 번호"
* identifier[KRNPI].system 1..
* identifier[KRNPI].system = "https://hira.or.kr/knpi" (exactly)
* identifier[KRNPI].system ^short = "식별체계 식별자"
* identifier[KRNPI].value 1..
* identifier[KRNPI].value ^short = "식별자 (건강보험심사평가원 요양기관 번호)"
* identifier[KRNPI].value ^definition = "요양기관의 OID"

* type MS
* type from $krcore-organization-type (extensible)
* type ^short = "기관구분(진료과 구분)"
* type ^binding.description = "KR Core Organization Type"
  * coding ^short = "기관 타입 코드"
    * system ^short = "기관 구분 코드 체계"
    * system 1..1 MS
    * code ^short = "기관 구분 코드"
    * code 1..1 MS
    * display ^short = "코드명칭"
  * text = "요양기관 외 기관 구분 텍스트" (exactly)

* name 1..1 MS
* name ^short = "기관명"
* telecom ^short = "연락처 정보"
  * system ^short = "연락처 종류"
  * value ^short = "연락처"

* address ^short = "의료기관 주소"
  * text ^short = "의료기관 주소 텍스트"
  * postalCode ^short = "우편번호"

Instance: OrganizationExample
InstanceOf: MIBaseOrganizationProfile
Description: "An example of a Organization"
* identifier
  * system[0] = "https://hira.or.kr/knpi"
  * value[0] = #11100000
* type
  * coding[0].system = "https://hira.or.kr/CodeSystem/organization-type"
  * coding[0].code = #01
  * coding[0].display = "상급종합병원"
* name = "한국병원"
* telecom
  * system[0] = #phone
  * value[0] = "02-123-0211"