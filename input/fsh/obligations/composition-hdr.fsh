Profile: CompositionEuHdrObligation
Parent: CompositionEuHdr
Id: composition-obl-eu-hdr
Title: "Composition: obligations"
Description: "This profile defines obligations for a Hospital Discharge Report (HDR) for the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

// Header
// * insert OblShallPopulateShallProcess no obligation on the entre reource
* identifier insert OblShallPopulateShouldDisplayShallProcess
* status insert OblShallPopulateShallDisplay
* type insert OblShallPopulateOnly
* category insert OblShallPopulateOnly
* subject insert OblShallPopulateShallDisplayProcess
* encounter insert OblShallPopulateShallProcess
* date insert OblShallPopulateShallDisplay
* author insert OblShallPopulateShallDisplay
* title insert OblShallPopulateOnly
* language insert OblShallPopulateOnly
* event.period insert OblShallPopulateOnly
* custodian insert OblShallPopulateOnly
* attester insert OblShallPopulateShallDisplay
* attester.mode insert OblShallPopulateOnly
* attester.time insert OblShallPopulateOnly
* attester.party insert OblShallPopulateShallDisplay
* extension[basedOn]
* extension[compositionVersionR5]
* extension[information-recipient]

// Presented form is part of the EHDS logical model, but the corresponding
// Composition extension is not currently enabled in CompositionEuHdr.
// * extension[presentedForm] insert OblShallPopulateShallProcess

// Body
* section insert OblShallPopulateShallProcess
* section.text insert OblShouldPopulateShallProcess

// body.alerts
* section[sectionAlert] insert OblShouldPopulateShouldProcess
  * text insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

// body.encounterInformation
// Represented by Composition.encounter plus EncounterEuHdrObligation.

// body.admissionEvaluation
* section[sectionAdmissionEvaluation] insert OblShallPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

* section[sectionPhysicalFindings] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionFunctionalStatus] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

// body.patientHistory
* section[sectionPatientHx] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

* section[sectionProblems] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionMedicalDevices] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionProceduresHx] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

// body.courseOfEncounter
* section[sectionHospitalCourse] insert OblShallPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

* section[sectionDiagnosticSummary] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionSignificantProcedures] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionImplantedDevices] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionPharmacotherapy] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

* section[sectionSignificantResults] insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

// body.dischargeDetails
* section[sectionDischargeDetails] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

// body.medicationSummary
* section[sectionDischargeMedications] insert OblShallPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * entry insert OblShallPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

// body.carePlan
* section[sectionPlanOfCare] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * entry insert OblShouldPopulateShallProcess

// body.synthesis
* section[sectionSynthesis] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess

// Sections present in CompositionEuHdr but not explicitly covered by the
// EHDSDischargeReportObligations logical model.
* section[sectionVitalSigns]
  * entry 0..

* section[sectionAllergies]
* section[sectionImmunizations]
* section[sectionAttachments]
  * entry insert OblShallPopulateShallProcess
