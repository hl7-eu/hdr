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
