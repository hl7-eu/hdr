Instance: patientHistory2FHIR-eu-hdr
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/patientHistory2FHIR-eu-hdr"
* name = "PatientHistory2FHIREuHdr"
* title = "eHN Hx general Reported Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Hospital Stay  Model to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/composition-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory
* group[=].element[=].display = "A.2.6.1 - Medical history"
* group[=].element[=].target.code = #Composiiton.section
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "several sections"
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions
* group[=].element[=].display = "A.2.6.1.1 - History of problems"
* group[=].element[=].target.code = #Composiiton.section:sectionDiagnosticSummary
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "The same section used by the hospital stay ?"
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.resolution
* group[=].element[=].display = "A.2.6.1.1.6 - Resolution circumstances"
* group[=].element[=].target.code = #Composition.section:sectionDiagnosticSummary.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "The resolution circumstances may be described as resource or composiiton.section text ; or indirectly determined by the resource (e.g. Procedure) that has been perfomed in reason of this Condition no more active"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices
* group[=].element[=].display = "A.2.6.1.2 - Devices and Implants"
* group[=].element[=].target.code = #Composition.section:sectionMedicalDevices
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination
* group[=].element[=].display = "A.2.6.1.4 - Vaccination"
* group[=].element[=].target.code = #Composition.section:sectionImmunizations
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory
* group[=].element[=].display = "A.2.6.1.5 - Epidemiological history"
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #unmatched					
* group[=].element[=].target.comment = "decison not to have as distict section"
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts
* group[=].element[=].display = "A.2.6.1.5.1 - Infectious contacts"
* group[=].element[=].target.code = #Composition.section:infectiousContacts
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.travelHistory
* group[=].element[=].display = "A.2.6.1.5.2 - Travel history"
* group[=].element[=].target.code = #Composition.section:sectionTravelHx
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.familyHistory
* group[=].element[=].display = "A.2.6.2 - Family history"
* group[=].element[=].target.code = #Composition.section:sectionFamilyMemberHistory
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.socialDeterminants
* group[=].element[=].display = "A.2.6.3 - Social determinants of health"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.useOfSubstances
* group[=].element[=].display = "A.2.6.4 - Use of substances"
* group[=].element[=].target.code = #Composition.section:sectionSubstanceUse
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "section.code to be defiend; check if it should be merged with social history"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/condition-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.conditionSpecification
* group[=].element[=].display = "A.2.6.1.1.1 - Problem description"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.conditionDetails
* group[=].element[=].display = "A.2.6.1.1.2 - Problem details"
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.onsetDate
* group[=].element[=].display = "A.2.6.1.1.3 - Onset date"
* group[=].element[=].target.code = #Condition.onSetDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.endDate
* group[=].element[=].display = "A.2.6.1.1.4 - End date"
* group[=].element[=].target.code = #Condition.abatementDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.clinicalStatus
* group[=].element[=].display = "A.2.6.1.1.5 - Clinical status"
* group[=].element[=].target.code = #Composition.clinicalStatus
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.resolution
* group[=].element[=].display = "A.2.6.1.1.6 - Resolution circumstances"
* group[=].element[=].target.code = #Condition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "The resolution circumstances may be described as resource or composiiton.section text ; or indirectly determined by the resource (e.g. Procedure) that has been perfomed in reason of this Condition no more active"
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.severity
* group[=].element[=].display = "A.2.6.1.1.7 - Severity"
* group[=].element[=].target.code = #Composition.severity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfConditions.stage
* group[=].element[=].display = "A.2.6.1.1.8 - Stage"
* group[=].element[=].target.code = #Composition.stage
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/device-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.description
* group[=].element[=].display = "A.2.6.1.2.1 - Device and implant description"
* group[=].element[=].target.code = #Device.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if referring to the description of the device"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.identifier
* group[=].element[=].display = "A.2.6.1.2.2 - Device ID"
* group[=].element[=].target.code = #Device.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if generic identifier"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.identifier
* group[=].element[=].display = "A.2.6.1.2.2 - Device ID"
* group[=].element[=].target.code = #Device.udiCarrier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if it is the udiCarrier"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/deviceUseStatement-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.description
* group[=].element[=].display = "A.2.6.1.2.1 - Device and implant description"
* group[=].element[=].target.code = #DeviceUseStatement.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if referring to the description of the usage of the device"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.implantDate
* group[=].element[=].display = "A.2.6.1.2.3 - Implant date"
* group[=].element[=].target.code = #DeviceUseStatement.timing[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "If the usage period is highlighted"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.endDate
* group[=].element[=].display = "A.2.6.1.2.4 - End date"
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.reason
* group[=].element[=].display = "A.2.6.1.2.5 - Reason"
* group[=].element[=].target.code = #DeviceUseStatement.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if details about the body structure have to be provided"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.reason
* group[=].element[=].display = "A.2.6.1.2.5 - Reason"
* group[=].element[=].target.code = #DeviceUseStatement.reasonReference
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures
* group[=].element[=].display = "A.2.6.1.3 - History of procedures"
* group[=].element[=].target.code = #Composition.section:sectionSignificantProcedures
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/familyMemberHistory-eu-hdr"
* group[=].element[+].code = #PatientHistory.familyHistory.relationship
* group[=].element[=].display = "A.2.6.2.1 - Patient relationship"
* group[=].element[=].target.code = #FamilyMemberHistory.relationship
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.familyHistory.birthDate
* group[=].element[=].display = "A.2.6.2.2 - Date of birth"
* group[=].element[=].target.code = #FamilyMemberHistory.bornDate
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.familyHistory.deathDateOrAge
* group[=].element[=].display = "A.2.6.2.3 - Age or date of death"
* group[=].element[=].target.code = #FamilyMemberHistory.deceased[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.familyHistory.conditions
* group[=].element[=].display = "A.2.6.2.5 - Condition"
* group[=].element[=].target.code = #FamilyMemberHistory.condition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.familyHistory.causeOfDeath
* group[=].element[=].display = "A.2.6.2.6 - Cause of death"
* group[=].element[=].target.code = #FamilyMemberHistory.condition.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "If FamilyMemberHistory.condition.contributedToDeath is true"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/immunization-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.diseaseOrAgent
* group[=].element[=].display = "A.2.6.1.4.1 - Disease or agent targeted"
* group[=].element[=].target.code = #Immunization.protocolApplied.targetDisease
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.vaccine
* group[=].element[=].display = "A.2.6.1.4.2 - Vaccine/prophylaxis"
* group[=].element[=].target.code = #Immunization.vaccineCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.productName
* group[=].element[=].display = "A.2.6.1.4.4 - Vaccine medicinal product"
* group[=].element[=].target.code = #Immunization.extension:administeredProduct
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.manufacturerOrMAH
* group[=].element[=].display = "A.2.6.1.4.5 - Marketing Authorisation Holder"
* group[=].element[=].target.code = #Immunization.manufacturer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.orderNumber
* group[=].element[=].display = "A.2.6.1.4.6 - Number in a series of vaccinations / doses"
* group[=].element[=].target.code = #Immunization.protocolApplied.doseNumberPositiveInt
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.vaccinationDate
* group[=].element[=].display = "A.2.6.1.4.7 - Date of vaccination"
* group[=].element[=].target.code = #Immunization.occurenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/immunizationRecommendation-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.vaccination.nextVaccinationDate
* group[=].element[=].display = "A.2.6.1.4.8 - Next vaccination date"
* group[=].element[=].target.code = #ImmunizationRecommendation.recommendation.dateCriterion[nextDose].value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/observation-infectious-contact-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts.period
* group[=].element[=].display = "A.2.6.1.5.1.1 - Time period"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts.infectiousAgent
* group[=].element[=].display = "A.2.6.1.5.1.2 - Infectious agent"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "In the current value set the disease is indicated"
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts.proximity
* group[=].element[=].display = "A.2.6.1.5.1.3 - Proximity"
* group[=].element[=].target.code = #Composition.section:infectiousContacts
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "in this version as textual description"
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts.country
* group[=].element[=].display = "A.2.6.1.5.1.4 - Country"
* group[=].element[=].target.code = #Composition.section:infectiousContacts
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "in this version as textual description"
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.infectiousContacts.note
* group[=].element[=].display = "A.2.6.1.5.1.5 - Additional information"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/observation-sdoh-eu-hdr"
* group[=].element[+].code = #PatientHistory.socialDeterminants.participationInSociety
* group[=].element[=].display = "A.2.6.3.1 - Participation in society"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.participationInSociety.workSituation
* group[=].element[=].display = "A.2.6.3.1.1 - Work situation"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.participationInSociety.hobby
* group[=].element[=].display = "A.2.6.3.1.2 - Hobby"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.participationInSociety.socailNetwork
* group[=].element[=].display = "A.2.6.3.1.3 - Social network"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.education
* group[=].element[=].display = "A.2.6.3.2 - Education"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.education.level
* group[=].element[=].display = "A.2.6.3.2.1 - Education level"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.education.comment
* group[=].element[=].display = "A.2.6.3.2.2 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.livingSituation
* group[=].element[=].display = "A.2.6.3.3 - Living situation"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.livingSituation.houseType
* group[=].element[=].display = "A.2.6.3.3.1 - House type"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.livingSituation.homeAdaption
* group[=].element[=].display = "A.2.6.3.3.2 - Home adaption"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.livingSituation.livingConditions
* group[=].element[=].display = "A.2.6.3.3.3 - Living conditions"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation
* group[=].element[=].display = "A.2.6.3.4 - Family situation"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.comment
* group[=].element[=].display = "A.2.6.3.4.1 - Comment"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.familyComposition
* group[=].element[=].display = "A.2.6.3.4.2 - Family composition"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.maritalStatus
* group[=].element[=].display = "A.2.6.3.4.3 - Marital status"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.numberOfChildren
* group[=].element[=].display = "A.2.6.3.4.4 - Number of children"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.numberOfChildrenAtHome
* group[=].element[=].display = "A.2.6.3.4.5 - Number of children at home"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.childDetails
* group[=].element[=].display = "A.2.6.3.4.6 - Child details"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.socialDeterminants.familySituation.careResponsibility
* group[=].element[=].display = "A.2.6.3.4.7 - Care responsibility"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/observation-travel-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.travelHistory.period
* group[=].element[=].display = "A.2.6.1.5.2.1 - Time period"
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.travelHistory.country
* group[=].element[=].display = "A.2.6.1.5.2.2 - Country visited"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.epidemiologicalHistory.travelHistory.comment
* group[=].element[=].display = "A.2.6.1.5.2.3 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.eu/fhir/hdr/StructureDefinition/procedure-eu-hdr"
* group[=].element[+].code = #PatientHistory.medicalHistory.medicalDevices.implantDate
* group[=].element[=].display = "A.2.6.1.2.3 - Implant date"
* group[=].element[=].target.code = #Procedure.perfomed[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if the implantation procedure is described"
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.procedureCode
* group[=].element[=].display = "A.2.6.1.3.1 - Procedure code"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.description
* group[=].element[=].display = "A.2.6.1.3.2 - Procedure description"
* group[=].element[=].target.code = #Procedure.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.bodySite
* group[=].element[=].display = "A.2.6.1.3.3 - Body site"
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.bodySite
* group[=].element[=].display = "A.2.6.1.3.3 - Body site"
* group[=].element[=].target.code = #Procedure.extension:bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "if details about the body structure have to be provided"
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.date
* group[=].element[=].display = "A.2.6.1.3.4 - Procedure date"
* group[=].element[=].target.code = #Procedure.perfomedDateTime	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.reason
* group[=].element[=].display = "A.2.6.1.3.5 - Procedure reason"
* group[=].element[=].target.code = #Procedure.reasonCode	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.reason
* group[=].element[=].display = "A.2.6.1.3.5 - Procedure reason"
* group[=].element[=].target.code = #Procedure.reasonReference	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.outcome
* group[=].element[=].display = "A.2.6.1.3.6 - Outcome"
* group[=].element[=].target.code = #Procedure.outcome	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PatientHistory.medicalHistory.historyOfProcedures.focalDevice
* group[=].element[=].display = "A.2.6.1.3.7 - Focal device"
* group[=].element[=].target.code = #Procedure.focalDevice	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/hdr/StructureDefinition/PatientHistory"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Observation"
* group[=].element[+].code = #PatientHistory.useOfSubstances.alcohol
* group[=].element[=].display = "A.2.6.4.1 - Alcohol use"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.alcohol.currentStatus
* group[=].element[=].display = "A.2.6.4.1.1 - Status"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.alcohol.periodAndQuantity
* group[=].element[=].display = "A.2.6.4.1.2 - Period and quantity"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.alcohol.comment
* group[=].element[=].display = "A.2.6.4.1.3 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.tobacco
* group[=].element[=].display = "A.2.6.4.2 - Tobacco use"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.tobacco.currentStatus
* group[=].element[=].display = "A.2.6.4.2.1 - Status"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.tobacco.periodAndQuantity
* group[=].element[=].display = "A.2.6.4.2.2 - Period and quantity"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.tobacco.comment
* group[=].element[=].display = "A.2.6.4.2.3 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.drugConsumption
* group[=].element[=].display = "A.2.6.4.3 - Drug consumption"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.drugConsumption.currentStatus
* group[=].element[=].display = "A.2.6.4.3.1 - Status"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.drugConsumption.periodAndQuantity
* group[=].element[=].display = "A.2.6.4.3.2 - Period and quantity"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.drugConsumption.drugType
* group[=].element[=].display = "A.2.6.4.3.3 - Drug or medication type"
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.drugConsumption.route
* group[=].element[=].display = "A.2.6.4.3.4 - Route of administration"
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
* group[=].element[+].code = #PatientHistory.useOfSubstances.drugConsumption.comment
* group[=].element[=].display = "A.2.6.4.3.5 - Comment"
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "category and code to be defined"
