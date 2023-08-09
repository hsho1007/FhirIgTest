Alias: $snomed-ct = http://snomed.info/sct
Profile: MIBaseServiceRequestProfile
Parent: ServiceRequest
Id: MIBaseServiceRequestProfile
Title: "MIBaseServiceRequestProfile"
Description: "MI Base ServiceRequest Profile"
* status 1..1 MS
* status ^short = "요청상태"
* intent 1..1 MS
* intent ^short = "요청의도"
* code ^short = "의뢰내용"
* performer 1..1 MS
* performer only Reference(MIBasePractitionerRoleProfile)
* subject 1..1 MS
* subject only Reference(MIBasePatientProfile)
* extension contains 
  MIBaseReplyCommentExtension named reply-comment 0..1 and
  MIBaseReplyDateExtension named reply-date 0..1 and
  MIBaseReplyDepartmentExtension named reply-department 0..1

Instance: ServiceRequestExample
InstanceOf: MIBaseServiceRequestProfile
Usage: #example
Title: "ServiceRequestExample"
Description: "An Example of ServiceRequest"
* status = #completed
* intent = #order
* code = $snomed-ct#233169004 "Automatic defibrillator procedure (procedure)"
* subject = Reference(PatientExample)
* performer = Reference(PractitionerRoleExample)
* extension[reply-date].valueDateTime = "2021-01-01"
* extension[reply-department].valueCode = http://www.mohw.go.kr/CodeSystem/practitioner-specialty#24 "응급의학과"
* extension[reply-comment].valueString = "회신 내용 샘플"