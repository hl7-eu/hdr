//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationDispenseEuHdr
Parent:   MedicationDispense
Id:       medicationDispense-eu-hdr
Title:    "MedicationDispense (HDR)"
Description: "This profile constrains the MedicationDispense resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule (2, trial-use)

* medication[x] only CodeableConcept or Reference(MedicationEuCore)

// * medicationReference only Reference(MedicationEuCore)


* identifier 
  * ^short = "Dispensation/dispensed item ID"
  * ^comment = "It is the dispensation ID if the prescription includes only one prescribed item"
* status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )

* performer.actor 1..1

* authorizingPrescription only Reference(MedicationRequestEuCore)
* quantity 1..1 // MS // dispensedQuantity 1
* whenHandedOver 1..1 // MS // timeOfDispensation 1


