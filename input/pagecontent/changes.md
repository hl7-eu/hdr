This page summarizes the main changes applied to this version of the guide.

### From 0.1.0-ballot to current version

#### 🔧 Model Alignment and Refactoring

* Aligned with the **Xt-EHR model** v0.3.0 (FHIR-51927).
* Updated references to the latest **EU Core profiles and extensions**.
* Replaced usage of `ConditionEuHdr` and `ProcedureEuHdr` with `ConditionEuCore` and `ProcedureEuCore`.
* Refactored immunization and allergy profiles, including updated parent references.
* Updated `modelmap.xml` to reflect revised Flag references.
* Removed the eHN model and associated ConceptMaps.

#### 🧹 Scope Reduction and Cleanup

* Removed sections no longer referenced in the specification (FHIR-51923), including:

  * Infectious Contacts, Travel History, Family History, Social History
  * Substance Use (Alcohol, Tobacco, Drugs)
  * Advance Directives, Care Team, Payers
  * Past Illness History, Medical Devices, Procedures History
* Removed obsolete profiles and rulesets
* Cleaned up unused include statements and obsolete dependency references.
Remvoed 
* Refactored terminologies by removing unused value sets, including:
  * Encounter status, admission status, allergens, allergy substances
  * EHDSI condition POA and treatment class
  * Exposure agents and selected SDOH-related value sets


#### 🧪 Examples and Documentation

* Updated section titles and descriptions in HDR example FSH files for clarity.
* Improved example references and corrected documentation issues.