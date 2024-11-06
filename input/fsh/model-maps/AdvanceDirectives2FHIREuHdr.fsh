Instance: advanceDirectives2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/advanceDirectives2FHIR-eu-hdr"
* name = "AdvanceDirectives2FHIREuHdr"
* title = "eHN Advance Directives Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Advance Directives Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/AdvanceDirectives"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #AdvanceDirectives.livingWill
* group[=].element[=].display = "A.2.1.1 - Living will"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #AdvanceDirectives.livingWill
* group[=].element[=].display = "A.2.1.1 - Living will"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.section:sectionAdvanceDirectives.entry.ofType(Consent)"
* group[=].element[+].code = #AdvanceDirectives.livingWill.document
* group[=].element[=].display = "A.2.1.1.5 - Living will document"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Composition.section:sectionAdvanceDirectives.entry.ofType(DocumentReference)"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/AdvanceDirectives"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Consent"
* group[=].element[+].code = #AdvanceDirectives.livingWill.date
* group[=].element[=].display = "A.2.1.1.1 - Date and time"
* group[=].element[=].target.code = #Consent.dateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #AdvanceDirectives.livingWill.type
* group[=].element[=].display = "A.2.1.1.2 - Type"
* group[=].element[=].target.code = #Consent.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
* group[=].element[+].code = #AdvanceDirectives.livingWill.comment
* group[=].element[=].display = "A.2.1.1.3 - Comment"
* group[=].element[=].target.code = #Consent.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "TO BE checked"
* group[=].element[+].code = #AdvanceDirectives.livingWill.conditions
* group[=].element[=].display = "A.2.1.1.4 - Related conditions"
* group[=].element[=].target.code = #Consent
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "TO BE DEFINED"
