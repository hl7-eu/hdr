Instance: subject2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/subject2FHIR-eu-hdr"
* name = "Subject2FHIREuHdr"
* title = "eHN Subject Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Subject Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/patient-eu-hdr"
* group[=].element[+].code = #subjectIdentification
* group[=].element[=].display = "A.1.1 - Identification of the patient/subject"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectIdentification.given
* group[=].element[=].display = "A.1.1.1 - Given name"
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.family
* group[=].element[=].display = "A.1.1.2 - Family name/surname"
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.birthDate
* group[=].element[=].display = "A.1.1.3 - Date of birth"
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.identifier
* group[=].element[=].display = "A.1.1.4 - National healthcare patient ID"
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.nationality
* group[=].element[=].display = "A.1.1.5 - Nationality"
* group[=].element[=].target.code = #Patient.extension:nationality.valueCodeableConcept		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* group[=].element[+].code = #subjectIdentification.gender
* group[=].element[=].display = "A.1.1.6 - Gender"
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectIdentification.countryOfAffiliation
* group[=].element[=].display = "A.1.1.7 - Country of affiliation"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "to be checked"
* group[=].element[+].code = #subjectContact
* group[=].element[=].display = "A.1.2 - Patient/subject related contact information"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.personalContact
* group[=].element[=].display = "A.1.2.1 - Patient address"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.personalContact.address
* group[=].element[=].display = "A.1.2.1.1 - Address"
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.personalContact.telecom
* group[=].element[=].display = "A.1.2.1.2 - Telecom"
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP
* group[=].element[=].display = "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson
* group[=].element[=].display = "A.1.2.3 - Contact person/ legal guardian (multiple contacts could be provided)"
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.contactPerson.role
* group[=].element[=].display = "A.1.2.3.1 - Role of that person"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #subjectContact.contactPerson.relationship
* group[=].element[=].display = "A.1.2.3.2 - Relationship level"
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #subjectContact.contactPerson.given
* group[=].element[=].display = "A.1.2.3.4 - Given name"
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectContact.contactPerson.family
* group[=].element[=].display = "A.1.2.3.5 - Family name/surname"
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #subjectContact.contactPerson.address
* group[=].element[=].display = "A.1.2.3.6 - Address"
* group[=].element[=].target.code = #Patient.contact.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.telecom
* group[=].element[=].display = "A.1.2.3.7 - Telecom"
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.contactPerson.organization
* group[=].element[=].display = "A.1.2.3.8 - Contact person organisation"
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/practitioner-eu-hdr"
* group[=].element[+].code = #subjectContact.preferredHP
* group[=].element[=].display = "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."
* group[=].element[=].target.code = #Practictioner
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.identifier
* group[=].element[=].display = "A.1.2.2.1 - Identifier of the HP"
* group[=].element[=].target.code = #Practictioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.name
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP"
* group[=].element[=].target.code = #Practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.address
* group[=].element[=].display = "A.1.2.2.5 - Address"
* group[=].element[=].target.code = #Practictioner.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #nan
* group[=].element[+].code = #subjectContact.preferredHP.telecom
* group[=].element[=].display = "A.1.2.2.6 - Telecom"
* group[=].element[=].target.code = #Practictioner.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #nan
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Subject"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/practitionerRole-eu-hdr"
* group[=].element[+].code = #subjectContact.preferredHP
* group[=].element[=].display = "A.1.2.2 - Preferred health professional (HP) - This section can be repeated and linked to any specific information in the document, for example a link between a rare disease problem and the rare disease specialist responsible for the care of the individual patient (this section)."
* group[=].element[=].target.code = #PractictionerRole
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.identifier
* group[=].element[=].display = "A.1.2.2.1 - Identifier of the HP"
* group[=].element[=].target.code = #PractictionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.name
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP"
* group[=].element[=].target.code = #PractictionerRole.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.role
* group[=].element[=].display = "A.1.2.2.3 - Role of the HP"
* group[=].element[=].target.code = #PractictionerRole.code					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.organization
* group[=].element[=].display = "A.1.2.2.4 - HP Organisation"
* group[=].element[=].target.code = #PractictionerRole.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #subjectContact.preferredHP.address
* group[=].element[=].display = "A.1.2.2.5 - Address"
* group[=].element[=].target.code = #PractictionerRole.address
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "preferred"
* group[=].element[+].code = #subjectContact.preferredHP.telecom
* group[=].element[=].display = "A.1.2.2.6 - Telecom"
* group[=].element[=].target.code = #PractictionerRole.telecom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "preferred"
