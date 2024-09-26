Instance: encounter2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/encounter2FHIR-eu-hdr"
* name = "Encounter2FHIREuHdr"
* title = "eHN Recipient to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Encounter Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/InPatientEncounter"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/encounter-eu-hdr"
* group[=].element[+].code = #Encounter.type
* group[=].element[=].display = "A.2.3.1 - Encounter type [Mandatory]"
* group[=].element[=].target.code = #Encounter.class
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "to be checked"
* group[=].element[+].code = #Encounter.note
* group[=].element[=].display = "A.2.3.2 - Encounter note [Optional]"
* group[=].element[=].target.code = #Encounter.ofType(Organization)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "to be checked"
* group[=].element[+].code = #Encounter.admission
* group[=].element[=].display = "A.2.3.3 - Admission [Mandatory]"
* group[=].element[=].target.code = #Encounter.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'ADM'"
* group[=].element[+].code = #Encounter.admission.urgency
* group[=].element[=].display = "A.2.3.3.1 - Admission urgency [Required]"
* group[=].element[=].target.code = #Encounter.period.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where participant.type is 'ADM'"
* group[=].element[+].code = #Encounter.admission.date
* group[=].element[=].display = "A.2.3.3.2 - Admission date [Mandatory]"
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'ADM' and individual of type Practictioner"
* group[=].element[+].code = #Encounter.admission.admitter
* group[=].element[=].display = "- Admitting professional Id []"
* group[=].element[=].target.code = #Encounter.participant.individual.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'ADM' and individual of type PractictionerRole"
* group[=].element[+].code = #Encounter.admission.admitter.identifier
* group[=].element[=].display = "A.2.3.3.3 - Admitting professional Id [Required]"
* group[=].element[=].target.code = #Encounter.participant.individual.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'REF'"
* group[=].element[+].code = #Encounter.admission.admitter.name
* group[=].element[=].display = "A.2.3.3.4 - Admitting professional name [Required]"
* group[=].element[=].target.code = #Encounter.participant.individual.practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'REF'"
* group[=].element[+].code = #Encounter.admission.admitter.name
* group[=].element[=].display = "A.2.3.3.4 - Admitting professional name [Required]"
* group[=].element[=].target.code = #Encounter.hospitalization.admitSource
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'REF' and individual of type Practictioner"
* group[=].element[+].code = #Encounter.admission.source
* group[=].element[=].display = "A.2.3.3.5 - Admit Source [Required]"
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "where participant.type is 'REF' and individual of type PractictionerRole"
* group[=].element[+].code = #Encounter.admission.referringHP
* group[=].element[=].display = " - Referring professional Id []"
* group[=].element[=].target.code = #Encounter.participant.individual.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "if just a code"
* group[=].element[+].code = #Encounter.admission.referringHP.identifier
* group[=].element[=].display = "A.2.3.3.6 - Referring professional Id [Required]"
* group[=].element[=].target.code = #Encounter.participant.individual.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "to be checked"
* group[=].element[+].code = #Encounter.admission.referringHP.name
* group[=].element[=].display = "A.2.3.3.7 - Referring professional name [Required]"
* group[=].element[=].target.code = #Encounter.participant.individual.practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "to be checked"
* group[=].element[+].code = #Encounter.admission.referringHP.organization
* group[=].element[=].display = "A.2.3.3.8 - Referring organization [Required]"
* group[=].element[=].target.code = #Encounter.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "of type Location"
* group[=].element[+].code = #Encounter.reason
* group[=].element[=].display = "A.2.3.4 - Admission reason [Mandatory]"
* group[=].element[=].target.code = #Encounter.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "to be checked"
* group[=].element[+].code = #Encounter.reason.code
* group[=].element[=].display = "A.2.3.4.1 - Admission reason [Required]"
* group[=].element[=].target.code = #Encounter.reasonCode.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #Encounter.reason.comment
* group[=].element[=].display = "A.2.3.4.2 - Admission reason comment [Optional]"
* group[=].element[=].target.code = #Encounter.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.reason.legalStatus
* group[=].element[=].display = "A.2.3.4.3 - Admission legal status [Required]"
* group[=].element[=].target.code = #Encounter.
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge
* group[=].element[=].display = "A.2.3.5 - Discharge [Mandatory]"
* group[=].element[=].target.code = #Encounter.period.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge.dateTime
* group[=].element[=].display = "A.2.3.5.1 - Discharge date [Mandatory]"
* group[=].element[=].target.code = #Encounter.hospitalization.dischargeDisposition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.discharge.destinationType
* group[=].element[=].display = "A.2.3.5.2 - Discharge destination type [Required]"
* group[=].element[=].target.code = #Encounter.destination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge.destinationLocation
* group[=].element[=].display = "A.2.3.5.3 - Destination location [Required]"
* group[=].element[=].target.code = #Encounter.location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.location
* group[=].element[=].display = "A.2.3.6 - Location - All locations/departments where the patient stayed within the hospital. [Required]"
* group[=].element[=].target.code = #Encounter.location.period
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.location.period
* group[=].element[=].display = "A.2.3.6.1 - Period [Mandatory]"
* group[=].element[=].target.code = #Encounter.location.location.managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.location.organization
* group[=].element[=].display = " - Organization Id []"
* group[=].element[=].target.code = #Encounter.location.location.managingOrganization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.location.organization.identifier
* group[=].element[=].display = "A.2.3.6.2 - Organization Id [Required]"
* group[=].element[=].target.code = #Encounter.location.location.managingOrganization.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.location.organization.name
* group[=].element[=].display = "A.2.3.6.3 - Organization Part Name [Mandatory]"
* group[=].element[=].target.code = #Encounter.location.location.managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.location.organization.details
* group[=].element[=].display = "A.2.3.6.4 - Organization Part Details [Required]"
* group[=].element[=].target.code = #nan
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
