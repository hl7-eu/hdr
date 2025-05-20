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
