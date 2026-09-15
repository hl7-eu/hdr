Instance: DischargeBundle-Novak-Petr-Subsections
InstanceOf: BundleEuHdr
Title: "Bundle: HL7 Europe Hospital Discharge Report (4)"
Description: "HL7 FHIR Bundle example for HL7 Europe Hospital Discharge Report (HDR) with structured composition for Czech patient Petr Novák."
Usage: #example

* language = #cs
* identifier[+].type = $v2-0203#PRN
* identifier[=].system = "http://example.org/eu/identifier"
* identifier.value = "urn:uuid:5fa7add2-aa11-4988-9a1a-418fc3038d57"    // unique persistent Bundle identifier
* type = #document
* timestamp = "2025-03-10T15:00:00+01:00"
// Bundle Entries (ordered by profile slices):
* entry[composition][0].fullUrl = "urn:uuid:701f51d5-78bf-428e-a6b5-349c2614ce07"
* entry[composition][=].resource = DischargeComposition-Novak-Petr-Subsections
* entry[patient][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000000"
* entry[patient][=].resource = Patient-Novak-Petr
* entry[encounter][+].fullUrl = "urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620"
* entry[encounter][=].resource = HospitalEncounter-Novak-Petr
* entry[practitionerRole][+].fullUrl = "urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849"
* entry[practitionerRole][=].resource = Practitioner-Author-detail
* entry[practitionerRole][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000029"
* entry[practitionerRole][=].resource = Practitioner-Referrer-detail
* entry[condition][+].fullUrl = "urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2"
* entry[condition][=].resource = Condition-K409
* entry[condition][+].fullUrl = "urn:uuid:fdf9e92d-ac48-4706-b15b-d2eaca85f45f"
* entry[condition][=].resource = Condition-E890-Novak
* entry[condition][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002f"
* entry[condition][=].resource = IronDeficiencyAnemiaCondition
* entry[condition][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000031"
* entry[condition][=].resource = CZ-Condition-HDR-Example
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:6cf80cb1-9766-470f-ac36-b1d3d8950f1b"
* entry[allergyIntolerance][=].resource = Allergy-Strawberry-Novak
* entry[careplan][+].fullUrl = "urn:uuid:9c913d06-84fe-4d35-b35b-8b0c7965f535"
* entry[careplan][=].resource = CarePlan-Novak
* entry[medicationStatement][+].fullUrl = "urn:uuid:47472c99-09bf-4007-bfaa-16c9665ae090"
* entry[medicationStatement][=].resource = MedicationStatement-Euthyrox-Novak
* entry[medicationStatement][+].fullUrl = "urn:uuid:f34114fc-138f-4bd8-8e1a-804d14ec9986"
* entry[medicationStatement][=].resource = MedicationStatement-Paracetamol-Novak
//* entry[goal][+].fullUrl = "urn:uuid:620b1120-cece-44b1-89f5-20413054eb1d"
//* entry[goal][=].resource = Goal-hernia-treatment
* entry[medicationStatement][+].fullUrl = "urn:uuid:bf08b62b-0abd-4e88-9092-ce0228382e51"
* entry[medicationStatement][=].resource = MedicationStatement-Ibalgin400-Novak
* entry[medication][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002c"
* entry[medication][=].resource = Medication-Euthyrox
* entry[medication][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002d"
* entry[medication][=].resource = Medication-Paracetamol
* entry[medication][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002e"
* entry[medication][=].resource = Medication-Ibalgin400
* entry[procedure][+].fullUrl = "urn:uuid:ffb1a62f-9050-4e33-af4b-4cdb8203c9e5"
* entry[procedure][=].resource = Procedure-inguinal-hernia
// * entry[consent][+].fullUrl = "urn:uuid:b3f0f517-9c64-4b8f-99d9-72183cfd9ef0"
// * entry[consent][=].resource = CZ-AdvanceDirectives-HDR-DNR
* entry[observation][+].fullUrl = "urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a"
* entry[observation][=].resource = ExampleBMI
* entry[observation][+].fullUrl = "urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a"
* entry[observation][=].resource = ExampleChestCircumference
* entry[observation][+].fullUrl = "urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d"
* entry[observation][=].resource = ExampleHeadCircumference
* entry[observation][+].fullUrl = "urn:uuid:6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a"
* entry[observation][=].resource = ExampleAbdominalCircumference
* entry[observation][+].fullUrl = "urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b"
* entry[observation][=].resource = ExampleHeight
* entry[observation][+].fullUrl = "urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c"
* entry[observation][=].resource = ExampleWeight
* entry[observation][+].fullUrl = "urn:uuid:8d2aea77-f576-4d0f-9508-537359aa44d6"
* entry[observation][=].resource = ExampleBloodPressure
* entry[observation][+].fullUrl = "urn:uuid:f95f843e-701f-434a-94c9-3c8f0b2d4e3a"
* entry[observation][=].resource = Observation-TravelHistory-Madagaskar
* entry[practitioner][+].fullUrl = "urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a"
* entry[practitioner][=].resource = Practitioner-Author
* entry[practitioner][+].fullUrl = "urn:uuid:860c684f-aba1-40d9-94cf-721d70237b52"
* entry[practitioner][=].resource = Practitioner-UZV
* entry[practitioner][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000028"
* entry[practitioner][=].resource = Practitioner-Admitter
* entry[practitioner][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000032"
* entry[practitioner][=].resource = Practitioner-Referrer
* entry[practitioner][+].fullUrl = "urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b"
* entry[practitioner][=].resource = Practitioner-2
// * entry[observation][+].fullUrl = "urn:uuid:af4dcfeb-2cb3-4fc8-98e2-5c8f0b2d4e3a"
// * entry[observation][=].resource = Observation-InfectiousContact
* entry[medicationDispense][+].fullUrl = "urn:uuid:133cea11-09c6-4147-80af-6c8f0b2d4e3a"
* entry[medicationDispense][=].resource = MedicationDispense-Euthyrox
* entry[medicationDispense][+].fullUrl = "urn:uuid:65c49e6d-0951-4e83-8e2c-7c8f0b2d4e3a"
* entry[medicationDispense][=].resource = MedicationDispense-Paracetamol
* entry[medicationDispense][+].fullUrl = "urn:uuid:b0001bf8-976a-4d7d-b192-8c8f0b2d4e3a"
* entry[medicationDispense][=].resource = MedicationDispense-Ibalgin400
//* entry[observation][+].fullUrl = "urn:uuid:e15aeeaf-e288-404c-9704-9c8f0b2d4e3a"
//* entry[observation][=].resource = Observation-UZV-Novak
* entry[observation][+].fullUrl = "urn:uuid:10f5c49e-086d-4016-8dd1-10000000001b"
* entry[observation][=].resource = Observation-CRP-Novak
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001c"
* entry[observation][=].resource = ExampleSdohSmoking
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001d"
* entry[observation][=].resource = ExampleSdohAlcohol
* entry[immunization][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001e"
* entry[immunization][=].resource = Immunization
* entry[deviceUseStatement][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000001f"
* entry[deviceUseStatement][=].resource = DeviceUseStatement-Pacemaker
* entry[device][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000030"
* entry[device][=].resource = Device-Pacemaker
* entry[procedure][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000020"
* entry[procedure][=].resource = Procedure-Insert-Pacemaker2
//* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000021"
//* entry[observation][=].resource = Observation-DischargeCondition
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000022"
* entry[observation][=].resource = Observation-Participation-in-society
//* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000023"
//* entry[observation][=].resource = Observation-Work-situation
//* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000024"
//* entry[observation][=].resource = Observation-Hobby
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000025"
* entry[observation][=].resource = Observation-Social-network
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000026"
* entry[observation][=].resource = Observation-Education-level
* entry[observation][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000027"
* entry[observation][=].resource = Observation-Education
* entry[organization][+].fullUrl = "urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169"
* entry[organization][=].resource = Organization-1
* entry[organization][+].fullUrl = "urn:uuid:a4641bd0-34af-4038-a7db-872d08a54df9"
* entry[organization][=].resource = Organization-L1-HOSP
* entry[organization][+].fullUrl = "urn:uuid:af2b3114-e872-43b9-9875-cceb39122f7f"
* entry[organization][=].resource = Organization-L1-Odd
* entry[organization][+].fullUrl = "urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1"
* entry[organization][=].resource = Organization-L1
* entry[organization][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-100000000033"
* entry[organization][=].resource = Organization-Referrer
* entry[location][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002a"
* entry[location][=].resource = Location-Chrudim-Chir1
* entry[location][+].fullUrl = "urn:uuid:3f85726c-ad2f-441b-89ce-10000000002b"
* entry[location][=].resource = Location-Chrudim-ChirJIP
// Prezentovatelná forma dokumentu je součástí kompozice, zde by byla vložena duplicitně
// proto jsou tyto dva řádky zakomentovány
//* entry[documentReference][+].fullUrl = "urn:uuid:66678621-df93-47ca-a36c-2a39a92472e7"
//* entry[documentReference][=].resource = DischargeDocumenPDF
//* entry[provenance][+].fullUrl = "urn:uuid:cdae7735-f7ee-4bc7-9cf3-3dc806a4eabb"
//* entry[provenance][=].resource = signature-L3
* entry[flag][+].fullUrl = "urn:uuid:5a17a710-193e-4490-a627-7202925aa56e"
* entry[flag][=].resource = Flag-malnutrition-Novak

Instance: DischargeComposition-Novak-Petr-Subsections
InstanceOf: CompositionEuHdr
Title: "Composition: HDR (Petr Novák)"
Description: "HL7 EU HDR Composition with sub-sections for patient Novák Petr"
Usage: #example
* language = #cs
* id = "701f51d5-78bf-428e-a6b5-349c2614ce07"
* identifier.system = "https://example.hospital.org/sid/compositions"
* identifier.value = "this.composition.identifier"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34105-7
* type.coding[0].display = "propouštěcí zpráva z nemocnice" //"Hospital Discharge summary"
//* category[document-category] = $loinc#11503-0
* category[+] = $loinc#LP72467-1 "Discharge summary note"
* title = "Propouštěcí zpráva pacienta Novák Petr"
* date = "2025-03-10T14:30:00+01:00"
//* author[+] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* author[+] = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
//* author[+] = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169)         // document authored by practitioner role
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)            // document subject is patient
//Důvod přijetí je obsažen v Encouteru ReasonReference
* encounter = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620)
// * extension[presentedForm].valueAttachment.type  = http://hl7.org/fhir/related-artifact-type#documentation
// * extension[presentedForm].valueAttachment.label = "Presented form"
//* extension[presentedForm].valueAttachment = cz-pdfhdr-example
* confidentiality = #N

//doplnit část pro custodian pod attester
* custodian = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169) // Example Organization as custodian
* attester[0].mode = #legal
* attester[0].time = "2025-03-10T14:30:00+01:00"
* attester[0].party = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Attester is the same as one of the authors

//Urgentní informace
/// Sekce Alergie
* section[sectionAllergies].title = "Alergie, intolerance a varování"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "alergie a nežádoucí reakce" //"Allergies and adverse reactions Document"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Alergie na jahody, od 01.01.2020, reakce: Svědění, otok jazyka</div>"
* section[sectionAllergies].entry[allergyOrIntolerance][0] = Reference(urn:uuid:6cf80cb1-9766-470f-ac36-b1d3d8950f1b)
* section[sectionAllergies].text.status = #generated

///TODO Doplnit Alerts
// Sekce Varování
* section[sectionAlert].title = "Varování"
* section[sectionAlert].code.coding[0].system = $loinc
* section[sectionAlert].code.coding[0].code = #104605-1 // Alerts LOINC=104605-1
* section[sectionAlert].code.coding[0].display = "upozornění a varování" //"Alert"
* section[sectionAlert].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Pacient trpí mírnou podvýživou – doporučená nutriční terapie</div>"
* section[sectionAlert].text.status = #generated
* section[sectionAlert].entry[0] = Reference(urn:uuid:5a17a710-193e-4490-a627-7202925aa56e)

// Diagnostický souhrn:
// Sekce Diagnostický souhrn
* section[sectionDiagnosticSummary].title = "Diagnostický souhrn"
* section[sectionDiagnosticSummary].code.coding[0].system = $loinc
* section[sectionDiagnosticSummary].code.coding[0].code = #11535-2 // Problem list
* section[sectionDiagnosticSummary].code.coding[0].display = "diagnostický souhrn" //"Hospital discharge diagnosis note"
* section[sectionDiagnosticSummary].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>K40.9 – Inguinální kýla, nespecifikovaná </p>
    <p>E89.0 – Hypotyreóza po léčbě (v anamnéze) </p>
  </div>
  """
* section[sectionDiagnosticSummary].text.status = #generated
* section[sectionDiagnosticSummary].entry[0] = Reference(urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2)
* section[sectionDiagnosticSummary].entry[1] = Reference(urn:uuid:fdf9e92d-ac48-4706-b15b-d2eaca85f45f)

// Významné výkony
// Sekce Významné procedury
* section[sectionSignificantProcedures].title = "Významné procedury"
* section[sectionSignificantProcedures].code.coding[0].system = $loinc
* section[sectionSignificantProcedures].code.coding[0].code = #10185-7
* section[sectionSignificantProcedures].code.coding[0].display = "provedené výkony v průběhu hospitalizace" //"Hospital discharge procedure note"
* section[sectionSignificantProcedures].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Plastika pravostranné tříselné kýly dne 2. 3. 2025.</div>"
* section[sectionSignificantProcedures].text.status = #generated
* section[sectionSignificantProcedures].entry[0] = Reference(urn:uuid:ffb1a62f-9050-4e33-af4b-4cdb8203c9e5)

//Léčba vybraná není v EU můžeme vypustit? 2.7.4
// TODO doplnit terapeutickou intervenci


//Výsledky vše na jednom místě, očekávané (nemají valsní sekci) a již připravené:
///sekce Výsledky vyšetření
* section[sectionSignificantResults].title = "Výsledky vyšetření"
* section[sectionSignificantResults].code.coding[0].system = $loinc
* section[sectionSignificantResults].code.coding[0].code = #30954-2  //Relevant diagnostic tests/laboratory data
* section[sectionSignificantResults].code.coding[0].display = "výsledky diagnostických a/nebo laboratorních vyšetření" //"Relevant diagnostic tests/laboratory data note"
* section[sectionSignificantResults].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Významné výsledky vyšetření v průběhu hospitalizace</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah je mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
  </div>"""
* section[sectionSignificantResults].text.status = #additional
//* section[sectionSignificantResults].entry[0] = Reference(urn:uuid:e15aeeaf-e288-404c-9704-9c8f0b2d4e3a) // Corrected Reference to include the resource type
* section[sectionSignificantResults].entry[0] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-10000000001b) // Corrected Reference to include the resource type

// Sekce Implantáty a zdravotní pomůcky
* section[sectionMedicalDevices].title = "Zdravotní pomůcky a implantáty"
* section[sectionMedicalDevices].code.coding[0].system = $loinc
* section[sectionMedicalDevices].code.coding[0].code = #46264-8 // Historie implantátů
* section[sectionMedicalDevices].code.coding[0].display = "zdravotní přístroje a implantáty"
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\"><div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\"><p>Pacientovi byl implantován kardiostimulátor Medtronic model W1DR01.</p></div>" // Added required text for cardinality
* section[sectionMedicalDevices].text.status = #generated
* section[sectionMedicalDevices].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001f) // Example reference to a medical device
* section[sectionMedicalDevices].entry[1] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000020) // Example reference to another medical device

//Sekce Průběh hospitalizace - klinické shrnutí
* section[sectionHospitalCourse].title = "Klinické shrnutí"
* section[sectionHospitalCourse].code = $loinc#8648-8 "průběh hospitalizace" //"Hospital course note"
* section[sectionHospitalCourse].text.div = """<div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
  Pacient byl přijat dne 1. 3. 2025 na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Během hospitalizace byla provedena předoperační příprava včetně laboratorních vyšetření a interního předoperačního vyšetření.
  Dne 2. 3. 2025 byla v celkové anestezii provedena operace – plastika pravostranné tříselné kýly. Operační výkon proběhl bez komplikací. Pacient byl pooperačně stabilní, bez známek infekce rány.
  V rámci hospitalizace byla u pacienta sledována substituční léčba hypotyreózy (Euthyrox 75 µg denně), bez nutnosti úpravy dávkování. Hodnota TSH při přijetí v normě.
  Pacient byl v dobrém stavu propuštěn do domácího ošetření dne 10. 3. 2025. Doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní.
  </div>""" // Added required text for cardinality
* section[sectionHospitalCourse].text.status = #additional //Additional text status for generated narrative /HONza
* section[sectionHospitalCourse].entry[0] = Reference(urn:uuid:10f5c49e-086d-4016-8dd1-b555306bf620) // encounter

// --- DischargeDetails – subsections added ---
// Sekce pro poznámku k propuštění sectionDischargeDetails
* section[sectionDischargeDetails].title = "Poznámka k propuštění"
* section[sectionDischargeDetails].code.coding[0].system = $loinc
* section[sectionDischargeDetails].code.coding[0].code = #8650-4 // Discharge details
* section[sectionDischargeDetails].code.coding[0].display = "stav při propuštění" //"Hospital discharge disposition note"
* section[sectionDischargeDetails].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Pacient byl propuštěn z nemocnice dne 10. 3. 2025 po úspěšné operaci pravostranné tříselné kýly. Při propuštění byl pacient v dobrém stavu, bez známek komplikací. Byla doporučena klidová režimová opatření, kontrola v chirurgické ambulanci za 7 dní. Pacient byl informován o nutnosti dodržování pooperačního režimu a o možných komplikacích, které by měly být hlášeny lékaři. Pacient byl propuštěn do domácího ošetření s doporučením k dalšímu sledování a péči.</p>
    <p>Kontakty pro další informace:</p>
    <ul>
      <li>Chirurgická ambulance: +420 123 456 789</li>
      <li>Praktický lékař: +420 987 654 321</li>
      <li>Nemocnice: +420 111 222 333</li>
    </ul>
    <p>Pacient byl propuštěn s doporučením k dalšímu sledování a péči. V případě jakýchkoli potíží nebo nejasností je doporučeno kontaktovat lékaře nebo navštívit nejbližší pohotovost.</p>
  </div>""" // Added required text for cardinality
* section[sectionDischargeDetails].text.status = #additional
* section[sectionDischargeDetails].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)

// Functional status at discharge (subsection)
* section[sectionDischargeDetails].section[+].title = "Funkční stav při propuštění"
* section[sectionDischargeDetails].section[=].code.coding[0].system = $loinc
* section[sectionDischargeDetails].section[=].code.coding[0].code = #47420-5
* section[sectionDischargeDetails].section[=].code.coding[0].display = "hodnocení funkčních schopností" //"Functional status assessment note"
* section[sectionDischargeDetails].section[=].text.status = #additional
* section[sectionDischargeDetails].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Funkční stav pacienta při propuštění:</p>
    <ul>
      <li>Chůze: samostatná, bez pomůcek.</li>
      <li>ADL: plně soběstačný, bez potřeby asistence.</li>
      <li>Kognice a komunikace: plně orientovaný, adekvátní komunikace.</li>
      <li>Bolest: mírná bolest v oblasti operační rány při pohybu; běžné aktivity bez omezení.</li>
    </ul>
    <p>Doporučeno vyhnout se fyzické zátěži 4 týdny.</p>
  </div>"""
* section[sectionDischargeDetails].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)

// Objective findings at discharge (subsection)
* section[sectionDischargeDetails].section[=].title = "Objektivní nález při propuštění"
* section[sectionDischargeDetails].section[=].text.status = #additional
* section[sectionDischargeDetails].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Objektivní nález při propuštění:</p>
    <ul>
      <li>Vědomí: plně orientovaný, spolupracující.</li>
      <li>Plíce: čisté, bez poslechových nálezů.</li>
      <li>Srdce: pravidelný rytmus, bez šelestů.</li>
      <li>Břicho: měkké, nebolestivé, peristaltika slyšitelná.</li>
      <li>Operační rána: suchá, bez známek infekce, sutura v pořádku, bez hematomu.</li>
      <li>Končetiny: bez otoků, normální prokrvení, pohyblivost zachována.</li>
    </ul>
    <p>Celkově dobrý stav, bez komplikací po výkonu.</p>
  </div>"""
* section[sectionDischargeDetails].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
  //TODO přidat nějaká strukturovaná data z vyšetření

* section[sectionDischargeDetails].section[+].title = "Antropometrická data"
* section[sectionDischargeDetails].section[=].code = $sctCZ#248326004 "Body measurements"
// * section[sectionDischargeDetails].section[=].code.coding[0].system = $sct
// * section[sectionDischargeDetails].section[=].code.coding[0].version = $sctCZversion
// * section[sectionDischargeDetails].section[=].code.coding[0].code = #248326004
// * section[sectionDischargeDetails].section[=].code.coding[0].display = "Body measurements"
//todo přidat narativní část
* section[sectionDischargeDetails].section[=].text.status = #additional
* section[sectionDischargeDetails].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Antropometrická data při propuštění:</p>
    <ul>
      <li>Výška: 180 cm</li>
      <li>Hmotnost: 75 kg</li>
      <li>BMI: 23,1 kg/m² (normální váha)</li>
      <li>Obvod pasu: 85 cm</li>
      <li>Obvod boků: 100 cm</li>
    </ul>
  </div>"""
* section[sectionDischargeDetails].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionDischargeDetails].section[=].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionDischargeDetails].section[=].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionDischargeDetails].section[=].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionDischargeDetails].section[=].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionDischargeDetails].section[=].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a)

* section[sectionDischargeDetails].section[+].title = "Vital sings"
* section[sectionDischargeDetails].section[=].text.status = #generated
* section[sectionDischargeDetails].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Vitální funkce</p>
    <ul>
      <li>Vital signs: TK 120/80 mmHg, P 75/min, T 36,5 °C.</li>
    </ul>
  </div>"""
* section[sectionDischargeDetails].section[=].entry[0] = Reference(urn:uuid:8d2aea77-f576-4d0f-9508-537359aa44d6)

//Sekce Souhrn Medikace
* section[sectionPharmacotherapy].title = "Medikace"
* section[sectionPharmacotherapy].code.coding[+].system = $loinc
* section[sectionPharmacotherapy].code.coding[=].code = #87232-5
* section[sectionPharmacotherapy].code.coding[=].display = "farmakoterapie" //"Medication administration.brief"
* section[sectionPharmacotherapy].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Medikace při propuštění</p>
    <ul>
      <li>Euthyrox 75 µg denně – substituce hypotyreózy</li>
      <li>Paracetamol 500 mg – při bolesti</li>
      <li>Ibalgin 400 mg – při bolesti</li>
    </ul>
  </div>
  """
* section[sectionPharmacotherapy].text.status = #additional
* section[sectionPharmacotherapy].entry[0] = Reference(urn:uuid:47472c99-09bf-4007-bfaa-16c9665ae090)
* section[sectionPharmacotherapy].entry[1] = Reference(urn:uuid:f34114fc-138f-4bd8-8e1a-804d14ec9986)
* section[sectionPharmacotherapy].entry[2] = Reference(urn:uuid:bf08b62b-0abd-4e88-9092-ce0228382e51)
* section[sectionPharmacotherapy].entry[3] = Reference(urn:uuid:133cea11-09c6-4147-80af-6c8f0b2d4e3a)
* section[sectionPharmacotherapy].entry[4] = Reference(urn:uuid:65c49e6d-0951-4e83-8e2c-7c8f0b2d4e3a)
* section[sectionPharmacotherapy].entry[5] = Reference(urn:uuid:b0001bf8-976a-4d7d-b192-8c8f0b2d4e3a)
//Rozdělit co bylo v průběhu hospitalizace a co bylo při propuštění


//sekce Doporučení - Plán péče
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = "http://loinc.org"
* section[sectionPlanOfCare].code.coding[0].code = #18776-5   //Plan of care note  (58222-1 .. Discharge plan)
* section[sectionPlanOfCare].code.coding[0].display = "plán péče" //"Plan of care note"
* section[sectionPlanOfCare].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
  <p>Plán péče – tříselná kýla </p>
     <ul>
      <li>Pooperační sledování, převazy, kontrola rány.</li>
      <li>Edukace pacienta o režimu po operaci.</li>
      <li>Ambulantní kontrola za 14 dní.</li>
    </ul>
  </div>"""
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].entry[0] = Reference(urn:uuid:9c913d06-84fe-4d35-b35b-8b0c7965f535)


//Volitelné části


//

//Add section PatientHx
* section[sectionPatientHx].title = "Osobní anamnéza"
// * section[sectionPatientHx].code.coding[0].system = "http://loinc.org"
// * section[sectionPatientHx].code.coding[0].code = #35090-0 // Patient history note
* section[sectionPatientHx].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Osobní anamnéza: pacient prodělal v roce 2015 apendektomii, v roce 2018 byl léčen pro hypertenzi. V roce 2020 prodělal chřipku bez komplikací. V anamnéze je také hypotyreóza, léčená substituční terapií (Euthyrox 75 µg denně).</p>
  </div>"""
* section[sectionPatientHx].text.status = #additional

///Add section for Family History
* section[sectionPatientHx].section[+].title = "Rodinná anamnéza"
* section[sectionPatientHx].section[=].code.coding[0].system = "http://loinc.org"
* section[sectionPatientHx].section[=].code.coding[0].code = #10157-6 // Corrected code assignment
* section[sectionPatientHx].section[=].code.coding[0].display = "History of family member diseases note"
* section[sectionPatientHx].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Rodinná anamnéza: matka zemřela na infarkt ve věku 75 let, otec žije, má 80 let a trpí hypertenzí. Sourozenci zdraví.</p>
  </div>"""
* section[sectionPatientHx].section[=].text.status = #additional


//Add section for social history
* section[sectionPatientHx].section[+].title = "Sociální anamnéza"
* section[sectionPatientHx].section[=].code.coding[0].system = "http://loinc.org"
* section[sectionPatientHx].section[=].code.coding[0].code = #29762-2 // Corrected code assignment
* section[sectionPatientHx].section[=].code.coding[0].display = "faktory životního stylu" //"Social history note"
* section[sectionPatientHx].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
  <p><strong>Společenské uplatnění</strong></p>
    <p>Pracovní zapojení: Pacient pracuje jako programátor na plný úvazek v IT firmě.</p>
    <p>Koníčky: Pacient aktivně sportuje (jezdí na kole a běhá) a má zájem o fotografování.</p>
    <p>Sociální síť: Pacient má širokou sociální síť, pravidelně se setkává s přáteli a rodinou.</p>
  <p><strong>Vzdělání</strong></p>
    <p>Dosažený stupeň vzdělání: Pacient má vysokoškolské vzdělání v oboru informatiky.</p>
  </div>"""
* section[sectionPatientHx].section[=].text.status = #additional
* section[sectionPatientHx].section[=].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000022)
* section[sectionPatientHx].section[=].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000027)
* section[sectionPatientHx].section[=].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001c)
* section[sectionPatientHx].section[=].entry[+] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001d)

