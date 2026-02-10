Profile: CompositionEuHdrObligation
Parent: CompositionEuHdr
Id: composition-obl-eu-hdr
Title: "Composition: obligations"
Description: "This profile defines obligations for a Hospital Discharge Report (HDR) for the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* extension[basedOn]

// * extension[presentedForm] insert ObligationSet3 


* extension[compositionVersionR5]

* extension[information-recipient]


* identifier insert ObligationSet2
* status insert ObligationSet1
* type insert ObligationSet1
* subject insert ObligationSet1
* encounter insert ObligationSet1

* date insert ObligationSet1
* author insert ObligationSet1

* title insert ObligationSet1
* attester insert ObligationSet2
* attester.mode insert ObligationSet1
* attester.time insert ObligationSet1
* attester.party insert ObligationSet1


* section insert ObligationSet1
* section.text insert ObligationSet1

* section[sectionAdmissionEvaluation] insert ObligationSet2

/* * section[sectionAnthropometry]
  * entry 0.. */


* section[sectionVitalSigns]
  * entry 0..

* section[sectionPhysicalFindings]

* section[sectionFunctionalStatus]
  * entry 


* section[sectionHospitalCourse] insert ObligationSet1 


* section[sectionDiagnosticSummary] insert ObligationSet2
  * entry insert ObligationSet2


// -------------------------------------

* section[sectionSignificantProcedures] insert ObligationSet2
  * entry insert ObligationSet2

* section[sectionMedicalDevices] insert ObligationSet2
  * entry insert ObligationSet2


// -------------------------------------

* section[sectionPharmacotherapy] insert ObligationSet2
  * entry insert ObligationSet2

// -------------------------------------
* section[sectionSignificantResults] insert ObligationSet2
  * entry insert ObligationSet2
 
 
// -------------------------------------
* section[sectionSynthesis]


* section[sectionPlanOfCare] insert ObligationSet2



* section[sectionDischargeInstructions] insert ObligationSet2



* section[sectionDischargeMedications] insert ObligationSet2
  * entry insert ObligationSet2
   
* section[sectionAllergies] insert ObligationSet2
  * entry insert ObligationSet2

* section[sectionAlert] insert ObligationSet2
  * entry insert ObligationSet2



* section[sectionPatientHx] insert ObligationSet2

* section[sectionProblems] insert ObligationSet3
  * entry 0..





* section[sectionImmunizations] insert ObligationSet3
  * entry 0..









* section[sectionDischargeDetails] insert ObligationSet2
 

// -------------------------------------
// Care Team 0 â€¦ 1
// -------------------------------------

* section[sectionAttachments]
  * entry insert ObligationSet1




