//====================================
// COMMON SECTIONS
//====================================


//========================================================

RuleSet: sectionCareTeamRules
* section contains sectionCareTeam ..1

* section[sectionCareTeam]
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
  * insert SectionComRules (
    Vital signs,
    The Vital signs section includes blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
    $loinc#8716-3) 
/*   * title = "Vital signs note"
  * code = $sct#1184593002 "Vital sign document section (record artifact)" */
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
