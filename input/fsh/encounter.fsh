Profile: MIBaseEncounterProfile
Parent: Encounter
Id: MIBaseEncounterProfile
Title: "MIBaseEncounterProfile"
Description: "MI Base Encounter Profile"

* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* class 1..1 MS
* class ^short = "내원 구분: AMB | EMER | IMP +"
* status MS
* status ^short = "내원 상태: planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* subject 1..1 MS
* subject only Reference(MIBasePatientProfile)
* subject ^short = "내원 환자 정보"
* participant MS
* participant ^short = "내원 참여 의료인"
  * individual MS
  * individual ^short = "내원 참여 의료인"
  * individual only Reference(MIBasePractitionerRoleProfile)
  * type MS
  * type ^short = "내원 참여 의료인 역할 유형"
* period MS
* period ^short = "내원일"
* serviceProvider ^short = "진료과"
* serviceProvider only Reference(MIBaseOrganizationProfile)


Instance: EncounterExample
InstanceOf: MIBaseEncounterProfile
Usage: #example
Title: "EncounterExample"
Description: "An example of a Practitioner"
* status = #finished
* class
  * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
  * code = #AMB
* subject = Reference(PatientExample)
* participant
  * individual = Reference(PractitionerRoleExample)
  * type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
  * type.coding[0].code = #ATND
* period
  * start = "2021-08-01"
* serviceProvider = Reference(OrganizationExample)