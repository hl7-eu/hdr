Profile: DeviceUseStatementEuHdrObligation
Parent: DeviceUseStatementEuHdr
Id: deviceUseStatement-obl-eu-hdr
Title: "DeviceUseStatement: obligations"
Description: "This profile defines obligations for the DeviceUseStatement resource for the purpose of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* source only Reference(PatientEuObligations or PractitionerEuObligations or PractitionerRoleEuObligations or RelatedPersonEuObligations)
* subject only Reference(PatientEuObligations)
* device only Reference(DeviceEuHdrObligation)

* subject insert OblShallPopulateOnly
* status insert OblShallPopulateOnly
* timing[x] insert OblShouldPopulateOnly
* device insert OblShallPopulateOnly
* bodySite insert OblShouldPopulateOnly
* bodySite.extension[bodySite] insert OblShouldPopulateOnly
* note insert OblShouldPopulateOnly

* text
* reasonCode
* reasonReference
