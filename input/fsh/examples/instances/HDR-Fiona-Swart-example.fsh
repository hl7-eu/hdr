Instance: patient-swart
InstanceOf: Patient
Title: "Patient: Dutch Patient"
Description: "Patine reosurce representing Fiona Swart, a Dutch patient."
Usage: #example
* identifier.system = "http://fhir.nl/fhir/NamingSystem/bsn"
* identifier.value = "999901448"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-assembly-order"
* name.extension.valueCode = #NL1
* name.text = "Fiona XXX_Swart"
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name.family.extension.valueString = "XXX_Swart"
* name.family = "XXX_Swart"
* name.given[0] = "Fiona"
* name.given[+] = "F"
* name.given[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.given[=].extension.valueCode = #BR
* name.given[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.given[=].extension.valueCode = #IN
* telecom.system = #phone
* telecom.value = "0655223366"
* telecom.use = #mobile
* gender = #female
* birthDate = "1985-12-23"
* address.use = #home
* address.type = #physical
* address.line = "Knolweg 1000"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Knolweg"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1000"
* address.city = "STITSWERD"
* address.postalCode = "9999XA"
* address.country = "NL"
* multipleBirthBoolean = false

Instance: organization-sophia
InstanceOf: Organization
Title: "Organization: Erasmus MC"
Description: "Organization representing the Erasmus MC, Sophia kinderziekenhuis."
Usage: #example
* identifier.system = "http://fhir.nl/fhir/NamingSystem/agb-z"
* identifier.value = "06020806"
* type[0].coding.version = "2.16.840.1.113883.2.4.6.7"
* type[=].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0300 "Medisch specialist"
* name = "Erasmus MC, Sophia kinderziekenhuis"
* telecom[0].system = #phone
* telecom[=].value = "0107040116"
* telecom[+].system = #email
* telecom[=].value = "info@erasmusmc.nl"
* address.use = #work
* address.line = "Dr. Molewaterplein 60"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Dr. Molewaterplein"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "60"
* address.city = "ROTTERDAM"
* address.postalCode = "3015GJ"
* address.country = "NL"

Instance: gewicht-swart
InstanceOf: $vitalsigns
Title: "Observation: Body weight"
Description: "Vital Signs observation representng the Body weight of the patient."
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* valueQuantity = 63 'kg' "kg"

Instance: bloeddruk-swart
InstanceOf: $vitalsigns
Title: "Blood pressure"
Usage: #inline
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code.coding[0] = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.coding[+] = $loinc#55284-4 "Blood pressure systolic and diastolic"
* code.coding[+] = $sct#46973005 "Blood pressure taking"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 $ucum#mm[Hg] "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 70 $ucum#mm[Hg] "mmHg"

Instance: levenvoelen-swart
InstanceOf: Observation
Title: "Observation: Fetal movement"
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.4.3.11.999.7.6"
* identifier.value = "38e436bf-6b35-11ec-2213-020000000000"
* status = #final
* code = $sct#364618000 "Pattern of fetal movement"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* valueCodeableConcept = $sct#289431008 "Fetal movements present"

Instance: condition-meerling
InstanceOf: ConditionEuCore
Title: "Observation: Twin pregnancy"
Usage: #inline
* clinicalStatus = $condition-clinical#resolved
* code = $sct#459168005 "Monochorionic diamniotic twin pregnancy"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* onsetDateTime = 2025-02-08

Instance: condition-growth
InstanceOf: Condition
Title: "Condition: Fetal growth restriction"
Usage: #inline
* clinicalStatus = $condition-clinical#resolved
* code = $sct#22033007 "Fetal growth restriction"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* onsetDateTime = 2025-02-08

Instance: ziekenhuisopname-swart
InstanceOf: EncounterEuHdr
Title: "Encounter: Planned hospital admission for twin delivery"
Description: "A planned hospital admission for the delivery of twins."
Usage: #inline
* status = $encounter-status#finished
* class = $v3-ActCode#IMP 
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* period.start = "2025-02-08T10:00:00+00:00"
* period.end = "2025-02-12T12:00:00+00:00"
* reasonCode = $sct#65147003 "Twin pregnancy"
* reasonReference = Reference(condition-meerling) "Twin pregnancy"
* diagnosis[0].condition = Reference(condition-meerling) "monochoriale diamniotische tweelingzwangerschap"

Instance: alcohol-swart
InstanceOf: Observation
Title: "Alcohol consumption"
Usage: #inline
* status = #final
* code = $sct#228273003 "Alcohol drinking behaviour" 
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* valueCodeableConcept = $sct#105542008 "Current non-drinker of alcohol"

Instance: tobacco-swart
InstanceOf: Observation
Title: "Tobacco smoking"
Usage: #inline
* status = #final
* code = $sct#365980008 "Finding of tobacco use and exposure (finding)"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* valueCodeableConcept = $sct#230059006 "Occasional cigarette smoker"
* component[0].code = $sct#53661000146106 "Type of tobacco used (observable entity)"
* component[=].valueCodeableConcept = $sct#722499006 "Electronic cigarette user"
* component[+].code = $sct#266918002 "Tobacco smoking consumption (observable entity)"
* component[=].valueQuantity = 6 '{keer per dag inhaleren}' "keer per dag inhaleren"

Instance: sectio-swart
InstanceOf: ProcedureEuCore
Title: "Procedure: Sectio caesarea"
Description: "A planned cesarean section procedure."
Usage: #example
* status = #completed
* category = $sct#386637004 "Obstetric procedure"
// * code = $sct#80771000146107 "Planned cesarean section"
* code = $sct#11466000 "Cesarean section"
* subject = Reference(patient-swart) "Fiona F XXX_Swart"
* performedPeriod.start = "2025-02-10T10:03:00+02:00"
* performedPeriod.end = "2025-02-10T11:48:00+02:00"

// Validator complains about k[arb'U]/L , but it is valid

// Instance: lab-swart-1
// InstanceOf: Observation
// Title: "Hepatitis B-virusoppervlakte Ag"
// Usage: #example
// * status = #final
// * code = $loinc#58452-4 "Hepatitis B virus surface Ag [Units/volume] in Serum"
// * subject = Reference(patient-swart) "Fiona F XXX_Swart"
// * valueQuantity = 0 $ucum#k[arb'U]/L "k[arb'U]/L"

// Instance: lab-swart-2
// InstanceOf: Observation
// Title: "Toxoplasma gondii IgG Antibody"
// Usage: #example
// * status = #final
// * code = $loinc#8039-0 "Toxoplasma gondii IgG Ab [Units/volume] in Serum"
// * subject = Reference(patient-swart) "Fiona F XXX_Swart"
// * valueQuantity = 9 $ucum#k[arb'U]/L "k[arb'U]/L"

Instance: lab-swart-3
InstanceOf: MedicalTestResultEuCore
Title: "Observation: ABO group"
Description: "ABO blood group type in blood."
Usage: #example
* status = #final
* code = $loinc#883-9 "ABO group [Type] in Blood"
* category[laboratory] = $observation-category#laboratory "Laboratory"
* subject = Reference(http://example.org/Patient/patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* performer = Reference(http://example.org/Organization/organization-sophia)
* valueCodeableConcept = $sct#58460004 "Blood group O"

Instance: lab-swart-4
InstanceOf: MedicalTestResultEuCore
Title: "Rh D factor"
Usage: #inline
* id = "a7c687cd-27dd-4b42-88c2-5e32418847ae"
* status = #final
* code = $loinc#1305-2 "D Ag [Presence] in Blood"
* category[laboratory] = $observation-category#laboratory "Laboratory"
* subject = Reference(http://example.org/Patient/patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* performer = Reference(http://example.org/Organization/organization-sophia)
* valueCodeableConcept = $sct#165747007 "RhD positive"

Instance: lab-swart-5
InstanceOf: MedicalTestResultEuCore
Title: "Hemoglobine"
Usage: #inline
* id = "5863804b-b0aa-4292-8bc2-13a769ad50d7"
* status = #final
* code = $loinc#93846-4 "Hemoglobin [Moles/volume] in Venous blood"
* category[laboratory] = $observation-category#laboratory "Laboratory"
* subject = Reference(http://example.org/Patient/patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* performer = Reference(http://example.org/Organization/organization-sophia)
* valueQuantity = 7.3 $ucum#mmol/L "mmol/L"

Instance: lab-swart-6
InstanceOf: MedicalTestResultEuCore
Title: "HIV 1 As [aanwezigheid] in serum of plasma d.m.v. immunoassay"
Usage: #inline
* id = "2640f290-85c4-426f-b912-4b5051f4f35a"
* status = #final
* code = $loinc#29893-5 "HIV 1 Ab [Presence] in Serum or Plasma by Immunoassay"
* category[laboratory] = $observation-category#laboratory "Laboratory"
* subject = Reference(http://example.org/Patient/patient-swart) "Fiona F XXX_Swart"
* effectiveDateTime = 2025-02-08
* performer = Reference(http://example.org/Organization/organization-sophia)
* valueCodeableConcept = $sct#165815009 "HIV not detected"

Instance: composition-swart
InstanceOf: CompositionEuHdr
Usage: #inline
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* subject = Reference(http://example.org/Patient/patient-swart)
* encounter = Reference(ziekenhuisopname-swart)
* date = "2025-02-08T10:18:13.947+00:00"
* author = Reference(http://example.org/Organization/organization-sophia)
* title = "Hospital Discharge summary"
* confidentiality = #N
// section 0
* section[sectionAdmissionEvaluation].title = "Admission evaluation"
* section[sectionAdmissionEvaluation].code = $loinc#67851-6 "Admission evaluation note"
* section[sectionAdmissionEvaluation].text.status = #generated
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient Fiona Swart was admitted to the hospital for a planned cesarean section.</div>"
* section[sectionAdmissionEvaluation].section[0].title = "Vital signs note"
* section[sectionAdmissionEvaluation].section[=].code = $loinc#8716-3 "Vital signs note"
* section[sectionAdmissionEvaluation].section[=].text.status = #generated
* section[sectionAdmissionEvaluation].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <table>
      <tr>
         <td>Body weight</td>
         <td>63 kg</td>
      </tr>
      <tr>
         <td>Blood pressure panel with all children optional</td>
         <td/>
      </tr>
      <tr>
         <td>Systolic blood pressure</td>
         <td>120 mmHg</td>
      </tr>
      <tr>
         <td>Diastolic blood pressure</td>
         <td>70 mmHg</td>
      </tr>
      <tr>
         <td>Pattern of fetal movement</td>
         <td>Fetal movements present</td>
      </tr>
   </table>
</div>"

* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(gewicht-swart) "63 kg"
* section[sectionAdmissionEvaluation].section[=].entry[+] = Reference(bloeddruk-swart) "70/120 mmHg"
* section[sectionAdmissionEvaluation].section[=].entry[+] = Reference(levenvoelen-swart) "foetale bewegingen aanwezig"

// section 1
* section[sectionPatientHx].title = "Hx general Reported"
* section[sectionPatientHx].code = $loinc#11329-0 "Hx general Reported"
* section[sectionPatientHx].section[+].title = "Social history"
* section[sectionPatientHx].section[=].code = $loinc#29762-2 "Social history note"
* section[sectionPatientHx].section[=].text.status = #generated
* section[sectionPatientHx].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <table>
      <tr>
         <td>Alcohol drinking behaviour</td>
         <td>Current non-drinker of alcohol</td>
      </tr>
      <tr>
         <td>Finding of tobacco use and exposure (finding)</td>
         <td>Occasional cigarette smoker</td>
      </tr>
      <tr>
         <td>Type of tobacco used (observable entity)</td>
         <td>Electronic cigarette user</td>
      </tr>
      <tr>
         <td>Tobacco smoking consumption (observable entity)</td>
         <td>6 keer per dag inhaleren</td>
      </tr>
   </table>
</div>"
* section[sectionPatientHx].section[=].entry[0] = Reference(alcohol-swart) "does not drink alcohol"
* section[sectionPatientHx].section[=].entry[+] = Reference(tobacco-swart) "smokes occasionally cigarettes"


* section[sectionPatientHx].section[+].title = "Significant procedures"
* section[sectionPatientHx].section[=].code = $loinc#10185-7 "Hospital discharge procedure note"
* section[sectionPatientHx].section[=].text.status = #generated
* section[sectionPatientHx].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <table>
      <tr>
         <td>Obstetric procedure</td>
         <td>Cesarean section</td>
      </tr>
   </table>
   </div>"
* section[sectionPatientHx].section[=].entry[0] = Reference(sectio-swart) "planned primary sectio caesarea"

// section 2
* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <table>
      <tr>
         <td>Monochorionic diamniotic twin pregnancy</td>
         <td>resolved</td>
      </tr>
      <tr>
         <td>Fetal growth restriction</td>
         <td>resolved</td>
      </tr>
   </table>
</div>"
* section[sectionProblems].entry[0] = Reference(condition-meerling)
* section[sectionProblems].entry[+] = Reference(http://example.org/Condition/condition-growth)

// section 3
* section[sectionHospitalCourse].title = "Hospital course note"
* section[sectionHospitalCourse].code = $loinc#8648-8 "Hospital course note"
* section[sectionHospitalCourse].text.status = #generated
* section[sectionHospitalCourse].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  The scheduled cesarean section procedure was performed on the day of admission without complications. Intraoperative and postoperative courses were uneventful. Postoperative pain was managed effectively with standard analgesia. Vital signs remained stable throughout the stay, and there were no signs of infection or other complications. The patient was mobilized on postoperative day one and tolerated oral intake well. Mother and newborn received routine postnatal care.
</div>
"""

// section 4
* section[sectionSignificantResults].title = "Results"
* section[sectionSignificantResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionSignificantResults].text.status = #generated
* section[sectionSignificantResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <table>
      <tr>
         <td>ABO group [Type] in Blood</td>
         <td>Blood group O</td>
      </tr>
      <tr>
         <td>D Ag [Presence] in Blood</td>
         <td>RhD positive</td>
      </tr>
      <tr>
         <td>Hemoglobin [Moles/volume] in Venous blood</td>
         <td>7.3 mmol/L</td>
      </tr>
      <tr>
         <td>HIV 1 Ab [Presence] in Serum or Plasma by Immunoassay</td>
         <td>HIV not detected</td>
      </tr>
   </table>
</div>"
// * section[=].entry[0] = Reference(lab-swart-1)  "HBsAg"
// * section[=].entry[+] = Reference(lab-swart-2)  "Toxoplasma IgG"
* section[sectionSignificantResults].entry[results-medicalTestResult][0] = Reference(lab-swart-3)  "ABO group"
* section[sectionSignificantResults].entry[results-medicalTestResult][+] = Reference(urn:uuid:a7c687cd-27dd-4b42-88c2-5e32418847ae)  "Rh D factor"
* section[sectionSignificantResults].entry[results-medicalTestResult][+] = Reference(urn:uuid:5863804b-b0aa-4292-8bc2-13a769ad50d7)  "hemoglobin"
* section[sectionSignificantResults].entry[results-medicalTestResult][+] = Reference(urn:uuid:2640f290-85c4-426f-b912-4b5051f4f35a)  "HIV 1 As"


* section[sectionDischargeDetails].title = "Discharge details"
* section[sectionDischargeDetails].code = $loinc#8650-4 "Hospital discharge disposition note"
* section[sectionDischargeDetails].text.status = #generated
* section[sectionDischargeDetails].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient Fiona Swart was discharged after cesarean section with healthy twin.</div>"

Instance: bundle-swart
InstanceOf: BundleEuHdr
Title: "Bundle: complete HL7 Europe Hospital Discharge Report (4)"
Description: "HL7 FHIR Bundle example for HL7 Europe Hospital Discharge Report (HDR) Fiona Swart"
Usage: #example
* identifier.system = "urn:ietf:rfc:4122"
* identifier.value = "3e594fe5-3ed5-4305-a214-99c87e1f3bfa"
* type = #document
* timestamp = "2025-05-11T10:18:14.632+00:00"
* entry[composition][0].fullUrl = "http://example.org/Composition/composition-swart"
* entry[composition][=].resource = composition-swart
//1
* entry[condition][+].fullUrl = "http://example.org/Condition/condition-growth"
* entry[condition][=].resource = condition-growth
* entry[condition][+].fullUrl = "http://example.org/Condition/condition-meerling"
* entry[condition][=].resource = condition-meerling
//3
* entry[encounter][+].fullUrl = "http://example.org/Encounter/ziekenhuisopname-swart"
* entry[encounter][=].resource = ziekenhuisopname-swart
* entry[observation][+].fullUrl = "http://example.org/Observation/alcohol-swart"
* entry[observation][=].resource = alcohol-swart
* entry[observation][+].fullUrl = "http://example.org/Observation/bloeddruk-swart"
//6
* entry[observation][=].resource = bloeddruk-swart
* entry[observation][+].fullUrl = "http://example.org/Observation/gewicht-swart"
* entry[observation][=].resource = gewicht-swart
// * entry[+].fullUrl = "http://example.org/Observation/lab-swart-1"
// * entry[=].resource = lab-swart-1
// * entry[+].fullUrl = "http://example.org/Observation/lab-swart-2"
// * entry[=].resource = lab-swart-2
* entry[observation][+].fullUrl = "http://example.org/Observation/lab-swart-3"
* entry[observation][=].resource = lab-swart-3
//8
* entry[observation][+].fullUrl = "urn:uuid:a7c687cd-27dd-4b42-88c2-5e32418847ae"
* entry[observation][=].resource = lab-swart-4
* entry[observation][+].fullUrl = "urn:uuid:5863804b-b0aa-4292-8bc2-13a769ad50d7"
* entry[observation][=].resource = lab-swart-5
* entry[observation][+].fullUrl = "urn:uuid:2640f290-85c4-426f-b912-4b5051f4f35a"
* entry[observation][=].resource = lab-swart-6
* entry[observation][+].fullUrl = "http://example.org/Observation/levenvoelen-swart"
* entry[observation][=].resource = levenvoelen-swart
* entry[observation][+].fullUrl = "http://example.org/Observation/tobacco-swart"
* entry[observation][=].resource = tobacco-swart
* entry[organization][+].fullUrl = "http://example.org/Organization/organization-sophia"
* entry[organization][=].resource = organization-sophia
* entry[patient][+].fullUrl = "http://example.org/Patient/patient-swart"
* entry[patient][=].resource = patient-swart
* entry[procedure][+].fullUrl = "http://example.org/Procedure/sectio-swart"
* entry[procedure][=].resource = sectio-swart