Profile: LaboratoryObservationEuHdrObligation
Parent: MedicalTestResultEuCore
Id: laboratoryObservation-obl-eu-hdr
Title: "Laboratory Observation: obligations"
Description: "This profile defines obligations for laboratory observations in the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert OblShallPopulateShallDisplayProcess
* identifier insert OblShallPopulateShallProcess
* status insert OblShallPopulateShallDisplay
* focus insert OblShallPopulateShallDisplay
* effective[x] insert OblShallPopulateShallDisplay
* effectiveDateTime insert OblShallPopulateShallDisplay
* effectivePeriod insert OblShouldPopulateShallDisplay
* code insert OblShallPopulateShallDisplayProcess
* code.text insert OblShouldPopulateShouldDisplay
* method insert OblShallPopulateShallDisplayProcess
* specimen insert OblShallPopulateShouldDisplay
* basedOn insert OblShallPopulateOnly
* performer insert OblShouldPopulateOnly
* value[x] insert OblShallPopulateShallDisplay
* valueString insert OblShouldPopulateShallDisplay
* valueQuantity insert OblShouldPopulateShallDisplay
* valueRange insert OblShouldPopulateShallDisplay
* valueRatio insert OblShouldPopulateShallDisplay
* valueCodeableConcept insert OblShouldPopulateShallDisplay
* dataAbsentReason insert OblShallPopulateShallDisplay
* referenceRange insert OblShallPopulateShallDisplay
* referenceRange.low insert OblShallPopulateShallDisplay
* referenceRange.high insert OblShallPopulateShallDisplay
* referenceRange.type insert OblShallPopulateShallDisplay
* referenceRange.appliesTo insert OblShallPopulateOnly
* referenceRange.age insert OblShallPopulateOnly
* referenceRange.text insert OblShouldPopulateShallDisplay
* interpretation insert OblShallPopulateShallDisplay
* note insert OblShallPopulateShallDisplay
* component insert OblShouldPopulateShallDisplay
* component.code insert OblShallPopulateShallDisplayProcess
* component.code.text insert OblShouldPopulateShouldDisplay
* component.value[x] insert OblShallPopulateShallDisplay
* component.valueString insert OblShouldPopulateShallDisplay
* component.valueQuantity insert OblShouldPopulateShallDisplay
* component.valueRange insert OblShouldPopulateShallDisplay
* component.valueRatio insert OblShouldPopulateShallDisplay
* component.valueCodeableConcept insert OblShouldPopulateShallDisplay
* component.dataAbsentReason insert OblShallPopulateShallDisplay
* component.referenceRange insert OblShallPopulateShallDisplay
* component.referenceRange.low insert OblShallPopulateShallDisplay
* component.referenceRange.high insert OblShallPopulateShallDisplay
* component.referenceRange.type insert OblShallPopulateShallDisplay
* component.referenceRange.appliesTo insert OblShallPopulateOnly
* component.referenceRange.age insert OblShallPopulateOnly
* component.referenceRange.text insert OblShouldPopulateShallDisplay
* component.interpretation insert OblShallPopulateShallDisplay
* derivedFrom insert OblShouldPopulateOnly
* hasMember insert OblShouldPopulateOnly
