Instance: example-covid19-vax-recommendation
InstanceOf: ImmunizationRecommendationEuHdr
Title: "COVID-19 Immunization Recommendation"
Description: "A recommendation for COVID-19 vaccination."

* date = "2024-10-15"
* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"

* recommendation[0].vaccineCode = $sct#1287596002 "Adult B and BA.4/BA.5 lineage SARS-CoV-2 bivalent mRNA only vaccine product"

* recommendation[0].targetDisease = $sct#840539006 "COVID-19"

* recommendation[0].forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due "Due"

* recommendation[0].dateCriterion[nextDose].code = $loinc#30980-7 "Date vaccine due"
* recommendation[0].dateCriterion[nextDose].code.text = "Next dose due date"
* recommendation[0].dateCriterion[nextDose].value = "2024-11-15"

* recommendation[0].doseNumberPositiveInt = 4
* recommendation[0].seriesDosesPositiveInt = 4


Instance: example-covid19-vax-admin
InstanceOf: ImmunizationEuHdr
Title: "Administered COVID-19 Immunization"
Description: "An example record of an administered COVID-19 vaccine dose."

* status = #completed
* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"
* occurrenceDateTime = "2024-11-15"


* extension[administeredProduct].extension[concept].valueCodeableConcept = $pms#600000101345 "Comirnaty 3 micrograms/dose concentrate for dispersion for injection COVID-19 mRNA Vaccine"
* vaccineCode = $sct#1287596002 "Adult B and BA.4/BA.5 lineage SARS-CoV-2 bivalent mRNA only vaccine product"

* lotNumber = "BATCH-COVID-2024"
* manufacturer.display = "BioPharma Europe Inc."

* location.display = "Community Health Centre, Rome"

* performer[administeringCentreOrHp].function = $v2-0443#AP
* performer[administeringCentreOrHp].actor.display = "Community Health Centre"

* performer[administeringCentreOrHp].function = $v2-0443#AP
* performer[administeringCentreOrHp].actor.display = "Dr. Alessia Bianchi"

// * extension[basedOn].valueReference.reference = "ImmunizationRecommendation/example-covid19-vax-recommendation"

* protocolApplied[0].targetDisease = $sct#840539006 "COVID-19"

* protocolApplied[0].doseNumberPositiveInt = 3
* protocolApplied[0].seriesDosesPositiveInt = 4
