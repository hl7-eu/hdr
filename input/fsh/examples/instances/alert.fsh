Instance: example-flag-no-left-arm
InstanceOf: FlagEuHdr
Title: "Flag: Do Not Use Left Arm"
Description: "A clinical flag advising care teams to avoid using the patient's left arm for procedures."


* status = #active

* category = $flag-category#safety "Safety"

* code.text = "Do not use left arm for blood draws or IV access"

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"


* extension[flagDetailExt].valueReference.display  = "Patient has lymphedema following left-sided mastectomy. Avoid venipuncture and blood pressure measurement on the left arm."
* extension[flagPriorityExt].valueCodeableConcept = $flag-priority-code#PM	"Medium priority"


Instance: example-flag-allergy
InstanceOf: FlagEuHdr
Title: "Flag: Critical Allergy to Penicillin"
Description: "A high-priority allergy alert referencing the specific AllergyIntolerance resource."

* status = #active

* category = $flag-category#drug "Drug"

* code = $sct#91936005 "Allergy to penicillin"
* code.text = "Critical allergy: Penicillin"

* subject = Reference(patient-swart)
* subject.display = "Fiona XXX_Swart"


* period.start = "2024-01-10"

* extension[flagDetailExt].valueReference = Reference (penicillin-allergy)
* extension[flagDetailExt].valueReference.display = "Allergy to penicillin"

* extension[flagPriorityExt].valueCodeableConcept = $flag-priority-code#PH	"High priority"


Instance: penicillin-allergy
InstanceOf: AllergyIntoleranceEuCore
Title: "AllergyIntolerance: Critical Allergy to Penicillin"
Description: "A high-priority allergy to Penicillin, with a specific reaction and severity."

* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed

* type = #allergy
* category[0] = #medication
* criticality = #high

* code = $sct#764146007 "Penicillin"
* code.text = "Penicillin"

* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"

* recordedDate = "2023-12-10"

* recorder.display = "Dr. Alessia Bianchi"

* reaction.manifestation = $sct#39579001 "Anaphylactic reaction"
* reaction.severity = #severe
