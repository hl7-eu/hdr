Profile: DeviceUseStatementEuHdrObligation
Parent: DeviceUseStatementEuHdr
// Parent: DeviceUvIps
Id: deviceUseStatement-obl-eu-hdr
Title: "DeviceUseStatement: obligations"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

* insert SetFmmandStatusRule ( 0, informative)
* text insert ObligationSet1
* subject  insert ObligationSet1
* timing[x]  insert ObligationSet1
* reasonCode  insert ObligationSet3
* reasonReference 
* device  insert ObligationSet2
* bodySite  insert ObligationSet3
