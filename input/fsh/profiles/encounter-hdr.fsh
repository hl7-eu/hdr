Profile: EncounterEuHdr
Parent: Encounter
Id: encounter-eu-hdr
Title:    "Encounter (HDR)"
Description: "This profile defines how to represent Inpatient Encounter in HL7 FHIR for the scope of this guide."

* insert SetFmmAndStatusRule (1, draft)

* extension contains $note named note 0..*
* extension[note] ^short = "Enconter note"
* extension[note] ^requirements = "EHDSEncounter.note"

* extension contains EncounterLegalStatus named legalStatus 0..*
* extension[legalStatus] ^short = "Legal status/situation at admission"


* text ^requirements = "body.encounterInformation.generatedNarrative"
* identifier ^short = "Identifier(s) by which this encounter is known."
* identifier ^requirements = "EHDSEncounter.header.identifier"
* status from EncounterStatusHdrVS
  * ^short = "Status of this Hospital stay"
  * ^definition = "At the discharge report status of the encounter should be always = \"finished\""
  * ^requirements = "EHDSEncounter.header.status"
* language ^requirements = "EHDSEncounter.header.language"
* class from EncounterClassHdrVS (extensible)
  * ^definition = "Concepts representing classification of inpatient encounter such as inpatient, emergency or others due to local variations."
  * ^requirements = "EHDSEncounter.type"
* type from EncounterTypeHdrVS (example)
  * ^short = "Specific type of Hospital stay"
  * ^definition = "Allows to classify encounter using information about care provision regimen during an inpatient encounter."
  * ^requirements = "EHDSEncounter.type"
* serviceType
  * ^short = "Specific type of service." // voc binding needs to be descissed as it is only example
* priority from AdmissionUrgencyHdrVS (preferred)
  * ^short = "Encounter priority" // add voc binding
  * ^requirements = "EHDSEncounter.priority"
* subject only Reference (PatientEuCore)
* subject 1..
  * ^short = "The patient present at the encounter"
  * ^requirements = "EHDSEncounter.header.subject"
* basedOn ^short = "The request for which this encounter has been made"
* basedOn ^requirements = "EHDSEncounter.basedOn[x]"
* period
  * ^short = "The start and end time of this encounter."
  * ^definition = "The start and end time of this inpatient stay."
  * ^requirements = "EHDSEncounter.period"
* reasonCode from ConditionHdrVS (preferred)
  * ^short = "Coded reason the encounter takes place"
  * ^requirements = "EHDSEncounter.reason[x]"
* reasonReference only Reference ( Observation or Condition or Procedure)
* reasonReference ^requirements = "EHDSEncounter.reason[x]"
* partOf ^requirements = "EHDSEncounter.subEncounter"

* participant
  * individual 0..1
  * individual only Reference (PractitionerEuCore or PractitionerRoleEuCore or RelatedPerson)
  * individual ^requirements = "EHDSEncounter.header.author[x], EHDSEncounter.header.source"
  * period ^requirements = "EHDSEncounter.header.date"

* participant
  * ^short = "List of participants involved in the encounters"
  * ^definition = """Slice per type of participant: admitter, discharger,.."""
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[0].path = "type"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* participant contains admitter 0..*
* participant[admitter]
  * ^short = "Admitting professional"
  * ^requirements = "EHDSEncounter.admission.admitter"
  * type = $v3-ParticipationType#ADM
  * individual ^requirements = "EHDSEncounter.admission.admitter"


* participant contains discharger 0..*
* participant[discharger]
  * ^short = "Discharging professional"
  * type = $v3-ParticipationType#DIS

* participant contains referrer 0..*
* participant[referrer]
  * ^short = "Referring professional"
  * ^requirements = "EHDSEncounter.referringProfessional"
  * type = $v3-ParticipationType#REF
  * individual ^requirements = "EHDSEncounter.referringProfessional"


* diagnosis ^short = "The list of diagnosis relevant to this encounter, see comment"
* diagnosis ^requirements = "EHDSEncounter.dischargeDiagnosis[x]"
* diagnosis ^comment = "While Encounter.diagnosis could be optionally populated, mainly for administrative purposes, we strongly recommend to put all clinical relevant diagnoses, stated at start, during and at the end of the hospital stay, into the corresponding section(s) of the HDR."
* diagnosis.condition only Reference(Condition)
* diagnosis.condition ^requirements = "EHDSEncounter.dischargeDiagnosis[x]"


* hospitalization
  * ^requirements = "EHDSEncounter.admission, EHDSEncounter.dischargeDestination"
  * admitSource ^short = "From where patient was admitted (physician referral, transfer)."
  * admitSource ^requirements = "EHDSEncounter.admission.admitSource"
  * dischargeDisposition ^short = "Category or kind of location after discharge"
  * dischargeDisposition ^requirements = "EHDSEncounter.dischargeDestination.type"
  * destination only Reference (OrganizationEuCore or LocationEuCore)
  * destination ^requirements = "EHDSEncounter.dischargeDestination.location[x]"
  // add voc binding

* location ^short = "Locations where the patient stayed"
* location ^requirements = "EHDSEncounter.serviceLocation"
  * location only Reference ( LocationEuCore )
  * location ^requirements = "EHDSEncounter.serviceLocation.organisationPart[x]"
  * period ^short = "Location period"
  * period ^requirements = "EHDSEncounter.serviceLocation.period"

* serviceProvider only Reference ( OrganizationEuCore )
* serviceProvider ^requirements = "EHDSEncounter.serviceProvider"