//Add section for imunizations
* section[sectionPatientHx].section[+].title = "Očkování"
* section[sectionPatientHx].section[=].code.coding[0].system = "http://loinc.org"
* section[sectionPatientHx].section[=].code.coding[0].code = #11369-6
* section[sectionPatientHx].section[=].code.coding[0].display = "přehled očkování" //"History of Immunization note"
* section[sectionPatientHx].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Pacient byl očkován vakcínou proti onemocnění COVID-19 (SNOMED CT: 1119349007) dne 5. 5. 2021. Očkování bylo provedeno a zaznamenáno jako kompletní, bez komplikací.</p>
  </div>
  """
* section[sectionPatientHx].section[=].text.status = #generated
* section[sectionPatientHx].section[=].entry[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000001e)

// Sekce Infekční kontakty
/*
* section[sectionPatientHx].section[+].title = "Infekční kontakty"
* section[sectionPatientHx].section[=].code = TemporaryHDRSystem#infection-contact "Infectious contacts"
* section[sectionPatientHx].section[=].text.status = #additional
* section[sectionPatientHx].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\"><p>Pacient byl v kontaktu s osobou nakaženou COVID-19.</p></div>"
* section[sectionPatientHx].section[=].entry[0] = Reference(urn:uuid:af4dcfeb-2cb3-4fc8-98e2-5c8f0b2d4e3a)
*/

// Sekce cestovatelská anamnéza
* section[sectionPatientHx].section[+].title = "Cestovatelská anamnéza"
* section[sectionPatientHx].section[=].code = $loinc#10182-4 "History of Travel note"
* section[sectionPatientHx].section[=].text.status = #additional
* section[sectionPatientHx].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\"><p>Pacient nedávno cestoval na Madagaskar.</p></div>"
* section[sectionPatientHx].section[=].entry[0] = Reference(urn:uuid:f95f843e-701f-434a-94c9-3c8f0b2d4e3a)
* section[sectionPatientHx].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) // Example reference to a travel history observation


//* section[sectionHospitalCourse].title = "Průběh hospitalizace - klinické shrnutí"
//Sekce Předem vyslovená přání
/*
* section[sectionAdvanceDirectives].title = "Dříve vyjádřená přání"
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Neresuscitovat</div>"
* section[sectionAdvanceDirectives].text.status = #generated
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:b3f0f517-9c64-4b8f-99d9-72183cfd9ef0)
*/

//Stav při přijetí
* section[sectionAdmissionEvaluation].title = "Stav při přijetí"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67851-6 // Corrected code assignment
* section[sectionAdmissionEvaluation].code.coding[0].display = "vstupní vyšetření" //"Admission evaluation note"
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Pacient byl přijat na chirurgické oddělení s bolestivou pravostrannou tříselnou kýlou, která byla nevratná, bez známek strangulace. Při příjmu byl pacient v dobrém stavu, vitální funkce stabilní. Při fyzikálním vyšetření bylo zjištěno bolestivé zduření v oblasti pravého tříselného kanálu, bez známek zánětu nebo infekce. Laboratorní vyšetření ukázalo normální hodnoty krevního obrazu a biochemie, včetně TSH v normálním rozmezí. Pacient byl stabilní, bez známek dehydratace nebo hypovolemie. Byla zahájena předoperační příprava včetně interního vyšetření a laboratorních testů. Pacient byl informován o nutnosti chirurgického zákroku a souhlasil s ním. </div>" // Added required text for cardinality
* section[sectionAdmissionEvaluation].text.status = #additional
/* section[sectionAdmissionEvaluation].section[0].title = "Vital sings"
* section[sectionAdmissionEvaluation].section[=].code = $loinc#8716-3 "Vital signs note"
* section[sectionAdmissionEvaluation].section[=].text.status = #generated
* section[sectionAdmissionEvaluation].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Vital signs</div>"
* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionAdmissionEvaluation].section[=].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionAdmissionEvaluation].section[=].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionAdmissionEvaluation].section[=].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[5] = Reference(urn:uuid:6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a) // Corrected Reference to include the resource type
* section[sectionAdmissionEvaluation].section[=].entry[6] = Reference(urn:uuid:f0b20060-c4a8-4a74-b12a-6c8f0b2d4e3a) // Corrected Reference to include the resource type
*/
// --- Admission Evaluation – Functional status at admission ---
* section[sectionAdmissionEvaluation].section[+].title = "Functional status at admission"
* section[sectionAdmissionEvaluation].section[=].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].section[=].code.coding[0].code = #47420-5
* section[sectionAdmissionEvaluation].section[=].code.coding[0].display = "hodnocení funkčních schopností" //"Functional status assessment note"
* section[sectionAdmissionEvaluation].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Funkční stav pacienta při přijetí:</p>
    <ul>
      <li>Chůze: samostatná, bez pomůcek.</li>
      <li>ADL: soběstačný, bez potřeby asistence.</li>
      <li>Kognice a komunikace: plně orientovaný, adekvátní komunikace.</li>
      <li>Bolest: lokalizovaná v pravém třísle při námaze, jinak bez omezení.</li>
    </ul>
    <p>Při přijetí pacient soběstačný, bez významného omezení v běžných denních činnostech, limitace pouze bolestí v pravém třísle.</p>
  </div>"""
