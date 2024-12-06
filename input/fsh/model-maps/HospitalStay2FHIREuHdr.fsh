Instance: hospitalStay2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/hospitalStay2FHIR-eu-hdr"
* name = "HospitalStay2FHIREuHdr"
* title = "eHN Hospital Stay Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Hospital Stay  Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #HospitalStay.diagnosticSummary
* group[=].element[=].display = "A.2.7.1 - Diagnostic summary"
* group[=].element[=].target.code = #Composition.section:sectionDiagnosticSummary
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Details in the Composition.section:sectionDiagnosticSummary.entry of type Condition. See dedicated group"
* group[=].element[+].code = #HospitalStay.significantProcedures
* group[=].element[=].display = "A.2.7.2 - Significant procedures"
* group[=].element[=].target.code = #Composition.section:sectionSignificantProcedures
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Details in the Composition.section:sectionSignificantProcedures.entry of type Procedure. See dedicated group"
* group[=].element[+].code = #HospitalStay.medicalDevices
* group[=].element[=].display = "A.2.7.3 - Medical devices and implants"
* group[=].element[=].target.code = #Composition.section:sectionMedicalDevices
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Details in the Composition.section:sectionMedicalDevices.entry of type DeviceUseStatement. See dedicated groups"
* group[=].element[+].code = #HospitalStay.pharmacotherapy
* group[=].element[=].display = "A.2.7.5 - Pharmacotherapy"
* group[=].element[=].target.code = #Composition.section:sectionMedications
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Details in the Composition.section:sectionMedications.entry. See dedicated groups"
* group[=].element[+].code = #HospitalStay.significantResults
* group[=].element[=].display = "A.2.7.6 - Significant Observation Results"
* group[=].element[=].target.code = #Composition.section:sectionSignificantResults
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantResults.details
* group[=].element[=].display = "A.2.7.6.4 - Observation details"
* group[=].element[=].target.code = #Composition.section:sectionSignificantResults.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.synthesis
* group[=].element[=].display = "A.2.7.7 - Synthesis"
* group[=].element[=].target.code = #Composition.section:sectionSynthesis
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.synthesis.description
* group[=].element[=].display = "A.2.7.7.1 - Problem synthesis"
* group[=].element[=].target.code = #Composition.section:sectionSynthesis
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.synthesis.reasoning
* group[=].element[=].display = "A.2.7.7.2 - Clinical reasoning"
* group[=].element[=].target.code = #Composition.section:sectionSynthesis
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/condition-eu-hdr"
* group[=].element[+].code = #HospitalStay.diagnosticSummary.problemDescription
* group[=].element[=].display = "A.2.7.1.1 - Problem description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.diagnosticSummary.problemDetails
* group[=].element[=].display = "A.2.7.1.2 - Problem details"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.diagnosticSummary.onsetDate
* group[=].element[=].display = "A.2.7.1.3 - Onset date"
* group[=].element[=].target.code = #Condition.onSetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HospitalStay.diagnosticSummary.endDate
* group[=].element[=].display = "A.2.7.1.4 - End date"
* group[=].element[=].target.code = #Condition.abatementDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HospitalStay.diagnosticSummary.category
* group[=].element[=].display = "A.2.7.1.5 - Category"
* group[=].element[=].target.code = #Composition.category:poa
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.diagnosticSummary.treatmentClass
* group[=].element[=].display = "A.2.7.1.6 - Treatment class"
* group[=].element[=].target.code = #Composition.category:treated
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.diagnosticSummary.clinicalStatus
* group[=].element[=].display = "A.2.7.1.7 - Clinical status"
* group[=].element[=].target.code = #Composition.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.diagnosticSummary.resolution
* group[=].element[=].display = "A.2.7.1.8 - Resolution circumstances"
* group[=].element[=].target.code = #Composition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "to be mapped"
* group[=].element[+].code = #HospitalStay.diagnosticSummary.severity
* group[=].element[=].display = "A.2.7.1.9 - Severity"
* group[=].element[=].target.code = #Composition.severity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.diagnosticSummary.stage
* group[=].element[=].display = "A.2.7.1.10 - Stage"
* group[=].element[=].target.code = #Composition.stage
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/device-eu-hdr"
* group[=].element[+].code = #HospitalStay.medicalDevices.description
* group[=].element[=].display = "A.2.7.3.1 - Device and implant description"
* group[=].element[=].target.code = #Device.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if referring to the description of the device"
* group[=].element[+].code = #HospitalStay.medicalDevices.identifier
* group[=].element[=].display = "A.2.7.3.2 - Device ID"
* group[=].element[=].target.code = #Device.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if generic identifier"
* group[=].element[+].code = #HospitalStay.medicalDevices.identifier
* group[=].element[=].display = "A.2.7.3.2 - Device ID"
* group[=].element[=].target.code = #Device.udiCarrier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if it is the udiCarrier"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/deviceUseStatement-eu-hdr"
* group[=].element[+].code = #HospitalStay.medicalDevices.description
* group[=].element[=].display = "A.2.7.3.1 - Device and implant description"
* group[=].element[=].target.code = #DeviceUseStatement.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if referring to the description of the usage of the device"
* group[=].element[+].code = #HospitalStay.medicalDevices.implantDate
* group[=].element[=].display = "A.2.7.3.3 - Implant date"
* group[=].element[=].target.code = #DeviceUseStatement.timing[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If the usage period is highlighted"
* group[=].element[+].code = #HospitalStay.medicalDevices.endDate
* group[=].element[=].display = "A.2.7.3.4 - End date"
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.medicalDevices.reason
* group[=].element[=].display = "A.2.7.3.5 - Reason"
* group[=].element[=].target.code = #DeviceUseStatement.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.medicalDevices.reason
* group[=].element[=].display = "A.2.7.3.5 - Reason"
* group[=].element[=].target.code = #DeviceUseStatement.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/medication-eu-hdr"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.productCode
* group[=].element[=].display = "A.2.7.5.2 - Code"
* group[=].element[=].target.code = #Medication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.intendedUse
* group[=].element[=].display = "A.2.7.5.3 - Intended use"
* group[=].element[=].target.code = #Composition.section:sectionMedications
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.productName
* group[=].element[=].display = "A.2.7.5.4 - Brand name"
* group[=].element[=].target.code = #Medication.extension:productName
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.activeIngredient
* group[=].element[=].display = "A.2.7.5.5 - Active ingredient list"
* group[=].element[=].target.code = #Medication.ingredient.item[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.strength
* group[=].element[=].display = "A.2.7.5.6 - Strength"
* group[=].element[=].target.code = #Medication.ingredient.strength
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.doseForm
* group[=].element[=].display = "A.2.7.5.7 - Pharmaceutical dose form"
* group[=].element[=].target.code = #Medication.form
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/medicationDispense-eu-hdr"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationDispense.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationDispense.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.productCode
* group[=].element[=].display = "A.2.7.5.2 - Code"
* group[=].element[=].target.code = #MedicationDispense.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/medicationRequest-eu-hdr"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationRequest.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationRequest.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.productCode
* group[=].element[=].display = "A.2.7.5.2 - Code"
* group[=].element[=].target.code = #MedicationRequest.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/procedure-eu-hdr"
* group[=].element[+].code = #HospitalStay.significantProcedures.procedureCode
* group[=].element[=].display = "A.2.7.2.1 - Procedure code"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantProcedures.description
* group[=].element[=].display = "A.2.7.2.2 - Procedure description"
* group[=].element[=].target.code = #Procedure.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantProcedures.bodySite
* group[=].element[=].display = "A.2.7.2.3 - Body site"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantProcedures.bodySite
* group[=].element[=].display = "A.2.7.2.3 - Body site"
* group[=].element[=].target.code = #Procedure.extension:bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if details about the body structure have to be provided"
* group[=].element[+].code = #HospitalStay.significantProcedures.date
* group[=].element[=].display = "A.2.7.2.4 - Procedure date"
* group[=].element[=].target.code = #Procedure.perfomedDateTime	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantProcedures.reason
* group[=].element[=].display = "A.2.7.2.5 - Procedure reason"
* group[=].element[=].target.code = #Procedure.reasonCode	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.significantProcedures.reason
* group[=].element[=].display = "A.2.7.2.5 - Procedure reason"
* group[=].element[=].target.code = #Procedure.reasonReference	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.significantProcedures.outcome
* group[=].element[=].display = "A.2.7.2.6 - Outcome"
* group[=].element[=].target.code = #Procedure.outcome	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.significantProcedures.complication
* group[=].element[=].display = "A.2.7.2.7 - Complication"
* group[=].element[=].target.code = #Procedure.complication	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantProcedures.complication
* group[=].element[=].display = "A.2.7.2.7 - Complication"
* group[=].element[=].target.code = #Procedure.complicationDetail	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #HospitalStay.significantProcedures.focalDevice
* group[=].element[=].display = "A.2.7.2.8 - Focal device"
* group[=].element[=].target.code = #Procedure.focalDevice	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.medicalDevices.implantDate
* group[=].element[=].display = "A.2.7.3.3 - Implant date"
* group[=].element[=].target.code = #Procedure.perfomed[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if the implantation procedure is described"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* group[=].element[+].code = #HospitalStay.significantResults.date
* group[=].element[=].display = "A.2.7.6.1 - Date"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[=].element[+].code = #HospitalStay.significantResults.status
* group[=].element[=].display = "A.2.7.6.2 - Observation status"
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[=].element[+].code = #HospitalStay.significantResults.description
* group[=].element[=].display = "A.2.7.6.3 - Result description"
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[=].element[+].code = #HospitalStay.significantResults.details
* group[=].element[=].display = "A.2.7.6.4 - Observation details"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[=].element[+].code = #HospitalStay.significantResults.result
* group[=].element[=].display = "A.2.7.6.5 - Observation result"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[=].element[+].code = #HospitalStay.significantResults.result
* group[=].element[=].display = "A.2.7.6.5 - Observation result"
* group[=].element[=].target.code = #Observation.component.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[=].element[+].code = #HospitalStay.significantResults.reporter
* group[=].element[=].display = "A.2.7.6.7 - Reporter"
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Similar Mapping for other Observation profiles"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Dosage"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.dosageRegimen
* group[=].element[=].display = "A.2.7.5.8 - Dosage Regimen"
* group[=].element[=].target.code = #Dosage
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "MedicationDispense.dosageInstruction or MedicationRequest.dosageInstruction or MedicationStatement.dosage"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.route
* group[=].element[=].display = "A.2.7.5.9 - Route of administration"
* group[=].element[=].target.code = #Dosage.route
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.period
* group[=].element[=].display = "A.2.7.5.10 - Period of treatment"
* group[=].element[=].target.code = #Dosage.timing.repeat.duration
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationAdministration.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationAdministration.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.productCode
* group[=].element[=].display = "A.2.7.5.2 - Code"
* group[=].element[=].target.code = #MedicationAdministration.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.dosageRegimen
* group[=].element[=].display = "A.2.7.5.8 - Dosage Regimen"
* group[=].element[=].target.code = #MedicationAdministration
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "several elements used"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.route
* group[=].element[=].display = "A.2.7.5.9 - Route of administration"
* group[=].element[=].target.code = #MedicationAdministration.dosage.route
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.period
* group[=].element[=].display = "A.2.7.5.10 - Period of treatment"
* group[=].element[=].target.code = #MedicationAdministration.occurencePeriod
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalStay"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/MedicationStatement"
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationStatement.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.reason
* group[=].element[=].display = "A.2.7.5.1 - Medication reason"
* group[=].element[=].target.code = #MedicationStatement.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.productCode
* group[=].element[=].display = "A.2.7.5.2 - Code"
* group[=].element[=].target.code = #MedicationStatement.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HospitalStay.pharmacotherapy.period
* group[=].element[=].display = "A.2.7.5.10 - Period of treatment"
* group[=].element[=].target.code = #MedicationStatement.effectivePeriod
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
