Instance: encounter2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/encounter2FHIR-eu-hdr"
* name = "Encounter2FHIREuHdr"
* title = "eHN Encounter Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Encounter Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/InPatientEncounter"
* group[=].target = "http://hl7.eu/fhir/base/StructureDefinition/organization-eu"
* group[=].element[+].code = #Encounter.admission.admitter.organizationID
* group[=].element[=].display = "A.2.3.3.5 - Admitting organisation ID"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.ofType(PractitionerRole).organization and where participant.type is 'ADM'"
* group[=].element[+].code = #Encounter.admission.referringHP.organizationID
* group[=].element[=].display = "A.2.3.3.10 - Referring organisation ID"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Encounter.participant.individual.ofType(PractitionerRole).organization and where participant.type is 'REF'"
* group[=].element[+].code = #Encounter.location.organization.identifier
* group[=].element[=].display = "A.2.3.6.2 - Organisation Part ID"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.location.location.managingOrganization"
* group[=].element[+].code = #Encounter.location.organization.name
* group[=].element[=].display = "A.2.3.6.3 - Organisation Part Name"
* group[=].element[=].target.code = #Organization.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Encounter.location.location.managingOrganization"
* group[=].element[+].code = #Encounter.location.organization.details
* group[=].element[=].display = "A.2.3.6.4 - Organisation Part Details"
* group[=].element[=].target.code = #Organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Encounter.location.location.managingOrganization"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/InPatientEncounter"
* group[=].target = "http://hl7.eu/fhir/core/StructureDefinition/practitioner-eu-core"
* group[=].element[+].code = #Encounter.admission.admitter.identifier
* group[=].element[=].display = "A.2.3.3.3 - Admitting professional ID"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.ofType(Practitioner) and where participant.type is 'ADM'"
* group[=].element[+].code = #Encounter.admission.admitter.name
* group[=].element[=].display = "A.2.3.3.4 - Admitting professional name"
* group[=].element[=].target.code = #Practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.ofType(Practitioner) or
Encounter.participant.individual.ofType(PractitionerRole).practitioner"
* group[=].element[+].code = #Encounter.admission.referringHP.identifier
* group[=].element[=].display = "A.2.3.3.8 - Referring professional ID"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.ofType(Practitioner) and where participant.type is 'REF'"
* group[=].element[+].code = #Encounter.admission.referringHP.name
* group[=].element[=].display = "A.2.3.3.9 - Referring professional name"
* group[=].element[=].target.code = #Practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.participant.individual.ofType(Practitioner) or
Encounter.participant.individual.ofType(PractitionerRole).practitioner"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/InPatientEncounter"
* group[=].target = "http://hl7.eu/fhir/core/StructureDefinition/practitionerRole-eu-core"
* group[=].element[+].code = #Encounter.admission.admitter.identifier
* group[=].element[=].display = "A.2.3.3.3 - Admitting professional ID"
* group[=].element[=].target.code = #PractitionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "and where participant.type is 'ADM'"
* group[=].element[+].code = #Encounter.admission.referringHP.identifier
* group[=].element[=].display = "A.2.3.3.8 - Referring professional ID"
* group[=].element[=].target.code = #PractitionerRole.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "and where participant.type is 'REF'"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/InPatientEncounter"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/encounter-eu-hdr"
* group[=].element[+].code = #Encounter.type
* group[=].element[=].display = "A.2.3.1 - Encounter type"
* group[=].element[=].target.code = #Encounter.class
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.note
* group[=].element[=].display = "A.2.3.2 - Encounter note"
* group[=].element[=].target.code = #Encounter.extension:note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admission
* group[=].element[=].display = "A.2.3.3 - Admission"
* group[=].element[=].target.code = #Encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admission.urgency
* group[=].element[=].display = "A.2.3.3.1 - Admission urgency"
* group[=].element[=].target.code = #Encounter.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.admission.date
* group[=].element[=].display = "A.2.3.3.2 - Admission date"
* group[=].element[=].target.code = #Encounter.period.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admission.admitter
* group[=].element[=].display = "Admitting professional"
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'ADM'"
* group[=].element[+].code = #Encounter.admission.admitter.organization
* group[=].element[=].display = "A.2.3.3.6 - Admitting organisation"
* group[=].element[=].target.code = #Encounter.serviceProvider
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admission.admitter.organization
* group[=].element[=].display = "A.2.3.3.6 - Admitting organisation"
* group[=].element[=].target.code = #Encounter.participant.individual.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'ADM' and Encounter.participant.individual.ofType(PractitionerRole)"
* group[=].element[+].code = #Encounter.admission.source
* group[=].element[=].display = "A.2.3.3.7 - Admit Source"
* group[=].element[=].target.code = #Encounter.hospitalization.admitSource
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admission.referringHP
* group[=].element[=].display = "Referring professional"
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "where participant.type is 'REF'"
* group[=].element[+].code = #Encounter.admission.referringHP.organization
* group[=].element[=].display = "A.2.3.3.11 - Referring organisation"
* group[=].element[=].target.code = #Encounter.participant.individual.organization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "where participant.type is 'REF' and Encounter.participant.individual.ofType(PractitionerRole)"
* group[=].element[+].code = #Encounter.admissionReason
* group[=].element[=].display = "A.2.3.4 - Admission reason"
* group[=].element[=].target.code = #Encounter.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admissionReason
* group[=].element[=].display = "A.2.3.4 - Admission reason"
* group[=].element[=].target.code = #Encounter.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Encounter.admissionReason.code
* group[=].element[=].display = "A.2.3.4.1 - Admission reason"
* group[=].element[=].target.code = #Encounter.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.admissionReason.comment
* group[=].element[=].display = "A.2.3.4.2 - Admission reason comment"
* group[=].element[=].target.code = #Encounter.reasonCode.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.admissionReason.legalStatus
* group[=].element[=].display = "A.2.3.4.3 - Admission legal status"
* group[=].element[=].target.code = #Encounter.extension:legalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge
* group[=].element[=].display = "A.2.3.5 - Discharge"
* group[=].element[=].target.code = #Encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge.date
* group[=].element[=].display = "A.2.3.5.1 - Discharge date"
* group[=].element[=].target.code = #Encounter.period.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge.destinationType
* group[=].element[=].display = "A.2.3.5.2 - Discharge destination type"
* group[=].element[=].target.code = #Encounter.hospitalization.dischargeDisposition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.discharge.destinationLocation
* group[=].element[=].display = "A.2.3.5.3 - Destination location"
* group[=].element[=].target.code = #Encounter.hospitalization.destination
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Encounter.location
* group[=].element[=].display = "A.2.3.6 - Location - All locations/departments where the patient stayed (was boarded) within the hospital."
* group[=].element[=].target.code = #Encounter.location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/InPatientEncounter"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/location-eu-hdr"
* group[=].element[+].code = #Encounter.location.period
* group[=].element[=].display = "A.2.3.6.1 - Period"
* group[=].element[=].target.code = #Location.period
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Encounter.location"
* group[=].element[+].code = #Encounter.location.organization
* group[=].element[=].display = "Organization"
* group[=].element[=].target.code = #Location.managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Encounter.location.location"
