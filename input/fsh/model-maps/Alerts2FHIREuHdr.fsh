Instance: alerts2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/alerts2FHIR-eu-hdr"
* name = "Alerts2FHIREuHdr"
* title = "eHN Alerts Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Alerts Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Alerts2FHIREuHdr"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/allergyIntolerance-eu-hdr"
* group[=].element[+].code = #Alerts.allergy
* group[=].element[=].display = "A.2.2.1 - Allergy and Intolerance"
* group[=].element[=].target.code = #AllergyIntolerance
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.description
* group[=].element[=].display = "A.2.2.1.1 - Allergy description"
* group[=].element[=].target.code = #AllergyIntolerance.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.typeOfPropensity
* group[=].element[=].display = "A.2.2.1.2 - Type of propensity"
* group[=].element[=].target.code = #AllergyIntolerance.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.manifestation
* group[=].element[=].display = "A.2.2.1.3 - Allergy manifestation"
* group[=].element[=].target.code = #AllergyIntolerance.reaction
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Alerts.allergy.manifestation
* group[=].element[=].display = "A.2.2.1.3 - Allergy manifestation"
* group[=].element[=].target.code = #AllergyIntolerance.reaction.manifestation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Alerts.allergy.severity
* group[=].element[=].display = "A.2.2.1.4 - Severity"
* group[=].element[=].target.code = #AllergyIntolerance.reaction.severity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.criticality
* group[=].element[=].display = "A.2.2.1.5 - Criticality"
* group[=].element[=].target.code = #AllergyIntolerance.criticality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.onsetDate
* group[=].element[=].display = "A.2.2.1.6 - Onset date"
* group[=].element[=].target.code = #AllergyIntolerance.onsetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.endDate
* group[=].element[=].display = "A.2.2.1.7 - End date"
* group[=].element[=].target.code = #AllergyIntolerance.extension:abatement-datetime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.status
* group[=].element[=].display = "A.2.2.1.8 - Status"
* group[=].element[=].target.code = #AllergyIntolerance.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.certainty
* group[=].element[=].display = "A.2.2.1.9 - Certainty"
* group[=].element[=].target.code = #AllergyIntolerance.verificationStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.allergy.agent
* group[=].element[=].display = "A.2.2.1.10 - Agent or Allergen"
* group[=].element[=].target.code = #AllergyIntolerance.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Alerts.medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Flag.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Alerts.medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Flag.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Alerts2FHIREuHdr"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #Alerts.allergy
* group[=].element[=].display = "A.2.2.1 - Allergy and Intolerance"
* group[=].element[=].target.code = #Composition.section:sectionAllergies
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Alerts.medicalAlerts
* group[=].element[=].display = "A.2.2.2 - Medical alerts (relevant for the respective hospital stay)"
* group[=].element[=].target.code = #Composition.section:sectionAlerts
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Alerts.medicalAlerts.description
* group[=].element[=].display = "A.2.2.2.1 - Healthcare alert description"
* group[=].element[=].target.code = #Composition.section:sectionAlerts.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
