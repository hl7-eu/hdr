Instance: hdrHeader2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/hdrHeader2FHIR-eu-hdr"
* name = "Header2FHIREuHdr"
* title = "eHN Header Model to this guide Map (TO BE COMPLETED)"
* status = #draft
* experimental = true
* description = """eHN HDR Header Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Header"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/bundle-eu-hdr"
* group[=].element[+].code = #Header.documentMetadata
* group[=].element[=].display = "A.1.8 - Document metadata"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "the Signature datatype requires to record Who signed and and the type of signature "
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.type
* group[=].element[=].display = "A.1.8.2 - Document type"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.status
* group[=].element[=].display = "A.1.8.3 - Document status"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Report date and time"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.title
* group[=].element[=].display = "A.1.8.5 - Document title"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.custodian
* group[=].element[=].display = "A.1.8.6 - Report custodian"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.confidentiality
* group[=].element[=].display = "A.1.8.7 - Confidentiality"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.language
* group[=].element[=].display = "A.1.8.8 - Language"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #Header.documentMetadata.version
* group[=].element[=].display = "A.1.8.9 - Version"
* group[=].element[=].target.code = #Bundle
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Header"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #Header.payer
* group[=].element[=].display = "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "To be disucssed if the payor is conveyed with the request or thorugh other means"
* group[=].element[+].code = #Header.payer.insuranceCode
* group[=].element[=].display = "A.1.3.1 - Health insurance code"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "with payor as Organization"
* group[=].element[+].code = #Header.payer.insuranceName
* group[=].element[=].display = "A.1.3.2 - Health insurance name"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance.payor.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be discussed"
* group[=].element[+].code = #Header.payer.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #Composition.extension:basedOn-order-or-requisition.insurance.beneficiary.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be discussed"
* group[=].element[+].code = #Header.informationRecipient
* group[=].element[=].display = "A.1.4 - Information recipient - (intended recipient or recipients of the report), if applicable"
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.informationRecipient.identifier
* group[=].element[=].display = "A.1.4.1 - Recipient identifier"
* group[=].element[=].target.code = #Composition.extension:information-recipient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.name
* group[=].element[=].display = "A.1.4.2 - Recipient name"
* group[=].element[=].target.code = #Composition.extension:information-recipient.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.organizationID
* group[=].element[=].display = "A.1.4.3 - Recipient organisation ID"
* group[=].element[=].target.code = #Composition.extension:information-recipient.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.organization
* group[=].element[=].display = "A.1.4.4 - Recipient organisation"
* group[=].element[=].target.code = #Composition.extension:information-recipient.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.informationRecipient.address
* group[=].element[=].display = "A.1.4.5 - Address"
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.informationRecipient.country
* group[=].element[=].display = "A.1.4.6 - Country"
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.informationRecipient.telecom
* group[=].element[=].display = "A.1.4.7 - Telecom"
* group[=].element[=].target.code = #Composition.extension:information-recipient					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.identifier
* group[=].element[=].display = "A.1.5.1 - Author identifier"
* group[=].element[=].target.code = #Composition.author.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.author.name
* group[=].element[=].display = "A.1.5.2 - Author name"
* group[=].element[=].target.code = #Composition.author.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If PractictionerRole"
* group[=].element[+].code = #Header.author.organizationID
* group[=].element[=].display = "A.1.5.3 - Author organisation ID"
* group[=].element[=].target.code = #Composition.author.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If Organization"
* group[=].element[+].code = #Header.author.organization
* group[=].element[=].display = "A.1.5.4 - Author organisation"
* group[=].element[=].target.code = #Composition.author.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.author.dateTime
* group[=].element[=].display = "A.1.5.5 - Date Time"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.6 - Attester (multiple attesters could be provided)"
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional'"
* group[=].element[+].code = #Header.attester.identifier
* group[=].element[=].display = "A.1.6.1 - Attester identifier"
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.name
* group[=].element[=].display = "A.1.6.2 - Attester name"
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.organizationID
* group[=].element[=].display = "A.1.6.3 - Attester organisation ID"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.organization
* group[=].element[=].display = "A.1.6.4 - Attester organisation"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.attester.dateTime
* group[=].element[=].display = "A.1.6.5 - Approval date and time"
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator
* group[=].element[=].display = "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)"
* group[=].element[=].target.code = #Composition.attester.party					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator.identifier
* group[=].element[=].display = "A.1.7.1 - Legal authenticator identifier"
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator.name
* group[=].element[=].display = "A.1.7.2 - Legal authenticator name"
* group[=].element[=].target.code = #Composition.attester.party.practitioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND attester.party is of type PractictionerRole"
* group[=].element[+].code = #Header.legalAuthenticator.organizationID
* group[=].element[=].display = "A.1.7.3 - Legal authenticator organisation ID"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #Header.legalAuthenticator.organization
* group[=].element[=].display = "A.1.7.4 - Legal authenticator organisation"
* group[=].element[=].target.code = #Composition.attester.party.organization.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.legalAuthenticator.dateTime
* group[=].element[=].display = "A.1.7.5 - Authentication date and time"
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal					
* group[=].element[+].code = #Header.documentMetadata
* group[=].element[=].display = "A.1.8 - Document metadata"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[=].target.comment = "if it is the identifer of the document (indipendently by its versions) and not of this particular document instance
dateTime is used for tracking, organizing versions and searching. Note that this is the time of authoring. When packaged in a document, Bundle.timestamp is the date of packaging."
* group[=].element[+].code = #Header.documentMetadata.type
* group[=].element[=].display = "A.1.8.2 - Document type"
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.status
* group[=].element[=].display = "A.1.8.3 - Document status"
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Report date and time"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[+].code = #Header.documentMetadata.title
* group[=].element[=].display = "A.1.8.5 - Document title"
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.custodian
* group[=].element[=].display = "A.1.8.6 - Report custodian"
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.confidentiality
* group[=].element[=].display = "A.1.8.7 - Confidentiality"
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.language
* group[=].element[=].display = "A.1.8.8 - Language"
* group[=].element[=].target.code = #Composition.language		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.version
* group[=].element[=].display = "A.1.8.9 - Version"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/Header"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/patient-eu-hdr"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Composition.subject		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
