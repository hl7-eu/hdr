// Define an instance of the HDR Composition for MyHealth@EU
Instance: ExampleHDRComposition
InstanceOf: CompositionEuHdr
Title: "Example Hospital Discharge Report"
Description: "A Hospital Discharge Report for cross-border healthcare in the EU."
Usage: #inline
* id = "83b8f6d4-b345-4673-a127-59131ac352c9"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* subject = Reference(ExampleHDRPatient)
* date = "2024-11-12"
* author[+].display = "Dr. Patrick Dempsey"
* title = "Hospital Discharge Report - 11 November, 2024 17:20"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Narrative Hospital Discharge Report</div>"
* encounter =  Reference(ExampleHDREncounter) 

// Course of Hospitalization (Hospital stay)
* section[sectionHospitalCourse].title = "Course of hospitalization (Hospital stay)"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course Narrative"
* section[sectionHospitalCourse].text.status = #generated
* section[sectionHospitalCourse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital course Narrative</div>"
// * section[sectionHospitalCourse].entry[+] = Reference(ExampleHDREncounter)
* section[sectionHospitalCourse].section[sectionDiagnosticSummaryDesc].code = $loinc#11450-4
* section[sectionHospitalCourse].section[sectionDiagnosticSummaryDesc].title = "Diagnostic Summary Description"
* section[sectionHospitalCourse].section[sectionDiagnosticSummaryDesc].text.status = #generated
* section[sectionHospitalCourse].section[sectionDiagnosticSummaryDesc].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Diagnostic Summary Description Narrative</div>"
* section[sectionHospitalCourse].section[sectionSignificantProcedures].code = $loinc#10185-7 "Hospital discharge procedures Narrative"
* section[sectionHospitalCourse].section[sectionSignificantProcedures].title = "Significant Procedures Description"
* section[sectionHospitalCourse].section[sectionSignificantProcedures].text.status = #generated
* section[sectionHospitalCourse].section[sectionSignificantProcedures].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Significant Procedures Narrative</div>"
* section[sectionHospitalCourse].section[sectionSignificantProcedures].entry[+] = Reference(ExampleProcedure)


* section[sectionHospitalCourse].section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionHospitalCourse].section[sectionMedicalDevices].title = "Medical Devices Description"
* section[sectionHospitalCourse].section[sectionMedicalDevices].text.status = #generated
* section[sectionHospitalCourse].section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medical Devices Narrative</div>"
* section[sectionHospitalCourse].section[sectionMedicalDevices].entry[+] = Reference(ExampleDevice) 


* section[sectionHospitalCourse].section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionHospitalCourse].section[sectionMedications].title = "Medications description"
* section[sectionHospitalCourse].section[sectionMedications].text.status = #generated
* section[sectionHospitalCourse].section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medications Narrative</div>"
* section[sectionHospitalCourse].section[sectionMedications].entry[+] = Reference(ExampleMedicationStatement)

* section[sectionHospitalCourse].section[sectionSynthesis].code = $sct#424836000
* section[sectionHospitalCourse].section[sectionSynthesis].title = "Synthesis Description"
* section[sectionHospitalCourse].section[sectionSynthesis].text.status = #generated
* section[sectionHospitalCourse].section[sectionSynthesis].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Synthesis Narrative</div>"
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionProblemSynthesis].code = $sct#423016009
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionProblemSynthesis].title = "Synthesis - Problem Synthesis Description"
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionProblemSynthesis].text.status = #generated
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionProblemSynthesis].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Synthesis - Problem Synthesis Narrative</div>"
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionClinicalReasoning].title = "Synthesis - Clinical Reasoning Description"
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionClinicalReasoning].text.status = #generated
* section[sectionHospitalCourse].section[sectionSynthesis].section[sectionClinicalReasoning].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Synthesis - Clinical Reasoning Narrative</div>"

// Discharge details
* section[sectionDischargeDetails].title = "Discharge details"
* section[sectionDischargeDetails].code = $loinc#8650-4 "Hospital discharge disposition Narrative"
* section[sectionDischargeDetails].text.status = #generated
* section[sectionDischargeDetails].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Discharge Details Narrative</div>"

// Section Allergies and Intolerances
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and Intolerances section Narrative</div>"
* section[sectionAllergies].entry[+] = Reference(ExampleAllergyIntolerance)

Instance: ExampleDevice
InstanceOf: Device
Title: "Example Medical Device"
Description: "An example instance of a medical device resource."
Usage: #inline
* id = "a53bdf53-9b4b-4b9d-aaab-ac346c61ea94"
* status = #active
* type.coding[0].code = $sct#86184003 "Blood pressure cuff"
* manufacturer = "ACME Medical Devices Inc."
* deviceName[0].name = "SuperCuff 3000"
* deviceName[0].type = #manufacturerName
* modelNumber = "SC3000"
* serialNumber = "12345-67890"
* partNumber = "98765-43210"
* property[0].type.coding[0].code = http://example.org/device-properties#battery-life
* property[0].valueQuantity.value = 10
* property[0].valueQuantity.unit = "hours"
* owner = Reference(SampleOrganization)
* patient = Reference(ExampleHDRPatient)
* udiCarrier[0].deviceIdentifier = "12345678901234"
* udiCarrier[0].issuer = "http://hl7.org/fhir/NamingSystem/gs1"
* udiCarrier[0].jurisdiction = "http://hl7.org/fhir/ValueSet/iso3166-1-2"

