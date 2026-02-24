Profile: DeviceUseStatementEuHdr
Parent: DeviceUseStatement
// Parent: DeviceUvIps
Id: deviceUseStatement-eu-hdr
Title: "DeviceUseStatement (HDR)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

// This profile isaligned with the EPS profile evaluate to move to the core
// * insert ImposeProfile ( $DeviceUseStatement-uv-ips, 0 )  // Check if this is appropriate (see  support)


* identifier ^short = "Device usage identifier"
* text ^short = "Device usage description"
* source only Reference( PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or RelatedPerson )
* recordedOn ^short = "When recorded (dateTime)"
* subject only Reference(PatientEuCore)
* subject ^definition = "The patient using the device."
* subject.reference 1.. 
* timing[x] 1.. // 1.. in the IPS not in the EHDS model
* timingPeriod.start ^short = "Start of usage (dateTime)"
* timingPeriod.end ^short = "End of usage (dateTime)"
* reasonCode ^short = "Why is used (code)"
* reasonReference ^short = "Why is used (details)"
* device only Reference(DeviceEuHdr)
* bodySite from SNOMEDCTBodyStructures (preferred)
* status ^short = "Current status of the Device Usage"
* note ^short = "Additional information about the device usage"