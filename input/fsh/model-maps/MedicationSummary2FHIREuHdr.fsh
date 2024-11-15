Instance: medicationSummary2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/medicationSummary2FHIR-eu-hdr"
* name = "MedicationSummary2FHIREuHdr"
* title = "eHN Medication Summary Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Medication Summary Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/MedicationSummary"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/medication-eu-hdr"
* group[=].element[+].code = #MedicationSummary.productName
* group[=].element[=].display = "A.2.9.2.4 - Brand name"
* group[=].element[=].target.code = #Medication.extension:productName
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MedicationSummary.activeIngredient
* group[=].element[=].display = "A.2.9.2.5 - Active ingredient list"
* group[=].element[=].target.code = #Medication.ingredient.item[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Medication.ingredient.isActive = true"
* group[=].element[+].code = #MedicationSummary.strength
* group[=].element[=].display = "A.2.9.2.6 - Strength"
* group[=].element[=].target.code = #Medication.ingredient.strength
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #MedicationSummary.doseForm
* group[=].element[=].display = "A.2.9.2.7 - Pharmaceutical dose form"
* group[=].element[=].target.code = #Medication.form
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/MedicationSummary"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/medicationRequest-eu-hdr"
* group[=].element[+].code = #MedicationSummary.reason
* group[=].element[=].display = "A.2.9.2.1 - Medication reason"
* group[=].element[=].target.code = #MedicationRequest.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "As reason for ordering"
* group[=].element[+].code = #MedicationSummary.changeReason
* group[=].element[=].display = "A.2.9.2.2 - Reason for change"
* group[=].element[=].target.code = #MedicationRequest.statusReason
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MedicationSummary.productCode
* group[=].element[=].display = "A.2.9.2.3 - Code"
* group[=].element[=].target.code = #MedicationRequest.medicationCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If no details about the medication are provided"
* group[=].element[+].code = #MedicationSummary.dosageRegimen
* group[=].element[=].display = "A.2.9.2.8 - Dosage Regimen"
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MedicationSummary.route
* group[=].element[=].display = "A.2.9.2.9 - Route of administration"
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.route
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MedicationSummary.period
* group[=].element[=].display = "A.2.9.2.10 - Period of treatment"
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.duration
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "CHECK it is used the name period but the imression is that is the duration not the period "
* group[=].element[+].code = #MedicationSummary.daysSupplied
* group[=].element[=].display = "A.2.9.2.11 - Days supplied"
* group[=].element[=].target.code = #MedicationDispense.daysSupply
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