* section[sectionAdmissionEvaluation].section[=].text.status = #additional
* section[sectionAdmissionEvaluation].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)


// --- Admission Evaluation – Objective findings at admission ---
* section[sectionAdmissionEvaluation].section[+].title = "Physical findings at admission"
* section[sectionAdmissionEvaluation].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Objektivní nález při přijetí:</p>
    <ul>
      <li>Vědomí: plně orientovaný, spolupracující.</li>
      <li>Vital signs: TK 125/80 mmHg, P 78/min, T 36,7 °C, dechová frekvence 16/min.</li>
      <li>Břicho: měkké, nebolestivé, peristaltika slyšitelná.</li>
      <li>Pravé tříslo: hmatné měkké vyklenutí v oblasti tříselného kanálu, zvětšující se při kašli, bez zarudnutí či známek strangulace.</li>
      <li>Kůže: bez patologických změn.</li>
    </ul>
    <p>Významné výsledky vyšetření v průběhu hospitalizace:</p>
    <ul>
      <li>UZ vyšetření pravého třísla: v oblasti tříselného kanálu patrný hypoechogenní vak komunikující s peritoneální dutinou, obsahující střevní kličku. Obsah mobilní, bez známek ischemie. Závěr: vpravo tříselná kýla bez známek komplikace.</li>
      <li>CRP: 6 mg/L (norma: 0–10 mg/L)</li>
    </ul>
  </div>"""
* section[sectionAdmissionEvaluation].section[=].text.status = #additional
* section[sectionAdmissionEvaluation].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)

* section[sectionAdmissionEvaluation].section[+].title = "Antropometrická data"
* section[sectionAdmissionEvaluation].section[=].code = $sctCZ#248326004 "Body measurements"
// * section[sectionAdmissionEvaluation].section[=].code.coding[0].system = $sctCZ
// * section[sectionAdmissionEvaluation].section[=].code.coding[0].code = #248326004
// * section[sectionAdmissionEvaluation].section[=].code.coding[0].display = "Body measurements"
//todo přidat narativní část
* section[sectionAdmissionEvaluation].section[=].text.status = #additional
* section[sectionAdmissionEvaluation].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Antropometrická data při propuštění:</p>
    <ul>
      <li>Výška: 180 cm</li>
      <li>Hmotnost: 75 kg</li>
      <li>BMI: 23,1 kg/m² (normální váha)</li>
      <li>Obvod pasu: 85 cm</li>
      <li>Obvod boků: 100 cm</li>
    </ul>
  </div>"""
