Instance: hdr2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/hdr2FHIR-eu-hdr"
* name = "Hdr2FHIREuHdr"
* title = "eHN HDR Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Hospital Discharge Report Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalDischargeReport"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/bundle-eu-hdr"
* group[=].element[+].code = #HospitalDischargeReport.header
* group[=].element[=].display = "A.1 - Hospital Discharge Report header data element"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See the header model and map for details"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalDischargeReport"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #HospitalDischargeReport.body
* group[=].element[=].display = "A.2 - Hospital Discharge Report body data element"
* group[=].element[=].target.code = #Composition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See details below"
* group[=].element[+].code = #HospitalDischargeReport.body.presentedForm
* group[=].element[=].display = "A.2.0 - Hospital Discharge Report in its narrative form"
* group[=].element[=].target.code = #Composition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE DEFINED"
* group[=].element[+].code = #HospitalDischargeReport.body.advanceDirectives
* group[=].element[=].display = "A.2.1 - Advance directives"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE REVIEWED"
* group[=].element[+].code = #HospitalDischargeReport.body.alerts
* group[=].element[=].display = "A.2.2 - Alerts"
* group[=].element[=].target.code = #Composition.section:alertSection
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See the Alerts model and map for details"
* group[=].element[+].code = #HospitalDischargeReport.body.encounter
* group[=].element[=].display = "A.2.3 - Encounter"
* group[=].element[=].target.code = #Composition.encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "See the InPatientEncounter model and map for details"
* group[=].element[+].code = #HospitalDischargeReport.body.admissionEvaluation
* group[=].element[=].display = "A.2.4 - Admission evaluation"
* group[=].element[=].target.code = #Composition.section:admissionEvaluationSection
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE REVIEWED"
* group[=].element[+].code = #HospitalDischargeReport.body.patientHistory
* group[=].element[=].display = "A.2.5 - Patient history"
* group[=].element[=].target.code = #Composition.section:patientHxSection
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE REVIEWED"
* group[=].element[+].code = #HospitalDischargeReport.body.hospitalStay
* group[=].element[=].display = "A.2.6 - Course of hospitalisation (Hospital stay)"
* group[=].element[=].target.code = #Composition.section:sectionHospitalCourse
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE REVIEWED"
* group[=].element[+].code = #HospitalDischargeReport.body.dischargeDetails
* group[=].element[=].display = "A.2.7 - Discharge details"
* group[=].element[=].target.code = #Composition.section:dischargeDetails
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE REVIEWED"
* group[=].element[+].code = #HospitalDischargeReport.body.recommendations
* group[=].element[=].display = "A.2.8 - Care plan and other recommendations after discharge."
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE REVIEWED"