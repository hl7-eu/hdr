Instance: recommendations2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/recommendations2FHIR-eu-hdr"
* name = "Recommendations2FHIREuHdr"
* title = "eHN Recommendations Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Recommendations Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Recommendations"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #Recommendations.carePlan
* group[=].element[=].display = "A.2.9.1 - Care plan"
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Recommendations.medicationSummary
* group[=].element[=].display = "A.2.9.2 - Medication summary"
* group[=].element[=].target.code = #Composition.section:sectionDischargeMedications
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Recommendations.otherRecommendations
* group[=].element[=].display = "A.2.9.3 - Other recommendations"
* group[=].element[=].target.code = #Composition.section:sectionDischargeInstructions.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
