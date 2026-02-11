Instance: functionalStatus2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/functionalStatus2FHIR-eu-hdr"
* name = "FunctionalStatus2FHIREuHdr"
* title = "eHN Functional Status Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Functional Status Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/FunctionalStatus"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #FunctionalStatus.description
* group[=].element[=].display = "A.2.8.2.1 - Description"
* group[=].element[=].target.code = #Composition.section:sectionFunctionalStatus.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/FunctionalStatus"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/ClinicalImpression"
* group[=].element[+].code = #FunctionalStatus.assessmentType
* group[=].element[=].display = "A.2.8.2.3 - Functional assessment description"
* group[=].element[=].target.code = #ClinicalImpression.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #FunctionalStatus.assessmentDate
* group[=].element[=].display = "A.2.8.2.4 - Functional assessment date"
* group[=].element[=].target.code = #ClinicalImpression.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #FunctionalStatus.assessmentResult
* group[=].element[=].display = "A.2.8.2.5 - Functional assessment result"
* group[=].element[=].target.code = #ClinicalImpression.finding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/FunctionalStatus"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Condition"
* group[=].element[+].code = #FunctionalStatus.description
* group[=].element[=].display = "A.2.8.2.1 - Description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #FunctionalStatus.onsetDate
* group[=].element[=].display = "A.2.8.2.2 - Onset Date"
* group[=].element[=].target.code = #Condition.onsetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
