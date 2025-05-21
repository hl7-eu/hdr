Instance: example-infectious-contact
InstanceOf: ObservationInfectiousContactEuHdr
Title: "Example Observation - Infectious Contact: COVID-19 Exposure"
Description: "Example of an infectious contact observation representing a patient's known exposure to a COVID-19 case."


* status = #final

* category[exposureClass] = $v3-ActClass#AEXPOS "Acquisition exposure"
* category[exposureClass].text = "Contact with infectious person (Acquisition exposure)"

* code = $v3-ParticipationType#EXPAGNT "ExposureAgent"
* code.text = "Exposure to infectious agent"

* valueCodeableConcept = $sct#840546002 "Exposure to COVID-19"
* valueCodeableConcept.text = "Exposure to COVID-19"

* effectivePeriod.start = "2024-11-28"
* effectivePeriod.end = "2024-12-01"

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* note[0].text = "Patient reported close contact with a COVID-19-positive family member during a social gathering."



Instance: example-sdoh-transportation
InstanceOf: ObservationSdohEuHdr
Title: "SDOH Observation: Transportation Insecurity"
Description: "An observation documenting the patient's lack of reliable transportation to attend medical appointments."


* status = #final

* category[SocialHistory] = $observation-category#social-history "Social History"

* code = $sct#713458007 "Lack of access to transportation"
* code.text = "Transportation barrier to medical care"

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* effectiveDateTime = "2024-11-01"

* performer.display = "Dr. Alessia Bianchi (General Practitioner)"

* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#asked-unknown "Asked but unknown"
* valueCodeableConcept.text = "Patient reported issues but declined to provide details"

* note[0].text = "Patient mentioned that public transport is unreliable and they often miss appointments."


Instance: example-travel-history
InstanceOf: ObservationTravelEuHdr
Title: "Travel History: Visit to Italy"
Description: "An observation recording that Fiona Swart visited Italy in November 2023."

* status = #final

* code = $loinc#94651-7 "Country of travel [Location]"

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* effectivePeriod.start = "2023-11-10"
* effectivePeriod.end = "2023-11-18"

* valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding[0].code = #IT
* valueCodeableConcept.coding[0].display = "Italy"
* valueCodeableConcept.text = "Italy"


Instance: example-img-finding-lung-nodule
InstanceOf: ObservationImgFindingEuHdr
Title: "Imaging Finding: Lung Nodule"
Description: "An imaging finding from a CT scan of the chest identifying a solitary pulmonary nodule."


* status = #final

* category[imaging] = $observation-category#imaging

* code = $sct#427359005 "Solitary pulmonary nodule"
* code.text = "Pulmonary nodule identified on chest CT"

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"

* effectiveDateTime = "2024-10-15"

* performer.display = "Dr. Alessia Bianchi (Radiologist)"

* valueString = "Solitary 1.5 cm pulmonary nodule detected in the right upper lobe."

* basedOn[imorderaccession].identifier.system = "http://hospital.example.org/accession"
* basedOn[imorderaccession].identifier.value = "ACSN-2024-00123"
* basedOn[imorderaccession].identifier.type = $v2-0203#ACSN

/* // * partOf[imagingstudy] = Reference(ImagingStudy/ct-chest-2024)
* partOf[imagingstudy].display = "CT Chest without contrast ImagingStudy"

// * partOf[procedure] = Reference(Procedure/proc-ct-chest)
* partOf[procedure].display = "CT Chest Procedure"

// * derivedFrom[imagingstudy] = Reference(ImagingStudy/ct-chest-2024)
* derivedFrom[imagingstudy].display = "CT Chest without contrast ImagingStudy" */
