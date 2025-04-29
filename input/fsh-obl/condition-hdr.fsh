Profile: ConditionEuHdr
Parent: Condition
Id: condition-obl-eu-hdr
Title: "Condition: obligations"
Description: """This profile represents the constraint applied to the Condition in the scope of this guide. It support the Diagnostic summary part of the eHN data model adding two additional categories: First category distingueshes conditions present at admission and acquired during hospital stay, while second category is used to indicate impact of the condition to the treatement during hospital stay (treated, untreated)."""

* insert ImposeProfile ( $Condition-uv-ips, 0 )  // Check if this is appropriate (see MS support)

// follow the same apporach of lab for collection or add laterality to the bodySite ?
* extension contains $bodySite-reference named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureEu)
* insert SetFmmandStatusRule ( 0, informative)
* category only CodeableConceptIPS
* category
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^definition = """Slices per type of classificaton"""
  * ^short = "category codes"
/* * category contains hdr-core 1..1
* category[hdr-core] = $condition-category#encounter-diagnosis
  * ^short = "encounter-diagnosis" */
* category contains poa 0..1
* category[poa] from EHDSIConditionPOA
  * ^short = "POA, HAC, NA"
  * ^definition = "Present on admission, Hospital acquired condition, Not applicable or unknown"
* category contains treated 0..1
* category[treated] from EHDSITreatmentClass
  * ^short = "Treated or untreated"
  * ^definition = """Class of the problem (treated, other) in relation to the hospital encounter. Treated problems were treated or affected provisioning of care (diagnostics, therapy, nursing, monitoring) during the hospital encounter. At least one problem should be marked as Treated. Other problems are recorded only if they are important for continuity of care (after discharge)."""

* severity only $CodeableConcept-uv-ips
* severity from $condition-severity (preferred)


* code 1..1 
* code only $CodeableConcept-uv-ips
* code from ConditionHdrVS (preferred)
  * ^definition = "The problem code specifies the problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
  * ^binding.description = "Valueset to describe the actual problem experienced by the patient"


* bodySite only $CodeableConcept-uv-ips
* bodySite from SNOMEDCTBodyStructures (preferred)

* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."


* clinicalStatus only $CodeableConcept-uv-ips
* clinicalStatus from ConditionClinicalStatusCodes (required)
  * ^definition = "The problem status describes the condition of the problem:\n\r
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus only $CodeableConcept-uv-ips
* verificationStatus from ConditionVerificationStatus (required)
  * ^definition = "The verification status to support the clinical status of the condition."


* subject only Reference(PatientEuCore)
* subject.reference 1..

* onset[x] only dateTime or Age or Period or Range or string
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."

* abatement[x] only dateTime or Age or Period or Range or string
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"

* stage ^short = "Stage/grade"
* stage.summary  ^short = "Most recent Stage Group"
* stage.assessment ^definition = "Reference to the evidence on which the staging assessment is based."
* stage.type ^short = "Staging system used."

/* 
* stage.assessment only Reference(CancerStageGroupHdrXpandh)
* stage.summary from CancerStageGradingVS
  * ^short = "Most recent Stage Group"
  * ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but Data Senders and Receivers MAY ignore it."

* stage.type ^definition = "As for mCODE, in IDEA4RC staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but Data Senders and Receivers MAY ignore it."
*/

* note ^definition = "Comment by the one who determined or updated the Problem."

