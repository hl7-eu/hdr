Profile: DeviceUseStatementEuHdrObligation
Parent: DeviceUseStatementEuHdr
// Parent: DeviceUvIps
Id: deviceUseStatement-obl-eu-hdr
Title: "DeviceUseStatement: obligations"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

* insert SetFmmAndStatusRule ( 0, informative)
* text insert OblShallPopulateShallProcess
* subject  insert OblShallPopulateShallProcess
* timing[x]  insert OblShallPopulateShallProcess
* reasonCode  insert OblShallPopulateShouldDisplayShallProcess
* reasonReference 
* device  insert OblShallPopulateShallDisplayProcess
* bodySite  insert OblShallPopulateShouldDisplayShallProcess
