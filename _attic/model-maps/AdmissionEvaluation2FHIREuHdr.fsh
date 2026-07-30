Instance: admissionEvaluation2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/admissionEvaluation2FHIR-eu-hdr"
* name = "AdmissionEvaluation2FHIREuHdr"
* title = "eHN Admission Evaluation Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Admission Evaluation Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/AdmissionEvaluation"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #AdmissionEvaluation.objectiveFindings
* group[=].element[=].display = "A.2.4.1 - Objective findings"
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Details in the Objective Findings Map"
* group[=].element[+].code = #AdmissionEvaluation.functionalStatus
* group[=].element[=].display = "A.2.4.2 - Functional status"
* group[=].element[=].target.code = #Composition.section:sectionFunctionalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Details in the Funcitonal Status Map"
