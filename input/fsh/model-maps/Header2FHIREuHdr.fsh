Instance: hdrHeader2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/hdrHeader2FHIR-eu-hdr"
* name = "Header2FHIREuHdr"
* title = "eHN Recipient to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Encounter Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Header"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/bundle-eu-hdr"
* group[=].element[+].code = #Header.digitalSignature					
* group[=].element[=].display = "A.1.9 - Digital signatures [Required]"
* group[=].element[=].target.code = #Bundle					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "As idenrtifier of this particular instance"
* group[=].element[+].code = #Header.digitalSignature.signature					
* group[=].element[=].display = "A.1.9.1 - Digital signature [Required]"
* group[=].element[=].target.code = #Bundle.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "Date time of this specific document Bundle"
* group[=].element[+].code = #Header.digitalSignature.timeStamp					
* group[=].element[=].display = "A.1.9.2 - Time stamp [Required]"
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "As business version, not as resource version"
* group[=].element[+].code = #Header.documentMetadata					
* group[=].element[=].display = "A.1.8 - Document metadata [Mandatory]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "the Signature datatype requires to record Who signed and and the type of signature "
* group[=].element[+].code = #Header.documentMetadata.identifier					
* group[=].element[=].display = "A.1.8.1 - Document ID [Mandatory]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.type					
* group[=].element[=].display = "A.1.8.2 - Document type [Mandatory]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.status					
* group[=].element[=].display = "A.1.8.3 - Document status [Mandatory]"
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.dateTime					
* group[=].element[=].display = "A.1.8.4 - Report date and time [Mandatory]"
* group[=].element[=].target.code = #Bundle.timeStamp					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.title					
* group[=].element[=].display = "A.1.8.5 - Document title [Mandatory]"
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.digitalSignature					
* group[=].element[=].display = "A.1.9 - Digital signatures [Required]"
* group[=].element[=].target.code = #Bundle.signature					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.digitalSignature.signature					
* group[=].element[=].display = "A.1.9.1 - Digital signature [Required]"
* group[=].element[=].target.code = #Bundle.signature.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.digitalSignature.timeStamp					
* group[=].element[=].display = "A.1.9.2 - Time stamp [Required]"
* group[=].element[=].target.code = #Bundle.signature.when					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Header"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #Header.payer					
* group[=].element[=].display = "A.1.3 - Health insurance and payment information [Required]"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be disucssed if the payor is conveyed with the request or thorugh other means"
* group[=].element[+].code = #Header.payer.insuranceCode					
* group[=].element[=].display = "A.1.3.1 - Health insurance code [Mandatory]"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "with payor as Organization"
* group[=].element[+].code = #Header.payer.insuranceName					
* group[=].element[=].display = "A.1.3.2 - Health insurance name [Required]"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance.payor.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be discussed"
* group[=].element[+].code = #Header.payer.insuranceNumber					
* group[=].element[=].display = "A.1.3.3 - Health insurance number [Mandatory]"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance.beneficiary.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be discussed"
* group[=].element[+].code = #Header.informationRecipient					
* group[=].element[=].display = "A.1.4 - Information recipient [Required]"
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.informationRecipient.identifier					
* group[=].element[=].display = "A.1.4.1 - Recipient identifier [Required]"
* group[=].element[=].target.code = #Composition.extension:information-recipient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.name					
* group[=].element[=].display = "A.1.4.2 - Recipient name [Required]"
* group[=].element[=].target.code = #Composition.extension:information-recipient.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.organizationID					
* group[=].element[=].display = "A.1.4.3 - Recipient organization ID [Required]"
* group[=].element[=].target.code = #Composition.extension:information-recipient.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.organization					
* group[=].element[=].display = "A.1.4.4 - Recipient organization [Required]"
* group[=].element[=].target.code = #Composition.extension:information-recipient.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.author					
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was authored) [Mandatory]"
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.identifier					
* group[=].element[=].display = "A.1.5.1 - Author identifier [Mandatory]"
* group[=].element[=].target.code = #Composition.author.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.name					
* group[=].element[=].display = "A.1.5.2 - Author name [Mandatory]"
* group[=].element[=].target.code = #Composition.author.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.author.organizationID					
* group[=].element[=].display = "A.1.5.3 - Author organization ID [Required]"
* group[=].element[=].target.code = #Composition.author.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If Organization"
* group[=].element[+].code = #Header.author.organization					
* group[=].element[=].display = "A.1.5.4 - Author organization [Mandatory]"
* group[=].element[=].target.code = #Composition.author.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.author.dateTime					
* group[=].element[=].display = "A.1.5.5 - DateTime [Mandatory]"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.attester					
* group[=].element[=].display = "A.1.6 - Attester [Required]"
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional'"
* group[=].element[+].code = #Header.attester.identifier					
* group[=].element[=].display = "A.1.6.1 - Attester identifier [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.name					
* group[=].element[=].display = "A.1.6.2 - Attester name [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.organizationID					
* group[=].element[=].display = "A.1.6.3 - Attester organization ID [Required]"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.organization					
* group[=].element[=].display = "A.1.6.4 - Attester organization [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.dateTime					
* group[=].element[=].display = "A.1.6.5 - Approval date and time [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator					
* group[=].element[=].display = "A.1.7 - Legal authenticator [Required]"
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator.identifier					
* group[=].element[=].display = "A.1.7.1 - Legal authenticator identifier [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator.name					
* group[=].element[=].display = "A.1.7.2 - Legal authenticator name [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator.organizationID					
* group[=].element[=].display = " - Legal authenticator organization�ID [Required]"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.legalAuthenticator.organization					
* group[=].element[=].display = "A.1.7.3 - Legal authenticator organization [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.legalAuthenticator.dateTime					
* group[=].element[=].display = "A.1.7.4 - Authentication date and time [Mandatory]"
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.documentMetadata					
* group[=].element[=].display = "A.1.8 - Document metadata [Mandatory]"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.identifier					
* group[=].element[=].display = "A.1.8.1 - Document ID [Mandatory]"
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[=].target.comment = "if it is the identifer of the document (indipendently by its versions) and not of this particular document instance
dateTime is used for tracking, organizing versions and searching. Note that this is the time of authoring. When packaged in a document, Bundle.timestamp is the date of packaging."
* group[=].element[+].code = #Header.documentMetadata.type					
* group[=].element[=].display = "A.1.8.2 - Document type [Mandatory]"
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.status					
* group[=].element[=].display = "A.1.8.3 - Document status [Mandatory]"
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.dateTime					
* group[=].element[=].display = "A.1.8.4 - Report date and time [Mandatory]"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[+].code = #Header.documentMetadata.title					
* group[=].element[=].display = "A.1.8.5 - Document title [Mandatory]"
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.custodian					
* group[=].element[=].display = "A.1.8.6 - Report custodian [Optional]"
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 - Confidentiality [Mandatory]"
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.language					
* group[=].element[=].display = "A.1.8.8 - Language [Required]"
* group[=].element[=].target.code = #Composition.language�					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.version					
* group[=].element[=].display = "A.1.8.9 - Version [Required]"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"
* group[=].element[+].code = #Header.documentMetadata.custodian					
* group[=].element[=].display = "A.1.8.6 - Report custodian [Optional]"
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 - Confidentiality [Mandatory]"
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.language					
* group[=].element[=].display = "A.1.8.8 - Language [Required]"
* group[=].element[=].target.code = #Composition.language				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.version					
* group[=].element[=].display = "A.1.8.9 - Version [Required]"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Header"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/patient-eu-hdr"
* group[=].element[+].code = #Header.subjectIdentification					
* group[=].element[=].display = "A.1.1 - Identification of the patient/subject [Mandatory]"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectIdentification.given					
* group[=].element[=].display = "A.1.1.1 - Given name [Mandatory]"
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectIdentification.family					
* group[=].element[=].display = "A.1.1.2 - Family name/surname [Mandatory]"
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectIdentification.birthDate					
* group[=].element[=].display = "A.1.1.3 - Date of birth [Required]"
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectIdentification.identifier					
* group[=].element[=].display = "A.1.1.4 - Personal identifier [Required]"
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectIdentification.nationality					
* group[=].element[=].display = "A.1.1.5 - Nationality [Required]"
* group[=].element[=].target.code = #Patient.extension[					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectIdentification.gender					
* group[=].element[=].display = "A.1.1.6 - Gender [Mandatory]"
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectIdentification.language					
* group[=].element[=].display = "A.1.1.7 - Language communication [Optional]"
* group[=].element[=].target.code = #Patient.communicaiton.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectContact					
* group[=].element[=].display = "A.1.2 - Patient/subject related contact information [Required]"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint					
* group[=].element[=].display = "A.1.2.1 - Patient address []"
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint.address					
* group[=].element[=].display = "A.1.2.1.1 - Address [Required]"
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.telecom					
* group[=].element[=].display = "A.1.2.1.2 - Telecom [Required]"
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP					
* group[=].element[=].display = "A.1.2.2 - Preferred healthcare professional (HP) [Optional]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.identifier					
* group[=].element[=].display = "A.1.2.2.1 - Identifier [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.name					
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.name					
* group[=].element[=].display = "A.1.2.2.2 - Name of the HP [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.role					
* group[=].element[=].display = "A.1.2.2.3 - Role of the HP [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.code					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.organization					
* group[=].element[=].display = "A.1.2.2.4 - HP Organisation [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.organization					
* group[=].element[=].display = "A.1.2.2.4 - HP Organisation [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.address					
* group[=].element[=].display = "A.1.2.2.5 - Address [Optional]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint.preferredHP.telecom					
* group[=].element[=].display = "A.1.2.2.6 - Telecom [Required]"
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person					
* group[=].element[=].display = "A.1.2.3 - Contact person/ legal guardian [Required]"
* group[=].element[=].target.code = #Patient.contact					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.role					
* group[=].element[=].display = "A.1.2.3.1 - Role of that person [Required]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.relationship					
* group[=].element[=].display = "A.1.2.3.2 - Relationship level [Required]"
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.identifier					
* group[=].element[=].display = "A.1.2.3.3 - Identifier [Optional]"
* group[=].element[=].target.code = #Patient.contact.extension:relatedPerson.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "TBD If needed"
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.given					
* group[=].element[=].display = "A.1.2.3.4 - Given name [Mandatory]"
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.name					
* group[=].element[=].display = "A.1.2.3.5 - Family name/surname [Mandatory]"
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.address					
* group[=].element[=].display = "A.1.2.3.6 - Address [Optional]"
* group[=].element[=].target.code = #Patient.contact.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.subjectContact.contactPoint.person.telecom					
* group[=].element[=].display = "A.1.2.3.7 - Telecom [Required]"
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
