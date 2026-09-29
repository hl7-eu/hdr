Profile: CarePlanEuHdrObligation
Parent: CarePlanEuHdr
Id: carePlan-obl-eu-hdr
Title:    "CarePlan: obligations"
Description: """This profile defines obligations for the CarePlan resource for the purpose of this guide."""

* insert SetFmmAndStatusRule ( 0, informative)

* insert OblShouldPopulateShallProcess

* subject only Reference(PatientEuObligations)
* addresses only Reference(ConditionEuCoreObligation)
* goal only Reference(GoalEuHdr)

* text insert OblShallPopulateShallProcess
* title insert OblShallPopulateShallDisplayProcess
* addresses 
* description insert OblShallPopulateShallDisplayProcess
* period insert OblShallPopulateShallProcess

* activity insert OblShallPopulateShallProcess
// No obligations on activity.detail: deprecated in R5/R6, activity.reference is used instead (see CarePlanEuHdr)
  * reference insert OblShallPopulateShallDisplayProcess


