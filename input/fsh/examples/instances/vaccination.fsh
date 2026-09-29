Instance: example-covid19-vax-admin
InstanceOf: ImmunizationEuCore
Title: "Immunization: COVID-19"
Description: "An example record of an administered COVID-19 vaccine dose."

* status = #completed
* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"
* occurrenceDateTime = "2024-11-15"

// to be reactivated when the cross version package will be fixed
// * extension[administeredProduct].extension[concept].valueCodeableConcept = $pms#600000101345 "Comirnaty 3 micrograms/dose concentrate for dispersion for injection COVID-19 mRNA Vaccine"
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
