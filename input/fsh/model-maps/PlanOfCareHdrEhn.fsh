Logical: PlanOfCareHdrEhn
Id: PlanOfCare
Title: "A.2.8.1 - Care plan"
Description: """Hospital Discharge Report - Care plan after discharge - A.2.8.1 eHN"""
* title 0..1 string "A.2.9.1.1 - Title" """Human-friendly name for the care plan (e.g. Hip replacement care plan)"""
* addresses 0..* CodeableConcept "A.2.9.1.2 - Addresses" """Identifies the conditions/problems/concerns/diagnoses/etc. whose management and/or mitigation are handled by this plan. This element provides a linkage to the conditions recorded in the diagnostic summary section."""
* description 0..1 string "A.2.9.1.3 - Description" """A description of the scope and nature of the plan."""
* planPeriod 0..1 Period "A.2.9.1.4 - Plan Period" """Indicates when the plan did (or is intended to) come into effect and end."""
* details 0..* BackboneElement "A.2.9.1.5 - Other details" """Other structured and coded details, care team, goals to be achieved."""
* activity 0..* BackboneElement "A.2.9.1.6 - Activity" """Actions to occur as part of the plan."""
* activity.kind 0..1 CodeableConcept "A.2.9.1.6.1 - Kind" """A description of the type of care plan activity. For example, a MedicationRequest, a ServiceRequest, or a CommunicationRequest."""
* activity.description 0..1 string "A.2.9.1.6.2 - Activity description" """A detailed description of the activity."""
* activity.attribute 0..* BackboneElement "A.2.9.1.6.3 - Specific attributes" """Specific structured attributes per each activity type expressed by the Activity kind element, E.g., specific attributes for prescription request, appointment, etc."""
