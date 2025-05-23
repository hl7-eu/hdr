// SINGLE LINE PRESCRIPTIONS - only one medication per prescription.
Instance: 400C-prescription-cefuroxime-singleline
InstanceOf: MedicationRequestEuHdr
Usage: #example
Title: "MedicationRequest: 400C-prescription-cefuroxime-singleline"
Description: "400C. A prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium."

* meta.tag = $common-tags#actionable
* identifier.value = "10-123EP"  // prescription line identifier if exists
* status = #active
* intent = #order
* authoredOn = "2024-12-06"
* requester.display = "The Best Doctor"
* medicationReference = Reference(01A-Cefuroxime1500GenericExplicit)
* subject = Reference(patient-swart)
* reasonCode = $sct#10625071000119104 "Bronchopneumonia caused by bacteria (disorder)"
* dosageInstruction[0]
  * sequence = 1
  * doseAndRate.doseQuantity = 1500 $ucum#mg "milligram(s)"
  * route = $sct#78421000 "Intramuscular route"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 3 $ucum#d "day"
* dosageInstruction[+]
  * sequence = 2
  * doseAndRate.doseRange.low = 750 $ucum#mg "milligram(s)"
  * doseAndRate.doseRange.high = 1500 $ucum#mg "milligram(s)"
  * route = $sct#78421000 "Intramuscular route"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 4 $ucum#d "day"


Instance: 01A-Cefuroxime1500GenericExplicit
InstanceOf: MedicationEuHdr
Usage: #example
Title: "Medication: 01A-Cefuroxime1500GenericExplicit"
Description: "1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes."

* form = $edqm#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $atc#J01DC02 "cefuroxime"
* ingredient.itemCodeableConcept = $sct#372833007 "Cefuroxime"
* ingredient.isActive = true
* ingredient.strength.numerator = 1500 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm#15060000 "Vial"



Instance: example-medicationstatement-euhdr
InstanceOf: MedicationStatementEuHdr
Title: "MedicationStatement: Enalapril"
Description: "A sample MedicationStatement for a patient taking Enalapril, used in the context of the European Hospital Discharge Report."


* status = #active

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* medicationCodeableConcept = $atc#C09AA02 "Enalapril"
* medicationCodeableConcept.text = "Enalapril 20mg tablets"

* effectiveDateTime = "2024-12-01"
* dateAsserted = "2024-12-01"

* informationSource = Reference(patient-swart)
* informationSource.display = "Luigi De Luca"

* dosage[0].text = "Take one tablet daily in the morning"
* dosage[0].timing.repeat.frequency = 1
* dosage[0].timing.repeat.period = 1
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].route.coding[0].system = "http://snomed.info/sct"
* dosage[0].route.coding[0].code = #26643006
* dosage[0].route.coding[0].display = "Oral route"
* dosage[0].doseAndRate[0].doseQuantity.value = 20
* dosage[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosage[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosage[0].doseAndRate[0].doseQuantity.code = #mg

* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><strong>Medication:</strong> Enalapril 20mg tablets</p>
  <p><strong>Patient:</strong> Fiona XXX_Swart</p>
  <p><strong>Status:</strong> Active</p>
  <p><strong>Dosage:</strong> Take one tablet daily in the morning (oral route)</p>
  <p><strong>Informant:</strong> Dr. Lukas Müller</p>
  <p><strong>Date Asserted:</strong> 2024-12-01</p>
</div>
"""


Instance: 400D-dispense-1
InstanceOf: MedicationDispenseEuHdr
Usage: #example
Title: "MedicationDispense: 400D-dispense-1"
Description: "400D-1. Medication dispense fulfilling the first part of the order: 1 package containing 10 vials"

* status = #completed
* medicationReference = Reference(01C-Cefuroxime1500Branded)
* medicationReference.display = "Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10."
* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"
* performer[0].actor.display = "The best pharmacist"
* authorizingPrescription[0] = Reference(400C-prescription-cefuroxime-singleline)
* quantity = 1 $ucum#1 // 1 pack containing 10 vials
* daysSupply = 3 $ucum#d "day(s)"
* whenHandedOver = "2024-12-06T19:54:00Z"


Instance: 01C-Cefuroxime1500Branded
InstanceOf: MedicationEuHdr
Usage: #example
Title: "Medication: 01C-Cefuroxime1500Branded"
Description: "1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial (10 vials per package). Branded packaged product, defined by attributes."

* identifier.value = "1529962"
* identifier.system = "http://example.org/NationalMedicationRegister" 
* form = $edqm#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $atc#J01DC02 "cefuroxime"
* extension[productName].valueString = "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
* extension[unitOfPresentation].valueCodeableConcept = $edqm#15060000 "Vial"
* amount.numerator = 10 $edqm#15060000 "Vial"
* amount.denominator.value = 1
* ingredient.itemCodeableConcept = $sct#48753004 "Cefuroxime sodium"
* ingredient.isActive = true
* ingredient.strength.numerator = 1500 $ucum#mg "milligram"
* ingredient.strength.denominator = 1 $edqm#15060000 "Vial"
* manufacturer.display = "MIP Pharma GmbH"