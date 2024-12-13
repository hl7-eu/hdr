Profile: CarePlanEpsEu
Parent: CarePlan
Id: carePlan-eu-eps
Title:    "Care Plan (HDR)"
Description: """This profile constrains the CarePlan resource for the purpose of this guide."""

* title ^short = "Name for the care plan"
* addresses ^short = "Health issues this plan addresses."
* addresses only Reference (ConditionEuHdr)
* description ^short = "Summary of nature of plan."
* period ^short = "Period covered by the plan"

* activity 
  * detail
    * kind ^short = "Kind of resource referred"
    * description ^short = "Info describing activity to perform"
  * reference ^short = "Resources providing activity details"


