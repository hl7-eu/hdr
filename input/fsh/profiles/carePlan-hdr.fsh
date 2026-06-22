Profile: CarePlanEuHdr
Parent: CarePlan
Id: carePlan-eu-hdr
Title:    "Care Plan (HDR)"
Description: """This profile constrains the CarePlan resource for the purpose of this guide."""

* . ^short = "Healthcare plan for patient"
// ---------- Core metadata ----------
* identifier ^requirements = "EHDSCarePlan.header.identifier"
* title ^requirements = "EHDSCarePlan.title"
* description ^requirements = "EHDSCarePlan.description"
* status ^requirements = "EHDSCarePlan.header.status"
* category ^short = "Kind of plan"
* period ^requirements = "EHDSCarePlan.period"
* created ^short = "Date the plan was created"
* author ^requirements = "EHDSCarePlan.header.author[x]"
* careTeam ^short = "Participants in the care plan"
* instantiatesCanonical ^short = "Instantiated Canonical"
* instantiatesUri ^short = "Instantiated URI"


// ---------- Subject / clinical context ----------
* subject 1..1
* subject ^requirements = "EHDSCarePlan.header.subject"
* subject only Reference(PatientEuCore)
* addresses 0..*
* addresses ^requirements = "EHDSCarePlan.addresses[x]"
* addresses only Reference(ConditionEuCore)
* supportingInfo ^short = "Information considered as part of the care plan"



// ---------- Goals ----------

* goal only Reference(GoalEuHdr)
* goal ^requirements = "EHDSCarePlan.goal"

// Add slices for patient and treatment goal ?

// ---------- Activities ----------
* activity 0..*
* activity ^requirements = "EHDSCarePlan.activity[x]"
* activity obeys cpl-hdr-1

* activity.reference ^requirements = "EHDSCarePlan.activity[x]"
* activity.progress ^short = "Notes about the progress of the activity"

* activity.outcomeCodeableConcept ^short = "Codeable Outcome summary"
* activity.outcomeReference ^short = "Outcome evidence"

* activity.detail ^short = "Deprecated in R5/R6"


Invariant: cpl-hdr-1
Description: "CarePlan.activity.detail is deprecated and no more present in FHIR R5."
Severity: #warning
Expression: "detail.empty()"


