Profile: DeviceEuHdrObligation
Parent: DeviceEuHdr
Id: device-obl-eu-hdr
Title: "Device: obligations"
Description: "This profile represents the constraints applied to the Device resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

* insert SetFmmAndStatusRule ( 0, informative)

* udiCarrier insert OblShallPopulateOnly
* deviceName insert OblShouldPopulateOnly
* deviceName.name insert OblShallPopulateOnly
* deviceName.type insert OblShallPopulateOnly
* type insert OblShouldPopulateOnly
* note insert OblShouldPopulateOnly
