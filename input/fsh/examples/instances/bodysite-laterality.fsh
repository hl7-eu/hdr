// Examples for FHIR-53428: body site laterality without pre-coordination.
//
// One left hip joint, expressed post-coordinated in a BodyStructure and referenced from
// Condition, Procedure and DeviceUseStatement. Note that condition-eu-core and
// procedure-eu-core carry eu-bodysite-1, "Either a body site code or a reference to a
// BodyStructure resource SHALL be used, but not both", so bodySite carries the extension
// alone in these examples.

Instance: bodystructure-left-hip
InstanceOf: BodyStructureEuCore
Title: "BodyStructure: Left Hip Joint"
Description: "A left hip joint, expressed as a laterality-free structure code plus a separate laterality, so that consumers do not have to derive the side from a pre-coordinated code."

* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"

* extension[includedStructure].extension[structure].valueCodeableConcept = $sct#24136001 "Hip joint structure (body structure)"
* extension[includedStructure].extension[laterality].valueCodeableConcept = $sct#7771000 "Left (qualifier value)"


Instance: condition-left-hip-osteoarthritis
InstanceOf: ConditionEuCore
Title: "Condition: Osteoarthritis of the Left Hip"
Description: "Osteoarthritis whose body site, including the side of the body, is carried by a referenced BodyStructure rather than by a pre-coordinated bodySite code."

* clinicalStatus = $condition-clinical#active
* code = $sct#396275006 "Osteoarthritis (disorder)"
* bodySite.extension[bodySite].valueReference = Reference(bodystructure-left-hip)
* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"
* onsetDateTime = "2021-11-08"


Instance: procedure-left-hip-replacement
InstanceOf: ProcedureEuCore
Title: "Procedure: Total Replacement of the Left Hip"
Description: "A total hip replacement whose body site, including the side of the body, is carried by a referenced BodyStructure rather than by a pre-coordinated bodySite code."

* status = #completed
* code = $sct#52734007 "Total replacement of hip (procedure)"
* bodySite.extension[bodySite].valueReference = Reference(bodystructure-left-hip)
* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"
* performedDateTime = "2023-09-04"


Instance: example-deviceusestatement-hip-euhdr
InstanceOf: DeviceUseStatementEuHdr
Title: "DeviceUseStatement: Total Hip Replacement Prosthesis"
Description: "An implanted hip prosthesis whose body site, including the side of the body, is carried by a referenced BodyStructure. DeviceUseStatement.bodySite uses the R5 backport extension for DeviceUsage.bodySite, because the context of use of the generic bodySite extension does not cover DeviceUseStatement."

* status = #active

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* timingPeriod.start = "2023-09-04"

* device = Reference(hip-prosthesis-001)
* device.display = "Total Hip Replacement Prosthesis"

* bodySite.extension[bodySite].valueReference = Reference(bodystructure-left-hip)

* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><strong>Device:</strong> Total Hip Replacement Prosthesis</p>
  <p><strong>Patient:</strong> Fiona XXX_Swart</p>
  <p><strong>Status:</strong> Active</p>
  <p><strong>Timing:</strong> since 2023-09-04</p>
  <p><strong>Body Site:</strong> Hip joint structure, left</p>
</div>
"""


Instance: hip-prosthesis-001
InstanceOf: DeviceEuHdr
Title: "Device: Total Hip Replacement Prosthesis"
Description: "A sample Device resource for an implanted hip prosthesis, referenced in a DeviceUseStatement."

* identifier.system = "https://hl7europe.org/example-identifier"
* identifier.value = "hip-prosthesis-001"

* status = #active

* type = $sct#304120007 "Total hip replacement prosthesis"
* type.text = "Total Hip Replacement Prosthesis"

* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"

* manufacturer = "MedDevice Inc."
* lotNumber = "LOTTHR4321"
* serialNumber = "SN123456789"
* modelNumber = "THR-2000"
