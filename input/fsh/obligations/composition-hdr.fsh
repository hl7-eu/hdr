Profile: CompositionEuHdrObligation
Parent: CompositionEuHdr
Id: composition-obl-eu-hdr
Title: "Composition: obligations"
Description: "This profile defines obligations for a Hospital Discharge Report (HDR) for the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)

* extension[basedOn]

// * extension[presentedForm] insert OblShallPopulateShouldDisplayShallProcess 


* extension[compositionVersionR5]

* extension[information-recipient]


* identifier insert OblShallPopulateShallDisplayProcess
* status insert OblShallPopulateShallProcess
* type insert OblShallPopulateShallProcess
* subject insert OblShallPopulateShallProcess
* encounter insert OblShallPopulateShallProcess

* date insert OblShallPopulateShallProcess
* author insert OblShallPopulateShallProcess

* title insert OblShallPopulateShallProcess
* attester insert OblShallPopulateShallDisplayProcess
* attester.mode insert OblShallPopulateShallProcess
* attester.time insert OblShallPopulateShallProcess
* attester.party insert OblShallPopulateShallProcess


* section insert OblShallPopulateShallProcess
* section.text insert OblShallPopulateShallProcess

* section[sectionAdmissionEvaluation] insert OblShallPopulateShallDisplayProcess


* section[sectionVitalSigns]
  * entry 0..

* section[sectionPhysicalFindings]

* section[sectionFunctionalStatus]
  * entry 


* section[sectionHospitalCourse] insert OblShallPopulateShallProcess 


* section[sectionDiagnosticSummary] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess


// -------------------------------------

* section[sectionSignificantProcedures] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess

* section[sectionMedicalDevices] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess


// -------------------------------------

* section[sectionPharmacotherapy] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess

// -------------------------------------
* section[sectionSignificantResults] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess
 
 
// -------------------------------------
* section[sectionSynthesis]


* section[sectionPlanOfCare] insert OblShallPopulateShallDisplayProcess


* section[sectionImplantedDevices] insert OblShallPopulateShouldDisplayShallProcess
* section[sectionProceduresHx] insert OblShallPopulateShouldDisplayShallProcess

// * section[sectionDischargeInstructions] insert OblShallPopulateShallDisplayProcess



* section[sectionDischargeMedications] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess
   
* section[sectionAllergies] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess

* section[sectionAlert] insert OblShallPopulateShallDisplayProcess
  * entry insert OblShallPopulateShallDisplayProcess



* section[sectionPatientHx] insert OblShallPopulateShallDisplayProcess

* section[sectionProblems] insert OblShallPopulateShouldDisplayShallProcess
  * entry 0..





* section[sectionImmunizations] insert OblShallPopulateShouldDisplayShallProcess
  * entry 0..









* section[sectionDischargeDetails] insert OblShallPopulateShallDisplayProcess
 

// -------------------------------------
// Care Team 0 â€¦ 1
// -------------------------------------

* section[sectionAttachments]
  * entry insert OblShallPopulateShallProcess