* section[sectionAdmissionEvaluation].section[=].author[0] = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(urn:uuid:6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b)
* section[sectionAdmissionEvaluation].section[=].entry[1] = Reference(urn:uuid:5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c)
* section[sectionAdmissionEvaluation].section[=].entry[2] = Reference(urn:uuid:7cf304de-5ae3-4621-8531-9c8f0b2d4e3a)
* section[sectionAdmissionEvaluation].section[=].entry[3] = Reference(urn:uuid:5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d)
* section[sectionAdmissionEvaluation].section[=].entry[4] = Reference(urn:uuid:4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a)

* section[sectionAdmissionEvaluation].section[+].title = "Vital sings"
* section[sectionAdmissionEvaluation].section[=].text.status = #generated
* section[sectionAdmissionEvaluation].section[=].text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
    <p>Vitální funkce</p>
    <ul>
      <li>Vital signs: TK 120/80 mmHg, P 75/min, T 36,5 °C.</li>
    </ul>
  </div>"""
* section[sectionAdmissionEvaluation].section[=].entry[0] = Reference(urn:uuid:8d2aea77-f576-4d0f-9508-537359aa44d6)


Instance: Practitioner-Author
InstanceOf: PractitionerEuCore
Usage: #example
Description: "Participant HDR"
* language = #cs
* id = "a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "151607357"
* name.use = #usual
* name.text = "MUDr. Ivan Anděl"
* telecom[+].system = #phone
* telecom[=].value = "+420603777227"
* telecom[=].use = #work
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">MUDr. Ivan Anděl, tel: +420 603 777 227</div>"
* text.status = #generated


Instance: Practitioner-Author-detail
InstanceOf: PractitionerRoleEuCore
Usage: #example
Description: "Practitioner role MUDr. Ivan Anděl"
* language = #cs
* id = "2b7e9637-5018-4542-9faf-d5abdee7b849"
* practitioner = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a) "MUDr. Ivan Anděl"
* organization = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169) "Nemocnice Chrudim"
* specialty = $sctCZ#419192003 "interní medicína" //"Internal medicine"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">MUDr. Ivan Anděl, interní lékař, Nemocnice Chrudim, Václavská 570, 537 01 Chrudim, tel: +420 603 777 227</div>"
* text.status = #generated


Instance: Organization-1
InstanceOf: OrganizationEuCore
Usage: #example
Description: "An example of the organization of a provider"
* language = #cs
* id = "ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "27520536"
* name = "Nemocnice Chrudim"
* telecom.system = #phone
* telecom.value = "+420603853227"
* telecom.use = #work

* address[+]
  * use = #work
  * type = #both
  * text = "Václavská 570, 537 01, Chrudim"
  * line[+] = "Václavská 570"
  * line[=].extension[streetName].valueString = "Václavská"
  * line[=].extension[houseNumber].valueString = "570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ //"Czechia"

Instance: Practitioner-2
InstanceOf: PractitionerEuCore
Usage: #example
Description: "Practitioner id(KRZP)=987654321"
* language = #cs
* id = "5c33bffd-d3b6-401f-85dc-db99d48b8a3b"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654321"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Kašková"
* name.given = "Šárka"
* name.suffix = "PhD"

* gender = #female
* communication[+] = urn:ietf:bcp:47#cs
* communication[+] = urn:ietf:bcp:47#en


//-----------------------------------------------------
Instance: Patient-Novak-Petr
InstanceOf: PatientEuCore
Usage: #example
Description: "Example of patient Petr Novak with identification by czech national identifiers (RID, RCIS) and contact information"
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000000"
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rcis"
  * value = "8506150015"
  * use = #official
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "1597778923"
* name.use = #usual
* name.family = "Novák"
* name.given = "Petr"
* name.prefix = "Ing."
* name.suffix = "Ph.D."
* telecom[+].system = #phone
* telecom[=].value = "+420777111222"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+420333111777"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "novak@example.com"
* telecom[=].use = #home
* address[+]
  * use = #home
  * type = #physical
  * text = "Pavlovova 1424/11, 568 02 Svitavy - Předměstí"
  * line[+] = "Pavlovova 1424/11"
    * extension[streetName].valueString = "Pavlovova"
    * extension[houseNumber].valueString = "1424/11"
  * city = "Svitavy - Předměstí"
  * postalCode = "56802"
  * country = "CZ"
//Patient gender, birthday
* gender = #male
* birthDate = "1985-06-15"
//Contact persons and their details
//guardian -contact person
* contact[+].relationship.coding[+] = $v3-RoleCode#MTH "Mother"
* contact[=].relationship.coding[+] = $v2-0131#N "Next-of-Kin"
* contact[=].name.use = #usual
* contact[=].name.family = "Nováková"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420601111111"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Krátká 18, 708 00, Ostrava, Česká Republika"
* contact[=].address[=].line[+] = "Krátká 18"
* contact[=].address[=].line[=].extension[streetName].valueString = "Krátká"
* contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
* contact[=].address[=].city = "Ostrava"
* contact[=].address[=].postalCode = "70800"
* contact[=].address[=].country = "CZ"
//contact person
* contact[+].relationship.coding[+] = $v3-RoleCode#FRND "unrelated friend"
* contact[=].relationship.coding[+] = $v2-0131#N "Next-of-Kin"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420601333333"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
* contact[=].address[=].line[+] = "Horná ulica 18"
* contact[=].address[=].line[=].extension[streetName].valueString = "Horná ulica"
* contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
* contact[=].address[=].city = "Trenčín"
* contact[=].address[=].postalCode = "12345"
* contact[=].address[=].country = "SK"
//Patient communication
* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#en


Instance: HospitalEncounter-Novak-Petr
InstanceOf: EncounterEuHdr
Usage: #example
Title: "Encounter-HDR Example of encounter with emergency priority"
Description: "Czech HDR - example of encounter with emergency priority"
* language = #cs
* id = "10f5c49e-086d-4016-8dd1-b555306bf620"
* status = $encounter-status#finished
* class.code = #IMP
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.display = "Inpatient encounter"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* period.start = "2025-03-01T10:15:00+01:00"
* period.end = "2025-03-10T09:30:00+01:00"
* serviceProvider = Reference(urn:uuid:a4641bd0-34af-4038-a7db-872d08a54df9)
// Reason for encounter
* reasonReference = Reference(urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2)
* hospitalization.admitSource.coding[0].system = "http://terminology.hl7.org/CodeSystem/admit-source"
* hospitalization.admitSource.coding[0].code = #outp
* hospitalization.admitSource.coding[0].display = "From outpatient department"
* priority.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActPriority"
* priority.coding[0].code = #EM
* priority.coding[0].display = "emergency"
* participant[0].individual = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000028)
* participant[0].type.coding[0].system = $v3-ParticipationType
* participant[0].type.coding[0].code = #ADM
* participant[0].type.coding[0].display = "Admitter"
* participant[1].individual = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000029)
* participant[1].type.coding[0].system = $v3-ParticipationType
* participant[1].type.coding[0].code = #REF
* participant[1].type.coding[0].display = "Referrer"
* hospitalization.dischargeDisposition.coding[0].system = $discharge-disposition
* hospitalization.dischargeDisposition.coding[0].code = #home
* hospitalization.dischargeDisposition.coding[0].display = "Home"
// Location details
* location[0].location = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002a)
* location[0].period.start = "2025-03-01T08:00:00+01:00"
* location[0].period.end = "2025-03-02T08:00:00+01:00"
* location[1].location = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002b)
* location[1].period.start = "2025-03-02T08:00:00+01:00"
* location[1].period.end = "2025-03-04T08:00:00+01:00"
* location[2].location = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002a)
* location[2].period.start = "2025-03-04T08:00:00+01:00"
* location[2].period.end = "2025-03-10T08:00:00+01:00"

Instance: Practitioner-Admitter
InstanceOf: PractitionerEuCore
Usage: #example
Description: "Participant Admitter HDR"
* language = #cs
* id = "Practitioner-Admitter"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654321"
* name.use = #usual
* name.text = "MUDr. Karel Volný"
* telecom[+].system = #phone
* telecom[=].value = "+420603853227"
* telecom[=].use = #work

//------------------------------------------------------
Instance: Practitioner-Referrer
InstanceOf: PractitionerEuCore
Usage: #example
Description: "Participant Referrer HDR"
* language = #cs
* id = "Practitioner-Referrer"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654777"
* name.use = #usual
* name.text = "MUDr. Jiří Zdvořilý"
* telecom[+].system = #phone
* telecom[=].value = "+420603777227"
* telecom[=].use = #work


Instance: Condition-K409
InstanceOf: ConditionEuCore
Usage: #example
Title: "Condition-HDR Example K40.9"
Description: "Example of a condition K40.9 with details on admission"
* language = #cs
* id = "35717696-8a99-4f99-a938-ec0ec88a65a2"
// Condition details
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* severity = $sctCZ#24484000 "těžký"
// * severity.coding[0].system = $sctCZ
// * severity.coding[0].code = #24484000
// * severity.coding[0].display = "Severe"
// Condition code
* code.coding[0].system = $icd10
* code.coding[0].code = #K40.9
* code.coding[0].display = "Unilateral or unspecified inguinal hernia, without obstruction or gangrene"
// Condition subject and onset
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
// Condition text
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
  Pacient byl přijat s diagnózou tříselné kýly bez obstrukce a gangrény. Doporučena elektivní operace.
</div>
"""
//Condition category
* category[0] = $sctCZ#278307001 "při přijetí"
* category[1] = $sctCZ#69845001 "podstoupil(a) terapii pro nebo obdržel lék na"
//condition onset
* onsetDateTime = "2023-10-01T10:00:00Z"
//condition stage
* stage.summary = $sctCZ#255604002 "mírný"
// * stage[+].summary.coding[0].system = $sctCZ
// * stage[=].summary.coding[0].code = #255604002
// * stage[=].summary.coding[0].display = "Mild"


