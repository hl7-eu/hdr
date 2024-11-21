//====================================
// COMMON SECTIONS
//====================================
RuleSet: AlertSectionRules
// Alert Section used for the HDR and PS composition
* section contains alertSection ..1
* section[alertSection]
  * insert SectionComRules (
    Health Concern Section, // SHORT
      This section contains data describing an interest or worry about a health state or process that could possibly require attention\, intervention\, or management. A Health Concern is a health related matter that is of interest\, importance or worry to someone\, who may be the patient\, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR\, such as Problem List\, Family History\, Social Histor\, Social Worker Note\, etc. Health concerns can be medical\, surgical\, nursing\, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”\, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication\, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments\, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members, // DESC
      http://loinc.org#75310-3 )   // CODE
  * entry 0..
  * insert SectionEntrySliceComRules(Alerts, Alerts)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. , Flags , Flags , Flag)
  * insert SectionEntrySliceDefRules (detectedIssue, 0.. ,  Detected Issue,
    Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction\, Ineffective treatment frequency\, Procedure-condition conflict\, etc. ,
    DetectedIssue)

  * insert SectionEntrySliceDefRules (riskAssessment, 0.. , Risk Assessment,
    An assessment of the likely outcomes for a patient or other subject as well as the likelihood of each outcome. ,
    RiskAssessment)

//========================================================

RuleSet: CareTeamSectionRules
* section contains CareTeamSection ..1

* section[CareTeamSection]
  * insert SectionComRules (
      Care Team Section, // SHORT
      The Care Team Section is used to share historical and current Care Team information., // DESC
      http://loinc.org#85847-2 )   // CODE

  * entry 0..
  * insert SectionEntrySliceComRules(Care Teams, Care Teams)
  * insert SectionEntrySliceDefRules (cteam, 0.. , Care Team , Care Team , CareTeam)
  * insert NoSubSectionsRules



RuleSet: EvaluationSubSectionRules
* section
  * title 1..
  * text 1..
  * text only Narrative
  * section ..0
* insert SectionSliceComRules (Objective findings, Findings made by healthcare practitioner)

// ==> TO BE REVIEWED
* section contains sectionAnthropometry 0..1
* section[sectionAnthropometry]
  * insert SectionComRules (
    Anthropometric observations,
    Anthropometric Observations sub-section,
    $sct#248326004) // to be updated
  * entry 1..
  /* * entry only Reference(BodyHeightXpandh or BodyWeightXpandh or BMIProfileXpandh or SkinfoldThicknessXpandh or CircumferenceMeasurementXpandh)
   */

// ==> TO BE REVIEWED
* section contains sectionVitalSigns 0..1
* section[sectionVitalSigns]
  * title = "Vital signs"
  * code = $sct#1184593002 "Vital sign document section (record artifact)"
  * entry 1..
  
  /* * entry only Reference(BloodPressureXpandh or HeartRateXpandh or RespiratoryRateXpandh or BodyTemperatureXpandh or OxygenSaturationXpandh )
 */

// ==> TO BE REVIEWED
* section contains sectionPhysicalExamination 0..1  // ToDo: add structure
* section[sectionPhysicalExamination]
  * title = "Physical examination"
  * code = $sct#425044008 "Physical exam section (record artifact)"
  * text 1..    // now only textual section, should we use questionnair resource for structuring per body part? Maybe as on option?
  * entry 0..   // now only textual section, should we use questionnair response or Observation for structuring per body part?

* section contains sectionFunctionalStatus 0..1
* section[sectionFunctionalStatus]
  * insert SectionComRules (
    Functional status,
    The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide.,
    $loinc#47420-5) // Functional status assessment note

/*   * code = $sct#1184588000 "Functional status document section (record artifact)" */
  /* * entry only Reference(FunctionalStatusAssessment) */

  * entry only Reference(Condition or ClinicalImpression or Observation or DocumentReference or QuestionnaireResponse)
    * ^short = "Optional entry used to represent disabilities and functional assessments"
    * ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
  
  // => add slices for diability or functional assessment ?
