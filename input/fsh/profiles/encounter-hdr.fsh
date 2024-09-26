Profile: EncounterEuHdr
Parent: Encounter
Id: encounter-eu-hdr
Title:    "Inpatient Encounter Xpandh"
Description: "This profile defines how to represent Inpatient Encounter in FHIR for the purpose of the XpanDH Hospital Discharge Report."
* identifier ^short = "Identifier(s) by which this encounter is known."
* status = #finished  // always #finished in discharge letter
  * ^short = "Status of this Hospital stay"
  * ^definition = "At the discharge report status of the encounter should be always = \"finished\""
* class from EncounterClassHdrVS (extensible)
  * ^definition = "Concepts representing classification of inpatient encounter such as inpatient, emergency or others due to local variations."
* type from EncounterTypeHdrVS (extensible)
  * ^short = "Specific type of Hospital stay"
  * ^definition = "Allows to classify encounter using information about care provision regimen during an inpatient encounter."
* serviceType
  * ^short = "Specific type of service." // voc binding needs to be descissed as it is only example
* priority from AdmissionUrgencyHdrVS (preferred)
  * ^short = "Encounter priority" // add voc binding
* subject only Reference (PatientEuHdr)
* subject 1..
  * ^short = "The pateint preesent at the encounter"
* basedOn ^short = "The request for which this encounter has been made"
* period
  * ^short = "The start and end time of this encounter."
  * ^definition = "The start and end time of this inpatient stay."
* reasonCode from ConditionHdrVS (preferred)
  * ^short = "Coded reason the encounter takes place"
* reasonReference only Reference ( Observation or Condition or Procedure)

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
  * type = $v3-ParticipationType#ADM
  * individual 0..1
  * individual only Reference (Practitioner or PractitionerRole) // add profiles

* participant contains discharger 0..*
* participant[discharger]
  * ^short = "Discharging professional"
  * type = $v3-ParticipationType#DIS
  * individual 0..1
  * individual only Reference (Practitioner or PractitionerRole) // add profiles

* participant contains refferer 0..*
* participant[refferer]
  * ^short = "Referring professional"
  * type = $v3-ParticipationType#REF
  * individual 0..1
  * individual only Reference (Practitioner or PractitionerRole) // add profiles

/* Admission diagnosis and discharge diagnosis as such does not exist in the EHN HDR data set.
All information about diagnosis should be included in diagnostic summary, which could be represented by diagnosis element of the Encounter.
Diagnosti summary according to the EHN HDR guideline uses two different categories of conditions:
1. category
- POA Present on admission
- HAC Hospital acquired condition
- NA Not applicable or unknown

2. Treatement class
- treated
- other

Category and treatement class should be mandatory (1..1).
I propose to model it at the condition resource level and don't use encounter diagnosis.use element
otherwise there might be discrepancies and confusion.
*/
* diagnosis 1..
* diagnosis.condition only Reference(Condition) // ConditionEncounterHdrXpandh
* diagnosis.use 0..0
/*
* diagnosis
  * ^short = "The list of diagnosis relevant to this encounter."
  * ^definition = """Slice per type of diagnosis: admission, discharge,..."""
  * ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[0].path = "use"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* diagnosis contains admission 0..*
* diagnosis[admission]
  * ^short = "Diagnosis known at admission"
  * condition only Reference ( Condition )
  * use = $diagnosis-role#AD

* diagnosis contains discharge 0..*
* diagnosis[discharge]
  * condition only Reference ( Condition )
  * use = $diagnosis-role#DD
*/

* hospitalization
  * admitSource ^short = "From where patient was admitted (physician referral, transfer)."
  * dischargeDisposition ^short = "Category or kind of location after discharge"
  // add voc binding