//---------------------------------------------
Instance: Condition-E890-Novak
InstanceOf: ConditionEuCore
Usage: #example
Title: "Condition-HDR Example E8.90 for patient Novak"
Description: "HDR - example of a condition (Postoperative Hypothyroidism)"
* language = #cs
* id = "fdf9e92d-ac48-4706-b15b-d2eaca85f45f"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category[0] = $sctCZ#64572001 "choroba"  // "Disease"
* category[1] = $sctCZ#278307001 "při přijetí" //"On admission"
* category[2] = $sctCZ#25265005 "nepodstoupil(a) terapii pro nebo obdržel lék na" //"Did not receive therapy or drug for"
* code = $icd10#E89.0 "Postprocedural hypothyroidism"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* onsetDateTime = "1997-10-06T00:00:00+02:00"
* note.text = "Hypotyreóza po operaci karcinomu štítné žlázy. Zadáno všeobecným lékařem."

//-----------------------------------------------------
Instance: Practitioner-Referrer-detail
InstanceOf: PractitionerRoleEuCore
Usage: #example
Description: "practitioner's detail"
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000029"
* practitioner = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000032) "MUDr. Jiří Zdvořilý"
* organization = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000033) "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
//* code = $cz-nrzp_povolani#L00 "Lékař"
* specialty = $sctCZ#419192003 "interní medicína" //"Internal medicine"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Ambulance interního lékařství, MUDr. Jiří Zdvořilý</div>"
* text.status = #generated

//-----------------------------------------------------
Instance: Organization-Referrer
InstanceOf: OrganizationEuCore
Title: "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
Description: "Example of ambulatory physician"
Usage: #example
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000033"
* name = "Ambulance interního lékařství, MUDr. Jiří Zdvořilý"
* telecom.system = #phone
* telecom.value = "+420603853888"
* telecom.use = #work
* address.line = "Krátká 29, 70500 Ostrava"
* address.city = "Ostrava"
* address.postalCode = "70500"
* address.country = "CZ"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Ambulance interního lékařství, MUDr. Jiří Zdvořilý, Krátká 29, 70500 Ostrava, tel: +420 603 853 888</div>"
* text.status = #generated

//--------------------------------------------
Instance: Location-Chrudim-Chir1
InstanceOf: LocationEuCore
Title: "Sample Czech Location Chrudim Chir1"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-10000000002a"
* status = #active
* name = "Nemocnice Chrudim - Oddělení CHIR1"
* description = "Oddělení chirurgie 1 v nemocnici v Chrudimi"
* managingOrganization = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 789"
* telecom[0].use = #work
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Oddělení CHIR1 nemocnice Chrudim</div>"
* text.status = #generated
//---------------------------------------------------------

Instance: Location-Chrudim-ChirJIP
InstanceOf: LocationEuCore
Title: "Sample Czech Location Chrudim JIP"
Description: "Example instance of a location conforming to the CZ_LocationCore profile."
Usage: #example
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-10000000002b"
* status = #active
* name = "Nemocnice Chrudim - Oddělení CHIR-JIP"
* description = "Oddělení chirurgie JIP v nemocnici v Chrudimi"
* managingOrganization = Reference(urn:uuid:ace081ba-e0a8-4b89-a4a7-c5b7cd3c8169)
//add telephone contact
* telecom[0].system = #phone
* telecom[0].value = "+420 123 456 888"
* telecom[0].use = #work
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Oddělení CHIR-JIP nemocnice Chrudim</div>"
* text.status = #generated

//----------------------------------------
Instance: CarePlan-Novak
InstanceOf: CarePlan
Usage: #example
Title: "CarePlan-Novak-Petr"
Description: "Czech HDR - example of a care plan"
* language = #cs
* id = "9c913d06-84fe-4d35-b35b-8b0c7965f535"
// Care plan details
* status = #active    //http://hl7.org/fhir/ValueSet/request-status
* intent = #plan    //http://hl7.org/fhir/ValueSet/care-plan-intent
//název
* title = "Plán péče – tříselná kýla"
//řeší (DG)
* addresses = Reference(urn:uuid:35717696-8a99-4f99-a938-ec0ec88a65a2)
//popis doporučení
* description = "Plán péče zaměřený na chirurgické řešení jednostranné tříselné kýly (K40.9) u stabilního pacienta. Péče zahrnuje pooperační sledování, edukaci o režimu a následnou ambulantní kontrolu."
* period.start = "2025-03-10T08:00:00+01:00"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
//další podrobnosti plánu, cíle
//* goal = Reference(urn:uuid:620b1120-cece-44b1-89f5-20413054eb1d)
// Activity detail
* activity[+].detail.kind = #ServiceRequest
* activity[=].detail.description = "Pooperační sledování, převazy, kontrola rány"
* activity[=].detail.status = #scheduled
* activity[+].detail.kind = #CommunicationRequest
* activity[=].detail.description = "Edukace pacienta o režimu po operaci"
* activity[=].detail.status = #scheduled
* activity[+].detail.kind = #Appointment
* activity[=].detail.description = "Ambulantní kontrola za 14 dní"
* activity[=].detail.status = #scheduled

//-----------------------------
Instance: Allergy-Strawberry-Novak
InstanceOf: AllergyIntoleranceEuCore
Usage: #example
Title: "AllergyIntolerance - Strawberry for patient Novak"
Description: "Patient experiences itching and tongue swelling in response to strawberries."
* language = #cs
* id = "6cf80cb1-9766-470f-ac36-b1d3d8950f1b"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-1"
* clinicalStatus.coding[0].system = $allergyintolerance-clinical
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = $allergyintolerance-verification
* verificationStatus.coding[0].code = #confirmed
* type = #allergy
* category = #food
* criticality = #low
* code = $sctCZ#102261002
* onsetDateTime = "2020-01-01"
* recordedDate = "2023-10-01"
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* reaction[+]
  * manifestation[+] = $sctCZ#81950002
  * manifestation[+] = $sctCZ#4386001
  * onset = "2020-01-01T12:00:00Z"
* reaction[+]
  * manifestation = $sctCZ#418363000
  * onset = "2022-10-01T10:00:00Z"
  * severity = #mild


