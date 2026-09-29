Profile: EncounterEuHdrObligation
Parent: EncounterEuHdr
Id: encounter-obl-eu-hdr
Title:    "Encounter: obligations"
Description: "This profile defines obligations for Inpatient Encounter in HL7 FHIR for the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* insert OblShallPopulateShallProcess

* subject only Reference(PatientEuHdrObligation)
* reasonReference only Reference(ObservationEuHdrObligation or ConditionEuHdrObligation or ProcedureEuHdrObligation)
* participant.individual only Reference(PractitionerEuHdrObligation or PractitionerRoleEuHdrObligation or RelatedPersonEuHdrObligation)
* diagnosis.condition only Reference(ConditionEuHdrObligation)
* hospitalization.destination only Reference(OrganizationEuHdrObligation or LocationEuCore)
* location.location only Reference(LocationEuCore)
* serviceProvider only Reference(OrganizationEuHdrObligation)

* class insert OblShallPopulateShallProcess
* subject insert OblShallPopulateShallProcess
* period  insert OblShallPopulateShallDisplayProcess
* reasonCode  insert OblShallPopulateShallDisplayProcess

* participant[admitter]  insert OblShallPopulateShallDisplayProcess
* participant[discharger]  insert OblShallPopulateShallDisplayProcess
* participant[referrer] insert OblShallPopulateShallDisplayProcess

* diagnosis.condition insert OblShallPopulateShallDisplayProcess



