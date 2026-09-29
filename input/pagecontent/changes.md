This page summarizes the main changes applied to this version of the guide.

### From 0.1.0-ballot to 1.0.0

#### 🔧 Model Alignment and Refactoring

* Aligned with the **Xt-EHR EHDS logical models** v1.0.0 (FHIR-51927).
* Updated references to the latest **EU Core profiles and extensions** (HL7 Europe Base and Core 2.0.1, FHIR-59075).
* Replaced usage of `ConditionEuHdr` and `ProcedureEuHdr` with `ConditionEuCore` and `ProcedureEuCore`.
* Refactored immunization and allergy profiles, including updated parent references.
* Updated the Model Map Overview page to reflect revised Flag references.
* Removed the eHN model and associated ConceptMaps.
* Enabled body site **laterality without pre-coordination** (FHIR-53428):
  * `DeviceUseStatementEuHdr.bodySite` now carries the R5 backport extension for `DeviceUsage.bodySite`, constrained to `Reference(BodyStructureEuCore)`. The generic `bodySite` extension is not used, as its context of use does not cover `DeviceUseStatement.bodySite`.
  * `BundleEuHdr` gained a `bodyStructure` entry slice, so the referenced `BodyStructure` resources travel inside the document.
  * `ConditionEuCore` and `ProcedureEuCore` already provide the `bodySite` extension, so they needed no change.
* Added invariant `dus-hdr-1` on `DeviceUseStatementEuHdr.bodySite` (FHIR-58916), mirroring `eu-bodysite-1` from the EU core profiles: either a body site code or a reference to a `BodyStructure`, but not both.
* `Bundle.language` is now required (1..1) and represents the main language of the report. The warning-severity invariant `bdl-hdr-2` checks that the languages of the individual resources, if populated, match it.
* Aligned the `BundleEuHdr` entry slices with the structural and obligation profiles (FHIR-59479), including `CarePlanEuHdr`, `SpecimenEuHdrObligation` and `Observation` in the Bundle obligation profile.

#### 🧹 Scope Reduction and Cleanup

* Removed sections no longer referenced in the specification (FHIR-51923), including:

  * Infectious Contacts, Travel History, Family History, Social History
  * Substance Use (Alcohol, Tobacco, Drugs)
  * Advance Directives, Care Team, Payers
  * Past Illness History
* Removed obsolete profiles and rulesets
* Cleaned up unused include statements and obsolete dependency references.
* Refactored terminologies by removing unused value sets, including:
  * Admission status, allergens, allergy substances
  * EHDSI condition POA and treatment class
  * Exposure agents and selected SDOH-related value sets


#### 🧪 Examples and Documentation

* Updated section titles and descriptions in HDR example FSH files for clarity.
* Improved example references and corrected documentation issues.
* Added examples for post-coordinated body site laterality (FHIR-53428): a `BodyStructure` carrying a laterality-free structure code plus a separate laterality, referenced from a Condition, a Procedure and a DeviceUseStatement.
* Added a Bundle example with sub-sections (FHIR-51635), referenced from the Composition profile.

#### ✅ Consistency review for the 1.0.0 publication

* All HDR profiles and value sets are now FMM 2 / trial-use; the obligation profiles are FMM 0 / informative.
* `BundleEuHdr`: removed the `immunizationRecommendation` and `familyMemberHistory` entry slices, and added `relatedPerson`, `binary` and `serviceRequest` entry slices.
* `CompositionEuHdr`: `author` and `informationRecipient` reference `DeviceEuHdr`; section entries use the EU Core profiles; the `information-recipient` slice is renamed `informationRecipient`, as in the EU Core profiles.
* Invariants renamed to the `<resource>-hdr-<n>` pattern: `bdl-language-main-match` → `bdl-hdr-2`, `text-or-section` → `cmp-hdr-1`, `discharge-summary-or-hospital-course` → `cmp-hdr-2`. `cmp-hdr-1` ("A section SHALL have text, sub-sections, or both") now applies to every section and sub-section.
* Obligation profiles renamed to the `<Resource>EuHdrObligation` pattern (ids and canonical URLs are unchanged). The unused `HumanNameEuObligations` profile was removed, and `CarePlanEuHdrObligation` no longer has obligations on the deprecated `activity.detail`.
* `GoalEuHdr.subject` is restricted to `PatientEuCore`.
* Profile texts, descriptions and titles harmonised, and the examples declare the EU Core or HDR profiles they conform to.
* Narrative pages: removed ballot and preview wording, fixed broken links (EU Base links now point to version 2.0.1), and applied editorial improvements.
