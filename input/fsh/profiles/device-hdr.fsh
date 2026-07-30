Profile: DeviceEuHdr
Parent: Device
Id: device-eu-hdr
Title: "Device (HDR)"
Description: "This profile represents the constraints applied to the Device resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."



* identifier ^requirements = "EHDSDevice.instanceIdentifier"
* udiCarrier ^requirements = "EHDSDevice.udi"
* type from $vs-medical-devices-uv-ips (preferred)
* type ^requirements = "EHDSDevice.type"

* manufacturer ^requirements = "EHDSDevice.manufacturer"

* manufactureDate ^requirements = "EHDSDevice.manufactureDate"

* expirationDate ^requirements = "EHDSDevice.expiryDate"

* lotNumber ^requirements = "EHDSDevice.lotNumber"

* serialNumber ^requirements = "EHDSDevice.serialNumber"

* modelNumber ^requirements = "EHDSDevice.modelNumber"
* deviceName ^requirements = "EHDSDevice.name"

* deviceName.name ^requirements = "EHDSDevice.name.value"
* deviceName.type ^requirements = "EHDSDevice.name.type"

* version.value ^requirements = "EHDSDevice.version"

* note ^requirements = "EHDSDevice.note"
