# EHDS Discharge Report Section Comparison

| Section in EHDSDischargeReport logical model | Section in CompositionEuHdr FHIR profile | Code used in profile |
| --- | --- | --- |
| `EHDSDischargeReport.body.alerts` | `section[sectionAlert]` - Alert Section | `$loinc#104605-1` |
| `EHDSDischargeReport.body.encounterInformation` | No dedicated active Composition section. The encounter is represented by `Composition.encounter`; an `sectionEncounters` slice exists only in commented-out FSH. | N/A |
| `EHDSDischargeReport.body.admissionEvaluation` | `section[sectionAdmissionEvaluation]` - Hospital Admission evaluation | `$loinc#67851-6` |
| `EHDSDischargeReport.body.admissionEvaluation.objectiveFindings` | `section[sectionVitalSigns]` - Vital signs; `section[sectionPhysicalFindings]` - Physical findings | `$loinc#8716-3`; `$loinc#29545-1` |
| `EHDSDischargeReport.body.admissionEvaluation.functionalStatus[x]` | `section[sectionFunctionalStatus]` - Functional status | `$loinc#47420-5` |
| `EHDSDischargeReport.body.patientHistory` | `section[sectionPatientHx]` - Hx general Reported Section | `$loinc#11329-0` |
| `EHDSDischargeReport.body.patientHistory.pastProblems` | Partial match: `section[sectionPatientHx]` narrative and/or `section[sectionProblems]` - Problem List Section | `$loinc#11329-0`; `$loinc#11450-4` |
| `EHDSDischargeReport.body.patientHistory.devicesAndImplants` | Partial match: `section[sectionPatientHx]` narrative and/or `section[sectionMedicalDevices]` - Medical devices and implants | `$loinc#11329-0`; `$loinc#57080-4` |
| `EHDSDischargeReport.body.patientHistory.procedures` | Partial match: `section[sectionPatientHx]` narrative and/or `section[sectionSignificantProcedures]` - Significant procedures | `$loinc#11329-0`; `$loinc#10185-7` |
| `EHDSDischargeReport.body.courseOfEncounter` | `section[sectionHospitalCourse]` - Hospital course | `$loinc#8648-8` |
| `EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary` | `section[sectionDiagnosticSummary]` - Problem specification in narrative form | `$loinc#11535-2` |
| `EHDSDischargeReport.body.courseOfEncounter.procedures` | `section[sectionSignificantProcedures]` - Significant procedures | `$loinc#10185-7` |
| `EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants` | `section[sectionMedicalDevices]` - Medical devices and implants | `$loinc#57080-4` |
| `EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy` | `section[sectionPharmacotherapy]` - Pharmacotherapy | `$loinc#87232-5` |
| `EHDSDischargeReport.body.courseOfEncounter.testResults[x]` | `section[sectionSignificantResults]` - Significant medical test results | `$loinc#30954-2` |
| `EHDSDischargeReport.body.synthesis` | `section[sectionSynthesis]` - Synthesis | `$loinc#67781-5` |
| `EHDSDischargeReport.body.dischargeDetails` | `section[sectionDischargeDetails]` - Discharge details | `$loinc#8650-4` |
| `EHDSDischargeReport.body.dischargeDetails.objectiveFindings` | No discharge-specific objective-findings section. These may be represented in `section[sectionDischargeDetails]` narrative or in observation-oriented sections such as `section[sectionVitalSigns]`, `section[sectionPhysicalFindings]`, or `section[sectionSignificantResults]`. | N/A for a discharge-specific section; possible related codes: `$loinc#8650-4`, `$loinc#8716-3`, `$loinc#29545-1`, `$loinc#30954-2` |
| `EHDSDischargeReport.body.dischargeDetails.functionalStatus[x]` | `section[sectionFunctionalStatus]` - Functional status. The FHIR profile does not define a discharge-specific functional-status slice. | `$loinc#47420-5` |
| `EHDSDischargeReport.body.medicationSummary` | `section[sectionDischargeMedications]` - Hospital discharge medications | `$loinc#75311-1` |
| `EHDSDischargeReport.body.carePlan` | `section[sectionPlanOfCare]` - Plan of Care Section | `$loinc#18776-5` |
| `EHDSDischargeReport.body.carePlan.carePlan` | `section[sectionPlanOfCare].entry` - references `CarePlanEuHdr` or `DocumentReference` | `$loinc#18776-5` |
| `EHDSDischargeReport.body.carePlan.otherRecommendations` | Partial match: `section[sectionPlanOfCare]` narrative and/or `section[sectionDischargeInstructions]` - Hospital Discharge Instructions | `$loinc#18776-5`; `$loinc#8653-8` |
| `EHDSDischargeReport.attachments` | `section[sectionAttachments]` - Library of attachments | `$loinc#77599-9` |
| No direct top-level section in logical model | `section[sectionAllergies]` - Allergies and Intolerances Section | `$loinc#48765-2` |
| No direct top-level section in logical model | `section[sectionProblems]` - Problem List Section. This may overlap conceptually with patient history or diagnostic summary, but it is an additional explicit FHIR section slice. | `$loinc#11450-4` |
| No direct top-level section in logical model | `section[sectionImmunizations]` - Immunizations Section. This is an additional explicit FHIR section slice. | `$loinc#11369-6` |
| No direct top-level section in logical model | `section[sectionDischargeInstructions]` - Hospital Discharge Instructions. This partly overlaps with care-plan recommendations but is represented separately in the FHIR profile. | `$loinc#8653-8` |
