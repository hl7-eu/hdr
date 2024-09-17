Instance: ConceptMap-hdrHeader2FHIR-hdr-eu
InstanceOf: ConceptMap
Usage: #definition
* url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"
* name = "HdrHeader2FHIR"
* title = "eHN Recipient to this guide Map"
* status = #draft
* experimental = false
* description = """eHN HDR Encounter Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/HospitalDischargeReport"
* group[=].target = "http://hl7.eu/fhir/ig/xpandh/hdr/StructureDefinition/Patient-hdr-eu"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification					
* group[=].element[=].display = "A.1.1 - Identification of the patient/subject [Mandatory]"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if Organization (or Practictioner)"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.given					
* group[=].element[=].display = "A.1.1.1 - Given name [Mandatory]"
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if PractictionerRole"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.family					
* group[=].element[=].display = "A.1.1.2 - Family name/surname [Mandatory]"
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "if PractictionerRole"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.birthDate					
* group[=].element[=].display = "A.1.1.3 - Date of birth [Required]"
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "if Organization"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.identifier					
* group[=].element[=].display = "A.1.1.4 - Personal identifier [Required]"
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "if PractictionerRole"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.nationality					
* group[=].element[=].display = "A.1.1.5 - Nationality [Required]"
* group[=].element[=].target.code = #Patient.extension[					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "the path depends on the type"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.gender					
* group[=].element[=].display = "A.1.1.6 - Gender [Mandatory]"
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "the path depends on the type"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectIdentification.language					
* group[=].element[=].display = "A.1.1.7 - Language communication [Optional]"
* group[=].element[=].target.code = #Patient.communicaiton.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "To be clarified?"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact					
* group[=].element[=].display = "A.1.2 - Patient/subject related contact information [Required]"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "maybe via http://hl7.org/fhir/StructureDefinition/patient-relatedPerson extension ?"
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint					
* group[=].element[=].display = "A.1.2.1 - Patient address []"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.address					
* group[=].element[=].display = "A.1.2.1.1 - Address [Required]"
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.telecom					
* group[=].element[=].display = "A.1.2.1.2 - Telecom [Required]"
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP					
* group[=].element[=].display = "A.1.2.2 - Preferred healthcare professional (HP) [Optional]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.identifier					
* group[=].element[=].display = "A.1.2.2.1 - Identifier [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.name					
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.name					
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.role					
* group[=].element[=].display = "A.1.2.2.3 - Role of the HP [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.code					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.organization					
* group[=].element[=].display = "A.1.2.2.4 - HP Organisation [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.organization					
* group[=].element[=].display = "A.1.2.2.4 - HP Organisation [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.address					
* group[=].element[=].display = "A.1.2.2.5 - Address [Optional]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.preferredHP.telecom					
* group[=].element[=].display = "A.1.2.2.6 - Telecom [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person					
* group[=].element[=].display = "A.1.2.3 - Contact person/ legal guardian [Required]"
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.role					
* group[=].element[=].display = "A.1.2.3.1 - Role of that person [Required]"
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.relationship					
* group[=].element[=].display = "A.1.2.3.2 - Relationship level [Required]"
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.identifier					
* group[=].element[=].display = "A.1.2.3.3 - Identifier [Optional]"
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.given					
* group[=].element[=].display = "A.1.2.3.4 - Given name [Mandatory]"
* group[=].element[=].target.code = #Patient.contact.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.name					
* group[=].element[=].display = "A.1.2.3.5 - Family name/surname [Mandatory]"
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.address					
* group[=].element[=].display = "A.1.2.3.6 - Address [Optional]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.subjectContact.contactPoint.person.telecom					
* group[=].element[=].display = "A.1.2.3.7 - Telecom [Required]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