//---------------------------------------------------------------------
Instance: MedicationStatement-Euthyrox-Novak
InstanceOf: MedicationStatementEuCore
Usage: #example
Title: "MedicationStatement-HDR Example: Euthyrox"
Description: "HDR - example: Euthyrox"
* language = #cs
* id = "47472c99-09bf-4007-bfaa-16c9665ae090"
* status = #active
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $icd10
* reasonCode.coding[0].code = #E03.9
//* reasonCode.coding[0].display = "Hypotyreóza NS"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "1 tableta denně"
* dosage[0].timing.repeat.frequency = 1
* dosage[0].timing.repeat.period = 1
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].doseAndRate.doseQuantity.value = 1
* dosage[0].doseAndRate.doseQuantity.unit = "{tablet}"
//cesta podání
* dosage.route = $sctCZ#26643006 "perorální podání" // "Oral route"
// * dosage[0].route.coding[0].system = $sctCZ
// * dosage[0].route.coding[0].code = #26643006
// * dosage[0].route.coding[0].display = "Oral route"
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
* medicationReference = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002c)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* identifier[0].system = "http://hospital.example.org/medication-statements"
* identifier[0].value = "47472c99-09bf-4007-bfaa-16c9665ae090"
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"


Instance: Medication-Euthyrox
InstanceOf: MedicationEuCore
Usage: #example
Title: "Dispense – Euthyrox"
Description: "Euthyrox v tabletách"
* id = "3f85726c-ad2f-441b-89ce-10000000002c"
* language = #cs
* status = #active
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivepripravky"
* code.coding[0].code = #0243131
* code.coding[0].display = "EUTHYROX 75MCG TBL NOB 100 II"
* code.coding[1].system = $atc
* code.coding[1].code = #H03AA01
* code.coding[1].display = "LEVOTHYROXINE SODIUM"
* code.text = "Euthyrox 75 mcg"
* form.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-formy"
* form.coding[0].code = #"TBL FLM"
* form.coding[0].display = "Potahovaná tableta"
* form.text = "Tableta"
* amount.numerator.value = 75
* amount.numerator.unit = "mcg"
* amount.numerator.system = $ucum
* amount.numerator.code = #/ug
* amount.denominator.value = 1
* amount.denominator.unit = "Tableta"
* ingredient[0].itemCodeableConcept.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivelatky"
* ingredient[0].itemCodeableConcept.coding[0].code = #828
* ingredient[0].itemCodeableConcept.coding[0].display = "SODNÁ SŮL LEVOTHYROXINU"
* ingredient[0].itemCodeableConcept.text = "Levothyroxin"
* ingredient[0].strength.numerator.value = 75
* ingredient[0].strength.numerator.unit = "mcg"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #"/ug"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tableta"
//* ingredient[0].strength.denominator.system = $ucum
//* ingredient[0].strength.denominator.code = #"{tbl}"
//* ingredient[0].strength.denominator.unit = "tableta"
// * identifier[0].system = $dlp_lec_pripravky
// * identifier[0].value = "0243131"

Instance: ExampleBMI
InstanceOf: Observation
Description: "Example instance for BMI observation using the CZ_ObservationBMIHdr profile."
* language = #cs
* id = "7cf304de-5ae3-4621-8531-9c8f0b2d4e3a"
* status = #final
* code = $loinc#39156-5 "body mass index" // "Body mass index (BMI) [Ratio]"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueQuantity.value = 22.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg/m2

Instance: ExampleBloodPressure
InstanceOf: Observation
Description: "Example instance for blood pressure observation (systolic and diastolic)."
* language = #cs
* id = "8d2aea77-f576-4d0f-9508-537359aa44d6"
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "panel krevního tlaku - všechny testy volitelné" //"Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
// Systolický tlak
* component[0].code = $loinc#8480-6 "systolický krevní tlak" //"Systolic blood pressure"
* component[0].valueQuantity.value = 120
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = $ucum
* component[0].valueQuantity.code = #mm[Hg]

// Diastolický tlak
* component[1].code = $loinc#8462-4 "diastolický krevní tlak" //"Diastolic blood pressure"
* component[1].valueQuantity.value = 80
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = $ucum
* component[1].valueQuantity.code = #mm[Hg]

Instance: ExampleChestCircumference
InstanceOf: Observation
Description: "Example instance for chest circumference observation using the CZ_ObservationChestCircumferenceHdr profile."
* language = #cs
* id = "4ba395b7-be9e-4bed-bef7-1c8f0b2d4e3a"
* status = #final
* code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueQuantity.value = 85
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleHeadCircumference
InstanceOf: Observation
Description: "Example instance for head circumference observation using the CZ_ObservationHeadCircumferenceHdr profile."
* language = #cs
* id = "5c363e2d-c4e1-436d-bad7-0b3f8c6a9f1d"
* status = #final
* code = $loinc#9843-4 "obvod hlavy v okcipitální a frontální oblasti" //"Head Occipital-frontal circumference"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueQuantity.value = 50
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleAbdominalCircumference
InstanceOf: Observation
Description: "Example instance for abdominal circumference observation using the CZ_ObservationAbdominalCircumferenceHdr profile."
* language = #cs
* id = "6c626338-82ba-46a1-bcb8-2c8f0b2d4e3a"
* status = #final
* code = $loinc#56086-2 "Adult Waist Circumference Protocol"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueQuantity.value = 90
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleHeight
InstanceOf: Observation
Description: "Example instance for height observation using the CZ_ObservationHeightHdr profile."
* language = #cs
* id = "6bec5d97-a17e-4015-8fce-7b1c0c3a2f4b"
* status = #final
* code = $loinc#8302-2 "tělesná výška"  //"Body height"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueQuantity.value = 175
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = #cm

Instance: ExampleWeight
InstanceOf: Observation
Description: "Example instance for weight observation using the CZ_ObservationWeightHdr profile."

* language = #cs
* id = "5c2ddf62-9785-493f-80c6-8b0d1e3a4b2c"
* status = #final
* code = $loinc#29463-7 "tělesná hmotnost" //"Body weight"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueQuantity.value = 70
* valueQuantity.unit = "kg"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg


Instance: Observation-TravelHistory-Madagaskar
InstanceOf: Observation
Usage: #example
Title: "Observation - Travel History"
Description: "Travel history observation"
* id = "f95f843e-701f-434a-94c9-3c8f0b2d4e3a"
* language = #cs
* status = #final
* code = $loinc#94651-7 "Country of travel [Location]"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2024-03-20"
* valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[0].code = #MG
* valueCodeableConcept.coding[0].display = "Madagascar"
* valueCodeableConcept.text = "Madagaskar"
* performer = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* note[0].text = "Pacient navštívil Madagaskar během posledních 30 dnů."


/* Instance: Observation-InfectiousContact
InstanceOf: Observation
Usage: #example
Title: "Infectious contact"
Description: "The patient was in contact with a person infected with COVID-19"
* id = "af4dcfeb-2cb3-4fc8-98e2-5c8f0b2d4e3a"
* language = #cs
* status = #final
* category[+].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* category[=].coding[0].code = #AEXPOS
* category[=].coding[0].display = "acquisition exposure"
* code = $loinc#88636-6 "Known exposure [Identifier]"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:a81e74c9-fe94-4eb1-9233-4c8f0b2d4e3a)
* effectiveDateTime = "2024-03-25"
* valueCodeableConcept = $sctCZ#840546002 "Exposure to SARS-CoV-2"
* valueCodeableConcept.text = "Exposure to COVID-19"
* note[0].text = "The exposure occurred in a shared household five days before admission."
 */
//---------------------------------------------------------------------
Instance: MedicationStatement-Paracetamol-Novak
InstanceOf: MedicationStatementEuCore
Usage: #example
Title: "MedicationStatement-HDR Example: Paracetamol"
Description: "Czech HDR - example: Paracetamol"
* language = #cs
* id = "f34114fc-138f-4bd8-8e1a-804d14ec9986"
* status = #active
//stav neni adekvatni status ve slovniku, navic treba pouzit kod. system snomed
//* statusReason.coding[0].system = $cz-medicationStatement-reason-status
//* statusReason.coding[0].code = #continued
//* statusReason.coding[0].display = "Pokračuje"
* statusReason.text = "Pokračuje"
//indikace
* reasonCode.coding[0].system = $icd10
* reasonCode.coding[0].code = #E03.9
//* reasonCode.coding[0].display = "Hypotyreóza NS"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "Dle potřeby, max 4 tablety denně"
* dosage[0].asNeededBoolean = true
* dosage[0].doseAndRate.doseQuantity.value = 500
* dosage[0].doseAndRate.doseQuantity.unit = "mg"
//cesta podání
* dosage.route = $sctCZ#26643006 "perorální podání" // "Oral route"
// * dosage[0].route.coding[0].system = $sctCZ
// * dosage[0].route.coding[0].code = #26643006
// * dosage[0].route.coding[0].display = "Oral route"
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí
// reference a další údaje
* medicationReference = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002d)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* identifier[0].system = "http://hospital.example.org/medication-statements" //tady má být External identifier
* identifier[0].value = "f34114fc-138f-4bd8-8e1a-804d14ec9986"   //tady má být External identifier
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"

Instance: Medication-Paracetamol
InstanceOf: MedicationEuCore
Usage: #example
Title: "Medication – Paracetamol"
Description: "Lek Paracetamol v tabletách"
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-10000000002d"
* status = #active
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivepripravky"
* code.coding[0].code = #0253304
* code.coding[0].display = "PARACETAMOL ZENTIVA K.S. 500MG TBL NOB 12"
* code.coding[1].system = $atc
* code.coding[1].code = #N02BE01
* code.coding[1].display = "Paracetamol"
* code.text = "PARACETAMOL ZENTIVA K.S. 500 mg"
* form.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-formy"
* form.coding[0].code = #"TBL FLM"
* form.coding[0].display = "Potahovaná tableta"
* form.text = "Tableta"
* amount.numerator.value = 500
* amount.numerator.unit = "mg"
* amount.numerator.system = $ucum
* amount.numerator.code = #/mg
* amount.denominator.value = 1
* amount.denominator.unit = "Tableta"
* ingredient[0].itemCodeableConcept.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivelatky"
* ingredient[0].itemCodeableConcept.coding[0].code = #1064
* ingredient[0].itemCodeableConcept.coding[0].display = "PARACETAMOL"
* ingredient[0].itemCodeableConcept.text = "PARACETAMOL"
* ingredient[0].strength.numerator.value = 500
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #"/mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tableta"
//* ingredient[0].strength.denominator.system = $ucum
//* ingredient[0].strength.denominator.code = #"{tbl}"
//* ingredient[0].strength.denominator.unit = "tableta"
// * identifier[0].system = $dlp_lec_pripravky
// * identifier[0].value = "0243131"


