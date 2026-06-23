Profile: DeviceUseStatementEuHdrObligation
Parent: DeviceUseStatementEuHdr
Id: deviceUseStatement-obl-eu-hdr
Title: "DeviceUseStatement: obligations"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

* insert SetFmmAndStatusRule ( 0, informative)

* source only Reference(PatientEuObligations or PractitionerEuObligations or PractitionerRoleEuObligations or RelatedPersonEuObligations)
* subject only Reference(PatientEuObligations)
* device only Reference(DeviceEuHdrObligation)

* subject insert OblShallPopulateOnly
* status insert OblShallPopulateOnly
* timing[x] insert OblShouldPopulateOnly
* device insert OblShallPopulateOnly
* bodySite insert OblShouldPopulateOnly
* note insert OblShouldPopulateOnly

* text
* reasonCode
* reasonReference
