Instance: HeaderMeta2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/HeaderMeta2FHIR-eu-hdr"
* name = "HeaderMeta2FHIREuHdr"
* title = "eHN HDR header metadata to this guide Map"
* status = #draft
* experimental = true
* description = """eHN eHN HDR header metadata Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalDischargeReport"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/bundle-eu-hdr"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.type					
* group[=].element[=].display = "A.1.8.2 - Document type [Mandatory]"
* group[=].element[=].target.code = #Composition.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.status					
* group[=].element[=].display = "A.1.8.3 - Document status [Mandatory]"
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As idenrtifier of this particular instance"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.dateTime					
* group[=].element[=].display = "A.1.8.4 - Report date and time [Mandatory]"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[=].target.comment = "Date time of this specific document Bundle"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.title					
* group[=].element[=].display = "A.1.8.5 - Document title [Mandatory]"
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.custodian					
* group[=].element[=].display = "A.1.8.6 - Report custodian [Optional]"
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "the Signature datatype requires to record Who signed and and the type of signature "
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 - Confidentiality [Mandatory]"
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.language					
* group[=].element[=].display = "A.1.8.8 - Language [Required]"
* group[=].element[=].target.code = #Composition.language�					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.version					
* group[=].element[=].display = "A.1.8.9 - Version [Required]"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature					
* group[=].element[=].display = "A.1.9 - Digital signatures [Required]"
* group[=].element[=].target.code = #Bundle					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.signature					
* group[=].element[=].display = "A.1.9.1 - Digital signature [Required]"
* group[=].element[=].target.code = #Bundle.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.timeStamp					
* group[=].element[=].display = "A.1.9.2 - Time stamp [Required]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata					
* group[=].element[=].display = "A.1.8 - Document metadata [Mandatory]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.identifier					
* group[=].element[=].display = "A.1.8.1 - Document ID [Mandatory]"
* group[=].element[=].target.code = #Bundle.timeStamp					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.type					
* group[=].element[=].display = "A.1.8.2 - Document type [Mandatory]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.status					
* group[=].element[=].display = "A.1.8.3 - Document status [Mandatory]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.dateTime					
* group[=].element[=].display = "A.1.8.4 - Report date and time [Mandatory]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.title					
* group[=].element[=].display = "A.1.8.5 - Document title [Mandatory]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.language�					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.custodian					
* group[=].element[=].display = "A.1.8.6 - Report custodian [Optional]"
* group[=].element[=].target.code = #Bundle.entry:composition.resource.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.confidentiality					
* group[=].element[=].display = "A.1.8.7 - Confidentiality [Mandatory]"
* group[=].element[=].target.code = #Bundle.signature					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.language					
* group[=].element[=].display = "A.1.8.8 - Language [Required]"
* group[=].element[=].target.code = #Bundle.signature.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.version					
* group[=].element[=].display = "A.1.8.9 - Version [Required]"
* group[=].element[=].target.code = #Bundle.signature.when					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature					
* group[=].element[=].display = "A.1.9 - Digital signatures [Required]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.signature					
* group[=].element[=].display = "A.1.9.1 - Digital signature [Required]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #HospitalDischargeReport.header.digitalSignature.timeStamp					
* group[=].element[=].display = "A.1.9.2 - Time stamp [Required]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/HospitalDischargeReport"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata					
* group[=].element[=].display = "A.1.8 - Document metadata [Mandatory]"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if it is the identifer of the document (indipendently by its versions) and not of this particular document instance"
* group[=].element[+].code = #HospitalDischargeReport.header.documentMetadata.identifier					
* group[=].element[=].display = "A.1.8.1 - Document ID [Mandatory]"
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #inexact					
* group[=].element[=].target.comment = "dateTime is used for tracking, organizing versions and searching. Note that this is the time of authoring. When packaged in a document, Bundle.timestamp is the date of packaging."