/* Instance: Goal-hernia-treatment
InstanceOf: Goal
Usage: #example
Title: "Goal for Hernia Treatment"
Description: "HDR - example of a goal for hernia treatment"
* id = "620b1120-cece-44b1-89f5-20413054eb1d"
* lifecycleStatus = #active
* description.text = "Chirurgické řešení tříselné kýly s úplným zhojením a bez komplikací."
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* startDate = "2025-03-10"
* target[0].detailString = "Zhojená rána bez komplikací, bez recidivy kýly."
* target[0].measure = http://snomed.info/sct#298005009 "Finding of wound healing"
 */

Instance: Medication-Ibalgin400
InstanceOf: MedicationEuCore
Usage: #example
Title: "Medication – Ibalgin 400"
Description: "Lek Ibalgin 400 v tabletách"
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-10000000002e"
* status = #active
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivepripravky"
* code.coding[0].code = #0254294
* code.coding[0].display = "IBALGIN 400MG TBL FLM 100"
* code.coding[1].system = $atc
* code.coding[1].code = #M01AE01
* code.coding[1].display = "IBUPROFEN"
* code.text = "Ibalgin 400 mg"
* form.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-formy"
* form.coding[0].code = #"TBL FLM"
* form.coding[0].display = "Potahovaná tableta"
* form.text = "Tableta"
* amount.numerator.value = 400
* amount.numerator.unit = "mg"
* amount.numerator.system = $ucum
* amount.numerator.code = #/mg
* amount.denominator.value = 1
* amount.denominator.unit = "Tableta"
* ingredient[0].itemCodeableConcept.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivelatky"
* ingredient[0].itemCodeableConcept.coding[0].code = #1593
* ingredient[0].itemCodeableConcept.coding[0].display = "IBUPROFEN"
* ingredient[0].itemCodeableConcept.text = "IBUPROFEN"
* ingredient[0].strength.numerator.value = 400
* ingredient[0].strength.numerator.unit = "mg"
* ingredient[0].strength.numerator.system = $ucum
* ingredient[0].strength.numerator.code = #"/mg"
* ingredient[0].strength.denominator.value = 1
* ingredient[0].strength.denominator.unit = "tableta"
//* ingredient[0].strength.denominator.system = $ucum
//* ingredient[0].strength.denominator.code = #"{tbl}"
//* ingredient[0].strength.denominator.unit = "tableta"
* identifier[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecivepripravky"
* identifier[0].value = "0207893"

Instance: MedicationDispense-Ibalgin400
InstanceOf: MedicationDispenseEuHdr
Usage: #example
Title: "Dispense – Ibalgin 400"
Description: "Výdej léčivého přípravku Ibalgin 400 mg pacientovi Novákovi"
* id = "b0001bf8-976a-4d7d-b192-8c8f0b2d4e3a"
* language = #cs
* status = #completed
//* extension[recorded].valueDateTime = "2024-03-07T10:00:00Z"
* medicationReference = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002e)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* quantity.value = 15
* quantity.unit = "tableta"
//* quantity.system = $ucum
//* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-07"


//---------------------------------------------------
// Procedure: inguinal-hernia (CZ_ProcedureHdr)
Instance: Procedure-inguinal-hernia
InstanceOf: ProcedureEuCore
Title: "Procedure-HDR Example - Inguinal hernia"
Usage: #example
Description: "HDR - example of a Procedure - Repair of inguinal hernia"
* language = #cs
* id = "ffb1a62f-9050-4e33-af4b-4cdb8203c9e5"
* status = #completed
* code = $sctCZ#44558001 "operace tříselné kýly"
// * code.coding[0].system = $sctCZ
// * code.coding[0].code = #44558001
// * code.coding[0].display = "Repair of inguinal hernia"
* code.text = "Plastika tříselné kýly"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performedDateTime = "2025-03-02"
* reasonReference[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002f)
* note[0].text = "Plastika pravostranné tříselné kýly dne 2. 3. 2025."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Plastika pravostranné tříselné kýly dne 2. 3. 2025.</div>"
* text.status = #generated


// Condition: Iron deficiency anemia due to chronic blood loss
Instance: IronDeficiencyAnemiaCondition
InstanceOf: ConditionEuCore
Usage: #example
Title: "Condition-HDR Iron Deficiency Anemia"
Description: "Example of a condition Iron deficiency anaemia secondary to blood loss (chronic)"
* id = "3f85726c-ad2f-441b-89ce-10000000002f"
* language = #cs
* clinicalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding[0].code = #active
* verificationStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding[0].code = #confirmed
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding[0].code = #encounter-diagnosis
* code.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[0].code = #D50.0 // Corrected code assignment
* code.coding[0].display = "Iron deficiency anaemia secondary to blood loss (chronic)"
* code.text = "Anémie z nedostatku železa při chronické krevní ztrátě"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* category[1] = $sctCZ#278307001 "On admission"
* category[2] = $sctCZ#25265005 "Did not receive therapy or drug for"


/* Instance: CZ-AdvanceDirectives-HDR-DNR
InstanceOf: Consent
Usage: #example
Title: "AdvanceDirectives  DNR"
Description: "Hdr - example od advance directive"

* status = #active
// this in eu hdr
* policyRule = http://hl7europe.org/policy-rules#local "local policy rule"
* policyRule.text = "Act No. 372/2011 Coll. in Section 36"

* dateTime = "2025-01-01T08:00:00+01:00"

* category.coding[0].system = "http://terminology.hl7.org/CodeSystem/consentcategorycodes"
* category.coding[0].code = #dnr
* category.coding[0].display = "Do Not Resuscitate"

* scope.coding[0].system = $consentscope
* scope.coding[0].code = #adr
* scope.coding[0].display = "Advanced Care Directive"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Podepsané prohlášení Neresuscitovat Platné od 1.1.2025</div>"
 */

//---------------------------------------------------------------------
Instance: MedicationStatement-Ibalgin400-Novak
InstanceOf: MedicationStatementEuCore
Usage: #example
Title: "MedicationStatement-HDR Example: Ibalgin"
Description: "HDR - example of Ibalgin 400"
* language = #cs
* id = "bf08b62b-0abd-4e88-9092-ce0228382e51"
* status = #active
//indikace
* reasonCode.coding[0].system = $icd10
* reasonCode.coding[0].code = #E03.9
//* reasonCode.coding[0].display = "Hypotyreóza NS"
* reasonCode.text = "Hypotyreóza"
//dávkování
* dosage[0].text = "Dle potřeby, při bolesti max 3 tablety denně"
* dosage[0].asNeededBoolean = true
* dosage[0].doseAndRate.doseQuantity.value = 400
* dosage[0].doseAndRate.doseQuantity.unit = "mg"
//cesta podání
* dosage.route = $sctCZ#26643006 "perorální podání" // "Oral route"
// * dosage[0].route.coding[0].system = $sctCZ
// * dosage[0].route.coding[0].code = #26643006
// * dosage[0].route.coding[0].display = "Oral route"
// období podávání
* effectivePeriod.start = "2025-03-01T10:15:00+01:00"
* effectivePeriod.end = "2025-03-10T09:30:00+01:00"
//dělka vybavení
//------- chybí
// reference a další údaje
* medicationReference = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002e)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* identifier[0].system = "http://hospital.example.org/medication-statements" //tady má být External identifier
* identifier[0].value = "bf08b62b-0abd-4e88-9092-ce0228382e51"   //tady má být External identifier
* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* category[0].coding[0].code = #inpatient
* category[0].coding[0].display = "Inpatient"
* category[0].text = "Inpatient"


Instance: MedicationDispense-Euthyrox
InstanceOf: MedicationDispenseEuHdr
Usage: #example
Title: "Dispense – Euthyrox for patient Novak"
Description: "Výdej léčivého přípravku Euthyrox pacientovi Novákovi"
* id = "133cea11-09c6-4147-80af-6c8f0b2d4e3a"
* language = #cs
* status = #completed
//* extension[recorded].valueDateTime = "2024-03-05T10:00:00Z"
* medicationReference = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002c)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* quantity.value = 30
* quantity.unit = "tableta"
//* quantity.system = $ucum
//* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-05"


Instance: MedicationDispense-Paracetamol
InstanceOf: MedicationDispenseEuHdr
Usage: #example
Title: "Dispense – Paracetamol"
Description: "Výdej léčivého přípravku Paracetamol pacientovi Novákovi"
* id = "65c49e6d-0951-4e83-8e2c-7c8f0b2d4e3a"
* language = #cs
* status = #completed
//* extension[recorded].valueDateTime = "2024-03-06T10:00:00Z"
* medicationReference = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-10000000002d)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* quantity.value = 20
* quantity.unit = "tableta"
//* quantity.system = $ucum
//* quantity.code = #"{tbl}"
* whenHandedOver = "2024-03-06"

Instance: Observation-Participation-in-society
InstanceOf: Observation
Usage: #example
Title: "Společenské uplatnění"
Description: "Pacient je aktivní v komunitních aktivitách a dobrovolnictví."
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000022"
* status = #final
* code = $sctCZ#363910003 "charakteristika psychosociálního fungování" //"Characteristic of psychosocial functioning"
* effectiveDateTime = "2024-03-28"
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
//* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000023)
//* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000024)
* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000025)

Instance: Observation-Social-network
InstanceOf: Observation
Usage: #example
Title: "Sociální síť"
Description: "Pacient má aktivní sociální síť a pravidelně se setkává s přáteli."
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000025"
* status = #final
* code = $sctCZ#1179210008 "Ability to build and utilize social network"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* valueString = "Pacient má širokou sociální síť a pravidelně se setkává s přáteli a rodinou."
* effectiveDateTime = "2024-03-28"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='cs' xml:lang='cs'>
    <p>Pacient má širokou sociální síť a pravidelně se setkává s přáteli a rodinou.</p>
   </div>"


