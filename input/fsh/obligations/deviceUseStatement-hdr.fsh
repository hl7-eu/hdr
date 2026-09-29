Profile: DeviceUseStatementEuHdrObligation
Parent: DeviceUseStatementEuHdr
Id: deviceUseStatement-obl-eu-hdr
Title: "DeviceUseStatement: obligations"
Description: "This profile defines obligations for the DeviceUseStatement resource for the purpose of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* source only Reference(PatientEuHdrObligation or PractitionerEuHdrObligation or PractitionerRoleEuHdrObligation or RelatedPersonEuHdrObligation)
* subject only Reference(PatientEuHdrObligation)
* device only Reference(DeviceEuHdrObligation)

* subject insert OblShallPopulateOnly
* status insert OblShallPopulateOnly
* timing[x] insert OblShouldPopulateOnly
* device insert OblShallPopulateOnly
* bodySite insert OblShouldPopulateOnly
* bodySite.extension[bodySite] insert OblShouldPopulateOnly
* note insert OblShouldPopulateOnly

