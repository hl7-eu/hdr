Instance: example-deviceusestatement-euhdr
InstanceOf: DeviceUseStatementEuHdr
Title: "DeviceUseStatement: Implanted Pacemaker"
Description: "A DeviceUseStatement documenting the use of an implanted pacemaker in the hospital discharge report."

* status = #active

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* timingPeriod.start = "2022-03-15"
* timingPeriod.end = "2024-12-01"

* device = Reference(pacemaker-001)
* device.display = "Implantable Pacemaker"

* reasonCode[0] = $sct#27885002 "Complete atrioventricular block"
* reasonCode[0].text = "Complete AV block"

* bodySite = $sct#73829009  "Right atrium"


* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><strong>Device:</strong> Implantable Pacemaker</p>
  <p><strong>Patient:</strong> Luigi De Luca</p>
  <p><strong>Status:</strong> Active</p>
  <p><strong>Timing:</strong> 2022-03-15 to 2024-12-01</p>
  <p><strong>Reason:</strong> Complete atrioventricular block</p>
  <p><strong>Body Site:</strong> Right atrium</p>
</div>
"""


Instance: example-deviceusestatement-hip-euhdr
InstanceOf: DeviceUseStatementEuHdr
Title: "DeviceUseStatement: Total Hip Replacement Prosthesis"
Description: "A DeviceUseStatement for an implanted hip prosthesis, where the side of the body is carried by a referenced BodyStructure instead of a pre-coordinated bodySite code."

* status = #active

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* timingPeriod.start = "2023-09-04"

* device = Reference(hip-prosthesis-001)
* device.display = "Total Hip Replacement Prosthesis"

* bodySite = $sct#24136001 "Hip joint structure (body structure)"
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


Instance: bodystructure-left-hip
InstanceOf: BodyStructureEuCore
Title: "BodyStructure: Left Hip Joint"
Description: "The implantation site of the hip prosthesis, expressed post-coordinated: a laterality-free structure code plus a separate laterality."

* patient = Reference(patient-swart)
* extension[includedStructure].extension[structure].valueCodeableConcept = $sct#24136001 "Hip joint structure (body structure)"
* extension[includedStructure].extension[laterality].valueCodeableConcept = $sct#7771000 "Left (qualifier value)"


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


Instance: pacemaker-001
InstanceOf: DeviceEuHdr
Title: "Device: Implantable Pacemaker"
Description: "A sample Device resource for an implantable pacemaker, referenced in a DeviceUseStatement."


* identifier.system = "https://hl7europe.org/example-identifier"
* identifier.value = "pacemaker-001"

* udiCarrier.deviceIdentifier = "12345678901234"
* udiCarrier.carrierHRF = "(01)12345678901234"

* status = #active

* type = $sct#706004007 "Implantable cardiac pacemaker"
* type.text = "Implantable Pacemaker"

* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"

* manufacturer = "MedDevice Inc."
* lotNumber = "LOTPM1234"
* serialNumber = "SN987654321"
* modelNumber = "MDX-5000"
* expirationDate = "2028-06-30"

