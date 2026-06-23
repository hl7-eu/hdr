Profile: BundleEuHdrObligation
Parent: BundleEuHdr
Id: bundle-obl-eu-hdr
Title: "Bundle: obligations"
Description: """This profile defines obligations for the Hospital Discharge Report for the scope of this guide."""

* insert SetFmmAndStatusRule ( 0, informative)

* identifier insert OblShallPopulateShallProcess
* type insert OblShallPopulateShallProcess
* timestamp insert OblShallPopulateShallProcess
* entry insert OblShallPopulateShallProcess
* entry.fullUrl insert OblShallPopulateShallProcess
* entry.resource insert OblShallPopulateShallProcess

* entry[composition].resource only CompositionEuHdrObligation
* entry[patient].resource only PatientEuObligations
* entry[encounter].resource only EncounterEuHdrObligation
* entry[allergyIntolerance].resource only AllergyIntoleranceEuCoreObligation
* entry[condition].resource only ConditionEuCoreObligation
* entry[device].resource only DeviceEuHdrObligation
* entry[deviceUseStatement].resource only DeviceUseStatementEuHdrObligation
* entry[diagnosticReport].resource only DiagnosticReportEuCore
* entry[imagingStudy].resource only ImagingStudy
* entry[immunization].resource only ImmunizationEuHdrObligation
* entry[immunizationRecommendation].resource only ImmunizationRecommendation
* entry[media].resource only Media
* entry[medication].resource only MedicationEuHdrObligation
* entry[medicationRequest].resource only MedicationRequestEuCoreObligation
* entry[medicationStatement].resource only MedicationStatementEuCoreObligation
* entry[medicationAdministration].resource only MedicationAdministrationEuHdrObligation
* entry[medicationDispense].resource only MedicationDispenseEuHdrObligation
* entry[practitioner].resource only PractitionerEuObligations
* entry[practitionerRole].resource only PractitionerRoleEuObligations
* entry[procedure].resource only ProcedureEuCoreObligation
* entry[organization].resource only OrganizationEuObligations
* entry[observation].resource only ObservationEuHdrObligation
* entry[specimen].resource only $Specimen-uv-ips
* entry[flag].resource only FlagEuHdrObligation
* entry[familyMemberHistory].resource only FamilyMemberHistory
* entry[documentReference].resource only DocumentReference
* entry[location].resource only LocationEuCore
* entry[careplan].resource only CarePlanEuHdrObligation

