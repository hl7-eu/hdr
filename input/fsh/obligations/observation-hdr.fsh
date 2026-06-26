Profile: ObservationEuHdrObligation
Parent: MedicalTestResultEuCore
Id: observation-obl-eu-hdr
Title: "Observation: obligations"
Description: "This profile defines obligations for observations in the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert OblShallPopulateShallDisplayProcess
* identifier insert OblShallPopulateShallProcess
* performer insert OblShouldPopulateOnly
* status insert OblShallPopulateShallDisplay
* focus insert OblShallPopulateShallDisplay
* effective[x] insert OblShallPopulateShallDisplay
* effectiveDateTime insert OblShallPopulateShallDisplay
* effectivePeriod insert OblShouldPopulateShallDisplay
* code insert OblShallPopulateShallDisplayProcess
* code.text insert OblShouldPopulateShouldDisplay
* value[x] insert OblShallPopulateShallDisplay
* valueString insert OblShouldPopulateShallDisplay
* valueQuantity insert OblShouldPopulateShallDisplay
* valueRange insert OblShouldPopulateShallDisplay
* valueRatio insert OblShouldPopulateShallDisplay
* valueCodeableConcept insert OblShouldPopulateShallDisplay
* dataAbsentReason insert OblShallPopulateShallDisplay
* referenceRange insert OblShouldPopulateShallDisplay
* component.code insert OblShallPopulateShallDisplayProcess
* component.code.text insert OblShouldPopulateShouldDisplay
* component.value[x] insert OblShallPopulateOnly
* component.valueString insert OblShouldPopulateShallDisplay
* component.valueQuantity insert OblShouldPopulateShallDisplay
* component.valueRange insert OblShouldPopulateShallDisplay
* component.valueRatio insert OblShouldPopulateShallDisplay
* component.valueCodeableConcept insert OblShouldPopulateShallDisplay
* component.dataAbsentReason insert OblShallPopulateShallDisplay
* component.referenceRange insert OblShouldPopulateShallDisplay
