Instance: objectiveFindings2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/objectiveFindings2FHIR-eu-hdr"
* name = "ObjectiveFindings2FHIREuHdr"
* title = "eHN Objective Findings Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Objective Findings Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/ObjectiveFindings"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #ObjectiveFindings.anthropometricObservations
* group[=].element[=].display = "A.2.8.1.3 - Anthropometric observations"
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Check if this is part of the Vital Signs or not"
* group[=].element[+].code = #ObjectiveFindings.vitalSigns
* group[=].element[=].display = "A.2.8.1.4 - Vital signs"
* group[=].element[=].target.code = #Composition.section:sectionVitalSigns
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #ObjectiveFindings.physicalExamination
* group[=].element[=].display = "A.2.8.1.5 - Physical examination"
* group[=].element[=].target.code = #Composition.section:sectionPhysicalExamination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #ObjectiveFindings.physicalExamination.description
* group[=].element[=].display = "A.2.8.1.5.1 - Observation Note"
* group[=].element[=].target.code = #Composition.section:sectionPhysicalExamination.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/ObjectiveFindings"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Observation"
* group[=].element[+].code = #ObjectiveFindings.date
* group[=].element[=].display = "A.2.8.1.1 - Date"
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/ObjectiveFindings"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* group[=].element[+].code = #ObjectiveFindings.anthropometricObservations.description
* group[=].element[=].display = "A.2.8.1.3.1 - Result description"
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "check if a more specialized profile is needed"
* group[=].element[+].code = #ObjectiveFindings.anthropometricObservations.details
* group[=].element[=].display = "A.2.8.1.3.2 - Observation details"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "check if a more specialized profile is needed"
* group[=].element[+].code = #ObjectiveFindings.anthropometricObservations.result
* group[=].element[=].display = "A.2.8.1.3.3 - Observation result"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "check if a more specialized profile is needed"
* group[=].element[+].code = #ObjectiveFindings.vitalSigns.description
* group[=].element[=].display = "A.2.8.1.4.1 - Result description"
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "check if a more specialized profile is needed"
* group[=].element[+].code = #ObjectiveFindings.vitalSigns.details
* group[=].element[=].display = "A.2.8.1.4.2 - Observation details"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "check if a more specialized profile is needed"
* group[=].element[+].code = #ObjectiveFindings.vitalSigns.result
* group[=].element[=].display = "A.2.8.1.4.3 - Observation result"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "check if a more specialized profile is needed"
