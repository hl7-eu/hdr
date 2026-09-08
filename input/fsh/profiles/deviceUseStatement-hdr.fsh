Profile: DeviceUseStatementEuHdr
Parent: DeviceUseStatement
Id: deviceUseStatement-eu-hdr
Title: "DeviceUseStatement (HDR)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."


* identifier ^requirements = "EHDSDeviceUse.header.identifier"
* text ^short = "Device usage description"
* source only Reference( PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or RelatedPerson )
* source ^requirements = "EHDSDeviceUse.header.author[x], EHDSDeviceUse.header.source"
* recordedOn ^requirements = "EHDSDeviceUse.header.date"
* language ^requirements = "EHDSDeviceUse.header.language"
* subject only Reference(PatientEuCore)
* timing[x] ^requirements = "EHDSDeviceUse.periodOfUse"
* timingPeriod ^requirements = "EHDSDeviceUse.periodOfUse"
* reasonCode ^requirements = "EHDSDeviceUse.reason[x]"
* reasonReference ^requirements = "EHDSDeviceUse.reason[x]"
* device only Reference(DeviceEuHdr)
* bodySite from SNOMEDCTBodyStructures (preferred)
* bodySite ^requirements = "EHDSDeviceUse.bodySite"
// The R5 backport is used instead of http://hl7.org/fhir/StructureDefinition/bodySite, whose
// context of use does not cover DeviceUseStatement.bodySite. In R5 the same content is the
// native DeviceUsage.bodySite CodeableReference(BodyStructure), so nothing has to migrate.
* bodySite.extension contains $deviceUsage-bodySite-r5 named bodySite 0..1
* bodySite.extension[bodySite] ^short = "Body site, when laterality or qualifiers cannot be pre-coordinated in bodySite"
* bodySite.extension[bodySite] ^requirements = "EHDSDeviceUse.bodySite"
* bodySite.extension[bodySite].valueReference only Reference(BodyStructureEuCore)
* status ^requirements = "EHDSDeviceUse.header.status"
* note ^requirements = "EHDSDeviceUse.note"
