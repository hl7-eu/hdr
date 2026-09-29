Profile: GoalEuHdr
Parent: Goal
Id: goal-eu-hdr
Title: "Goal (HDR)"
Description: "This profile constrains the Goal resource for the purpose of this guide. It represents the goals of the patient care plan, aligned with the EHDSCarePlan logical model, and is referenced by CarePlanEuHdr."
* insert SetFmmAndStatusRule (2, trial-use)


// ---------- Goal details ----------
* subject only Reference (PatientEuCore)
* category ^short = "Kind of goal"
* target ^short = "Target of the goal in the care plan"
* target.dueDate ^short = "Date by which the goal should be met or reviewed"