//-----------------------------------------
Instance: Observation-CRP-Novak
InstanceOf: MedicalTestResultEuCore
Usage: #example
Title: "CRP - Novák Petr"
Description: "HDR - example of CRP observation for Novák Petr"
* language = #cs
* id = "10f5c49e-086d-4016-8dd1-10000000001b"
* status = #final
* category[+] = $observation-category#laboratory  //http://terminology.hl7.org/CodeSystem/observation-category
* category[+] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#105126-7 "C-reaktivní protein [Hmotnost/objem], systém: Sérum/plazma/krev" //"C reactive protein [Mass/volume] in Serum, Plasma or Blood"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectiveDateTime = "2025-03-01T10:00:00+01:00"
* performer = Reference(urn:uuid:860c684f-aba1-40d9-94cf-721d70237b52) // Practitioner-UZV)
* valueQuantity.value = 6.0
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #"mg/L"
* referenceRange[0].low.value = 0.0
* referenceRange[0].low.unit = "mg/L"
* referenceRange[0].low.system = $ucum
* referenceRange[0].low.code = #"mg/L"
* referenceRange[0].high.value = 10.0
* referenceRange[0].high.unit = "mg/L"
* referenceRange[0].high.system = $ucum
* referenceRange[0].high.code = #"mg/L"
* referenceRange[0].text = "Norma: 0–10 mg/L"
* interpretation[+] = $v3-ObservationInterpretation#N "Normal"


Instance: ExampleSdohSmoking
InstanceOf: Observation
Description: "Example of Social History Observation - Smoking"
* id = "3f85726c-ad2f-441b-89ce-10000000001c"
* language = #cs
* status = #final
* category[0] =  $observation-category#social-history
* code = $sctCZ#229819007 "Tobacco use and exposure"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectivePeriod.start = "2017-04-15T00:00:00+02:00"
* effectivePeriod.end = "2020-04-15T00:00:00+02:00"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueCodeableConcept.text = "0.5 {pack}/d"
* note.text = "Entered by GP"

Instance: ExampleSdohAlcohol
InstanceOf: Observation
Description: "Example of Social History Observation - Alcohol Use"
* id = "3f85726c-ad2f-441b-89ce-10000000001d"
* language = #cs
* status = #final
* category =  $observation-category#social-history
* code = $sctCZ#897148007 "Alcoholic beverage intake"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* effectivePeriod.start = "2016-04-15T00:00:00+02:00"
* effectivePeriod.end = "2016-04-15T00:00:00+02:00"
* performer = Reference(urn:uuid:5c33bffd-d3b6-401f-85dc-db99d48b8a3b)
* valueCodeableConcept.text = "4 {glass}/d"
* note.text = "Entered by Všeobecný lékař"


Instance: DeviceUseStatement-Pacemaker
InstanceOf: DeviceUseStatement
Usage: #example
Title: "Použití kardiostimulátoru"
Description: "Záznam o implantaci kardiostimulátoru z důvodu bradykardie"
* id = "3f85726c-ad2f-441b-89ce-10000000001f"
* language = #cs
* status = #active
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* device = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000030)
* timingDateTime = "2023-04-10"
* reasonCode[0] = $icd10#I50 "Heart failure"
* reasonReference[0] = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000031) "Bradykardie"
* bodySite = $sctCZ#51185008 "hrudník" //"Thorax"

//----------------------------------------------------------------------------------------
Instance: Device-Pacemaker
InstanceOf: DeviceEuHdr
Usage: #example
Description: "Heart pacemaker Medtronic W1DR01"
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000030"
* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sctCZ#14106009 "kardiostimulátor" //"Cardiac pacemaker"
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000) "Petr Novák"

Instance: Procedure-Insert-Pacemaker2
InstanceOf: Procedure
Title: "CZ-Procedure-HDR Example - Pacemaker 2"
Usage: #example
Description: "Czech HDR - example of a Procedure - Pacemaker"
* id = "3f85726c-ad2f-441b-89ce-100000000020"
* language = #cs
* status = #completed
* code = $sctCZ#70573000 "implantace generátoru impulsů kardiostimulátoru" //"Insertion of pacemaker pulse generator"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performedDateTime = "2024-03-05"
* bodySite = $sctCZ#73829009 "atrium dextrum" //"Right atrium"
* reasonCode[+] = $icd10#I50 "Heart failure"
* outcome = $sctCZ#385669000 "úspěšný" //"Successful"
* focalDevice.manipulated = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000030)
* focalDevice.action = $sctCZ#129303008 "odstranění - výkon" //"Removal - action"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml" lang="cs" xml:lang="cs">
  <p>Procedure: Zavedení kardiostimulátoru</p>
  <p>Date: 2024-03-05</p>
  <p>Patient: Petr Novák</p>
  <p>Reason: Úplná atrioventrikulární blokáda</p>
  <p>Outcome: Úspěšný</p>
  <p>Device: Kardiostimulátor Medtronic W1DR01</p>
</div>
"""


Instance: Observation-Education
InstanceOf: Observation
Usage: #example
Title: "Vzdělání"
Description: "Pacient má vysokoškolské vzdělání v oboru informatiky."
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000027"
* status = #final
* code = $sctCZ#276031006 "Education"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* effectiveDateTime = "2024-03-28"
* hasMember = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000026)


Instance: Observation-Education-level
InstanceOf: Observation
Usage: #example
Title: "Dosažený stupeň vzdělání"
Description: "Pacient má vysokoškolské vzdělání v oboru informatiky."
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-100000000026"
* status = #final
* code = $sctCZ#443722004 "Educational level of parent of subject"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* performer = Reference(urn:uuid:2b7e9637-5018-4542-9faf-d5abdee7b849)
* valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-EducationLevel"
* valueCodeableConcept.coding[0].code = #BD
* valueCodeableConcept.coding[0].display = "College or baccalaureate degree complete"
* effectiveDateTime = "2024-03-28"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='cs' xml:lang='cs'>
    <p>Pacient má vysokoškolské vzdělání v oboru informatiky.</p>
   </div>"


Instance: Flag-malnutrition-Novak
InstanceOf: FlagPatientEuCore
Usage: #example
Title: "Střední podvýživa"
Description: "Střední podvýživa – doporučení nutriční terapie u pacienta."
* language = #cs
* id = "5a17a710-193e-4490-a627-7202925aa56e"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000) //Novak
* code.coding[0].system = $icd10
* code.coding[0].code = #E44.0
* code.coding[0].display = "Moderate protein-energy malnutrition"
* status = #active
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"cs\" xml:lang=\"cs\">Střední podvýživa – doporučení nutriční terapie u pacienta.</div>"
* extension[flagPriorityExt].valueCodeableConcept.coding[0].system = "http://hl7.org/fhir/flag-priority-code"
* extension[flagPriorityExt].valueCodeableConcept.coding[0].code = #PL
* extension[flagPriorityExt].valueCodeableConcept.coding[0].display = "Low priority"


Instance: Immunization
InstanceOf: ImmunizationEuCore
Usage: #example
Title: "Immunization example of Covid"
Description: "Immunization of Covid"
* language = #cs
* id = "3f85726c-ad2f-441b-89ce-10000000001e"
* status = #completed
* vaccineCode = http://snomed.info/sct#28531000087107 // Kód vakcíny proti COVID-19
* patient = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* occurrenceDateTime = "2021-05-05"
* primarySource = true

Instance: CZ-Condition-HDR-Example
InstanceOf: ConditionEuCore
Usage: #example
Title: "CZ-Condition-HDR Example"
Description: "Czech HDR - example of a condition (Heart Failure)"
* id = "3f85726c-ad2f-441b-89ce-100000000031"
* language = #cs
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[1] = $sctCZ#278307001 "při přijetí" //"On admission"
* category[2] = $sctCZ#69845001 "podstoupil(a) terapii pro nebo obdržel lék na" //"Received therapy or drug for"
* severity = $sctCZ#24484000 "těžký" // "Severe"
* code = $icd10#I50 "Heart failure"
* subject = Reference(urn:uuid:3f85726c-ad2f-441b-89ce-100000000000)
* onsetDateTime = "2025-01-01T08:00:00+01:00"
* note.text = "Pacient byl přijat s diagnózou srdečního selhání. Byla zahájena léčba diuretiky a ACE inhibitory."


Instance: Organization-L1-HOSP
InstanceOf: OrganizationEuCore
Usage: #example
Description: "A minimalist example of a subordinate department within a hospital hierarchy for the purposes of the HDR document. "
* language = #cs
* id = "a4641bd0-34af-4038-a7db-872d08a54df9"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "12345678"
* name = "CHIR-L2 - Lůžková stanice 2"
* partOf = Reference(urn:uuid:af2b3114-e872-43b9-9875-cceb39122f7f) "Chirurgické oddělení - Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+42060385111"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ //"Czechia"


//---------------------------------------------------------------------------------------------------------------
Instance: Organization-L1-Odd
InstanceOf: OrganizationEuCore
Usage: #example
Description: "A minimalist example of a subordinate department within a hospital hierarchy for the purposes of the HDR document."
* language = #cs
* id = "af2b3114-e872-43b9-9875-cceb39122f7f"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "12345678"
* name = "CHIR - Oddělení chirurgie"
* partOf = Reference(urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1) "Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+42060385555"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ //"Czechia"

Instance: Organization-L1
InstanceOf: OrganizationEuCore
Usage: #example
Description: "A minimalist example of the organization of a healthcare provider for the purposes of the HDR document. "
* language = #cs
* id = "9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "27520561"  //Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice IČ
* name = "Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+420603853227"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ //"Czechia"

//-----------------------------------------------------
Instance: Practitioner-UZV
InstanceOf: PractitionerEuCore
Usage: #example
Description: "Participant UZV HDR"
* language = #cs
* id = "860c684f-aba1-40d9-94cf-721d70237b52"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654322"
* name.use = #usual
* name.text = "MUDr. Karel Janák"
* telecom[+].system = #phone
* telecom[=].value = "+420603853287"
* telecom[=].use = #work