Instance: ExampleAllergyIntolerance
InstanceOf: AllergyIntoleranceEpsEu
Title: "Example AllergyIntolerance for EU-EPS"
Description: "An example instance of AllergyIntolerance conforming to the EU-EPS profile."
Usage: #inline

* id = "5b87ea1e-01ad-4239-81ec-3a16b5c4f4ec"
* clinicalStatus = #active
* verificationStatus = #confirmed
* type = #allergy
* category[0] = #food
* criticality = #high
* code = $sct#91936005 "Peanut allergy"
* patient = Reference(ExampleHDRPatient) // Link to a Patient instance
* onsetDateTime = "2023-10-01T12:00:00+01:00"
* recordedDate = "2023-10-15T09:30:00+01:00"
* recorder = Reference(ExamplePractitionerRole) // Link to a Practitioner instance
* reaction[0].substance = $sct#227493005 "Peanut"
* reaction[0].manifestation[0] = $sct#271807003 "Skin rash"
* reaction[0].severity = #severe

Instance: ExampleProcedure
InstanceOf: $Procedure-uv-ips
Title: "Example Procedure"
Description: "An example Procedure instance conforming to the HL7 FHIR R4 specification."
Usage: #inline

* id = "5b87ea1e-01ad-4239-81ec-3a16b5c4f4ec"
* status = #completed
* code = $sct#80146002 "Appendectomy"
* subject = Reference(ExampleHDRPatient) // Reference to a Patient instance
* performedPeriod.start = "2023-11-01T10:00:00+01:00"
* performedPeriod.end = "2023-11-01T11:30:00+01:00"
* performer[0].actor = Reference(ExamplePractitionerRole) // Reference to a Practitioner instance
* recorder = Reference(ExamplePractitionerRole) // Reference to a Practitioner who recorded the procedure
* reasonCode[0] = $sct#233604007 "Acute appendicitis"
* bodySite[0] = $sct#51185008 "Appendix structure"
* outcome = $procedure-outcome#successful "Successful"

Instance: ExampleMedicationStatement
InstanceOf: $MedicationStatement-uv-ips
Title: "Example MedicationStatement"
Description: "An example instance of a MedicationStatement conforming to the HL7 FHIR R4 specification."
Usage: #inline

* id = "b46f7abd-6e20-44e7-bf9a-a0bd9685fd3e"
* status = #active
* statusReason[0] = $medication-statement-status-reason#on-hold "On hold"
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#1049624 "Atorvastatin 10 MG Oral Tablet"
* subject = Reference(ExampleHDRPatient) // Reference to a Patient instance
* effectiveDateTime = "2023-11-01T08:00:00+01:00"
* dateAsserted = "2023-11-15T12:00:00+01:00"
* informationSource = Reference(ExamplePractitionerRole) // Reference to a Practitioner instance
* reasonCode[0] = $sct#44054006 "Hypercholesterolemia"
* dosage[0].text = "Take one tablet daily in the morning."
* dosage[0].timing.repeat.frequency = 1
* dosage[0].timing.repeat.period = 1
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].route = $sct#26643006 "Oral route"

Instance: ExamplePractitioner
InstanceOf: PractitionerEuHdr
Title: "Example Practitioner"
Description: "An example of a Practitioner instance conforming to PractitionerEuHdr."
Usage: #inline

* id = "5947e818-0a8c-4f3d-b900-d933da7ed15d"
* identifier.system = "http://example.org/practitioner-ids"
* identifier.value = "123456789"
* name.family = "Doe"
* name.given = "John"
* telecom.system = #email
* telecom.value = "j.doe@example.org"
* telecom.use = #work
/* * address[0].line = "123 Example Street"
* address[0].city = "Sampletown"
* address[0].postalCode = "12345"
* address[0].country = "Exampleland" */

Instance: ExamplePractitionerRole
InstanceOf: PractitionerRoleEuHdr
Title: "Example PractitionerRole"
Description: "An example of a PractitionerRole instance conforming to PractitionerRoleEuHdr."
Usage: #inline

* id = "b06b2c2c-15dd-4e58-b27e-37326ba51407"
* identifier.system = "http://example.org/role-ids"
* identifier.value = "role-123"
* practitioner = Reference(ExamplePractitioner) // Linking the Practitioner instance
* organization = Reference(SampleOrganization) // Replace with an actual organization instance
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor "Doctor"
* specialty = http://hl7.org/fhir/specialty#cardio "Cardiology"
* telecom[0].system = #phone
* telecom[0].value = "+123456789"
* telecom[0].use = #work
// * location[0] = Reference(ExampleLocation) // Replace with an actual location instance

