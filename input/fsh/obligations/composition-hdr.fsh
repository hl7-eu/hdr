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
* subject only Reference(PatientEuObligations)
* subject insert OblShallPopulateShallDisplayProcess
* encounter only Reference(EncounterEuHdrObligation)
* encounter insert OblShallPopulateShallProcess
* date insert OblShallPopulateShallDisplay
* author only Reference(PractitionerEuObligations or PractitionerRoleEuObligations or DeviceEuHdrObligation or OrganizationEuObligations)
* author insert OblShallPopulateShallDisplay
* title insert OblShallPopulateOnly
* language insert OblShallPopulateOnly
* event.period insert OblShallPopulateOnly
* custodian insert OblShallPopulateOnly
* attester insert OblShallPopulateShallDisplay
* attester.mode insert OblShallPopulateOnly
* attester.time insert OblShallPopulateOnly
* attester.party only Reference(PractitionerEuObligations or PractitionerRoleEuObligations or OrganizationEuObligations)
* attester.party insert OblShallPopulateShallDisplay
* extension[basedOn]
* extension[compositionVersionR5]
* extension[information-recipient].valueReference only Reference(PractitionerRoleEuObligations or PractitionerEuObligations or DeviceEuHdrObligation or PatientEuObligations or RelatedPersonEuObligations or OrganizationEuObligations)

// Presented form is part of the EHDS logical model, but the corresponding
// Composition extension is not currently enabled in CompositionEuHdr.
// * extension[presentedForm] insert OblShallPopulateShallProcess

// Body
* section insert OblShallPopulateShallProcess
* section.text insert OblShouldPopulateShallProcess

// body.alerts
* section[sectionAlert] insert OblShouldPopulateShouldProcess
  * text insert OblShouldPopulateShallProcess
  * entry only Reference(FlagEuHdrObligation or DocumentReference)
  * entry insert OblShouldPopulateShallProcess
  * entry[flag] only Reference(FlagEuHdrObligation)
  * entry[flag] insert OblShouldPopulateShallProcess

// body.encounterInformation
// Represented by Composition.encounter plus EncounterEuHdrObligation.

// body.admissionEvaluation
* section[sectionAdmissionEvaluation] insert OblShallPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

* section[sectionPhysicalFindings] insert OblShouldPopulateShallProcess
  * entry only Reference(ObservationEuHdrObligation or DocumentReference)
  * entry insert OblShouldPopulateShallProcess

* section[sectionFunctionalStatus] insert OblShouldPopulateShallProcess
  * entry only Reference(ConditionEuCoreObligation or ClinicalImpression or ObservationEuHdrObligation or DocumentReference or QuestionnaireResponse)
  * entry insert OblShouldPopulateShallProcess
  * entry[condition] only Reference(ConditionEuCoreObligation)
  * entry[condition] insert OblShouldPopulateShallProcess
  * entry[observation] only Reference(ObservationEuHdrObligation)
  * entry[observation] insert OblShouldPopulateShallProcess

// body.patientHistory
* section[sectionPatientHx] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

* section[sectionProblems] insert OblShouldPopulateShallProcess
  * entry only Reference(ConditionEuCoreObligation or DocumentReference)
  * entry insert OblShouldPopulateShallProcess
  * entry[problem] only Reference(ConditionEuCoreObligation)
  * entry[problem] insert OblShouldPopulateShallProcess

* section[sectionMedicalDevices] insert OblShouldPopulateShallProcess
  * entry only Reference(DeviceUseStatementEuHdrObligation or ProcedureEuCoreObligation or DocumentReference)
  * entry insert OblShouldPopulateShallProcess
  * entry[deviceStatement] only Reference(DeviceUseStatementEuHdrObligation)
  * entry[deviceStatement] insert OblShouldPopulateShallProcess

* section[sectionProceduresHx] insert OblShouldPopulateShallProcess
  * entry only Reference(ProcedureEuCoreObligation or DocumentReference)
  * entry insert OblShouldPopulateShallProcess
  * entry[procedure] only Reference(ProcedureEuCoreObligation)
  * entry[procedure] insert OblShouldPopulateShallProcess

// body.courseOfEncounter
* section[sectionHospitalCourse] insert OblShallPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

* section[sectionDiagnosticSummary] insert OblShouldPopulateShallProcess
  * entry only Reference(ConditionEuCoreObligation)
  * entry insert OblShouldPopulateShallProcess

* section[sectionSignificantProcedures] insert OblShouldPopulateShallProcess
  * entry only Reference(ProcedureEuCoreObligation)
  * entry insert OblShouldPopulateShallProcess

* section[sectionImplantedDevices] insert OblShouldPopulateShallProcess
  * entry only Reference(DeviceUseStatementEuHdrObligation or ProcedureEuCoreObligation)
  * entry insert OblShouldPopulateShallProcess

* section[sectionPharmacotherapy] insert OblShouldPopulateShallProcess
  * entry only Reference(MedicationStatementEuCoreObligation or MedicationRequestEuCoreObligation or MedicationDispenseEuHdrObligation or MedicationAdministrationEuHdrObligation)
  * entry insert OblShouldPopulateShallProcess
  * entry[medicationStatement] only Reference(MedicationStatementEuCoreObligation)
  * entry[medicationStatement] insert OblShouldPopulateShallProcess

* section[sectionSignificantResults] insert OblShouldPopulateShallProcess
  * entry only Reference(ObservationEuHdrObligation or DiagnosticReport or DocumentReference)
  * entry insert OblShouldPopulateShallProcess
  * entry[results-medicalTestResult] only Reference(ObservationEuHdrObligation)
  * entry[results-medicalTestResult] insert OblShouldPopulateShallProcess
  * entry[results-diagnosticReport] only Reference(DiagnosticReportEuCore)
  * entry[results-diagnosticReport] insert OblShouldPopulateShallProcess

// body.dischargeDetails
* section[sectionDischargeDetails] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

// body.medicationSummary
* section[sectionDischargeMedications] insert OblShallPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * entry only Reference(MedicationRequestEuCoreObligation or MedicationDispenseEuHdrObligation or MedicationStatementEuCoreObligation)
  * entry insert OblShallPopulateShallProcess
  * extension[section-note] insert OblShouldPopulateShallProcess

// body.carePlan
* section[sectionPlanOfCare] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess
  * entry only Reference(CarePlanEuHdrObligation or DocumentReference)
  * entry insert OblShouldPopulateShallProcess

// body.synthesis
* section[sectionSynthesis] insert OblShouldPopulateShallProcess
  * text insert OblShouldPopulateShallProcess

// Sections present in CompositionEuHdr but not explicitly covered by the
// EHDSDischargeReportObligations logical model.
* section[sectionVitalSigns]
  * entry 0..
  * entry only Reference(ObservationEuHdrObligation or DocumentReference or $vitalsigns)

* section[sectionAllergies]
  * entry only Reference(AllergyIntoleranceEuCoreObligation or DocumentReference)
  * entry[allergyOrIntolerance] only Reference(AllergyIntoleranceEuCoreObligation)
  * entry[allergyOrIntolerance] insert OblShouldPopulateShallProcess
* section[sectionImmunizations]
  * entry only Reference(ImmunizationEuHdrObligation or DocumentReference)
  * entry[immunization] only Reference(ImmunizationEuHdrObligation)
  * entry[immunization] insert OblShouldPopulateShallProcess
* section[sectionAttachments]
  * entry only Reference(DocumentReference or Binary)
  * entry insert OblShallPopulateShallProcess
