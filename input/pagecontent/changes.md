This page summarises the main changes applied to this version of the guide.

### From 0.1.0-ballot to 1.0.0

#### 🔧 Alignment with the EHDS logical models and HL7 Europe Base

* Aligned with the **Xt-EHR EHDS logical models** v1.0.0 ([FHIR-51927](https://jira.hl7.org/browse/FHIR-51927)).
* Adopted the Xt-EHR **Producer** and **Consumer** actors for the obligations ([FHIR-51864](https://jira.hl7.org/browse/FHIR-51864), [FHIR-57650](https://jira.hl7.org/browse/FHIR-57650)), and fixed the unresolved actor references ([FHIR-57700](https://jira.hl7.org/browse/FHIR-57700)).
* Updated the dependency to the **HL7 Europe Base and Core FHIR IG** 2.0.1 ([FHIR-59075](https://jira.hl7.org/browse/FHIR-59075)).
* Replaced the HDR Medication and MedicationRequest profiles with `MedicationEuCore` and `MedicationRequestEuCore` ([FHIR-52119](https://jira.hl7.org/browse/FHIR-52119)).
* Replaced the HDR AllergyIntolerance, Condition, Flag, Immunization, MedicationStatement and Procedure profiles with the corresponding EU Core profiles.
* Removed the Consent, FamilyMemberHistory and Observation (imaging finding, infectious contact, SDOH, travel history) profiles, no longer needed after the section changes ([FHIR-51923](https://jira.hl7.org/browse/FHIR-51923)).
* Removed the eHN logical model and the associated ConceptMaps; the eHN guidelines and logical model pages are replaced by the **Logical Models** page ([FHIR-57649](https://jira.hl7.org/browse/FHIR-57649)).

#### 📄 Document structure (Bundle and Composition)

* `Bundle.language` is required (1..1) and represents the main language of the report; the warning-severity invariant `bdl-hdr-2` checks that the languages of the individual resources, if populated, match it ([FHIR-51899](https://jira.hl7.org/browse/FHIR-51899)).
* `Bundle.entry:patient` is 1..* ([FHIR-51618](https://jira.hl7.org/browse/FHIR-51618)); `Composition.encounter` is 1..1 ([FHIR-52114](https://jira.hl7.org/browse/FHIR-52114)).
* `Composition.type`: the fixed display was removed ([FHIR-52113](https://jira.hl7.org/browse/FHIR-52113)). `Composition.category` is an optional element, with the LOINC code to be used for the HDR classification ([FHIR-52117](https://jira.hl7.org/browse/FHIR-52117)).
* Section descriptions updated ([FHIR-52116](https://jira.hl7.org/browse/FHIR-52116)).
* The Hospital course section is 0..1 and a new **Discharge summary** section (LOINC 18842-5) was added; the invariant `cmp-hdr-2` requires at least one of the two ([FHIR-52414](https://jira.hl7.org/browse/FHIR-52414)).
* Added the **History of procedures** section ([FHIR-57684](https://jira.hl7.org/browse/FHIR-57684)). The Medical devices section now covers `patientHistory.devicesAndImplants`, and a new section covers `courseOfEncounter.medicalDevicesAndImplants` ([FHIR-57685](https://jira.hl7.org/browse/FHIR-57685)).
* Removed the constraints on sub-sections ([FHIR-52095](https://jira.hl7.org/browse/FHIR-52095)); the invariant `cmp-hdr-1` ("A section SHALL have text, sub-sections, or both") applies to every section and sub-section.
* Added notes on determining whether a condition was present on admission ([FHIR-52090](https://jira.hl7.org/browse/FHIR-52090)) and on the timing of observations relative to the admission ([FHIR-51634](https://jira.hl7.org/browse/FHIR-51634)).
* Removed the sections no longer referenced by the model ([FHIR-51923](https://jira.hl7.org/browse/FHIR-51923)): Infectious contacts, Travel history, Family history, Social history, Substance use (alcohol, tobacco, drugs), Advance directives, Care team, Payers and Past illness history.
* `BundleEuHdr` entry slices aligned with the structural and obligation profiles ([FHIR-59479](https://jira.hl7.org/browse/FHIR-59479)): `relatedPerson`, `binary` and `serviceRequest` slices added; the unreachable `immunizationRecommendation` and `familyMemberHistory` slices removed.
* `CompositionEuHdr`: `author` and `informationRecipient` reference `DeviceEuHdr`; the section entries use the EU Core profiles; the `information-recipient` slice is renamed `informationRecipient`, as in the EU Core profiles.
* Invariants renamed to the `<resource>-hdr-<n>` pattern: `bdl-language-main-match` → `bdl-hdr-2`, `text-or-section` → `cmp-hdr-1`, `discharge-summary-or-hospital-course` → `cmp-hdr-2`.

#### 🧩 Other profiles

* `EncounterEuHdr`: added an **Admission diagnosis** slice on `Encounter.diagnosis` ([FHIR-57323](https://jira.hl7.org/browse/FHIR-57323)).
* `CarePlanEuHdr` revised, and a simple `GoalEuHdr` profile added ([FHIR-57698](https://jira.hl7.org/browse/FHIR-57698)); `CarePlan.activity.detail` is flagged as deprecated in R5/R6, with `activity.reference` recommended instead. `GoalEuHdr.subject` is restricted to `PatientEuCore`.
* Body site **laterality without pre-coordination** ([FHIR-53428](https://jira.hl7.org/browse/FHIR-53428)): `DeviceUseStatementEuHdr.bodySite` carries the R5 backport extension for `DeviceUsage.bodySite`, constrained to `Reference(BodyStructureEuCore)`, and `BundleEuHdr` has a `bodyStructure` entry slice. The invariant `dus-hdr-1` mirrors `eu-bodysite-1`: either a body site code or a reference to a `BodyStructure`, not both ([FHIR-58916](https://jira.hl7.org/browse/FHIR-58916)).
* `DeviceUseStatementEuHdr` and `DeviceEuHdr` aligned with the corresponding European Patient Summary profiles.
* All HDR profiles and value sets are FMM 2 / trial-use; profile texts, descriptions and titles harmonised.

#### 📋 Obligations

* Added obligations for the EHDS Organisation, HealthProfessional, Condition, Observation, Procedure, MedicationUse, DeviceUse, Device, RelatedPerson and LaboratoryObservation models, and updated the references between the obligation profiles ([FHIR-57644](https://jira.hl7.org/browse/FHIR-57644)).
* The Bundle and Composition obligation profiles are listed as top-level items on the artifacts page ([FHIR-57653](https://jira.hl7.org/browse/FHIR-57653)).
* Obligation profiles renamed to the `<Resource>EuHdrObligation` pattern (ids and canonical URLs are unchanged); all are FMM 0 / informative.
* `ObservationEuHdrObligation` derives from `Observation`; the results slice of the Significant results section uses `LaboratoryObservationEuHdrObligation`.
* Removed the unused `HumanNameEuObligations` profile, the obligations on the deprecated `CarePlan.activity.detail`, and obligation paths on non-existent elements.

#### 🏷️ Terminology

* Value set ids and descriptions harmonised ([FHIR-57680](https://jira.hl7.org/browse/FHIR-57680)).
* Removed the temporary code system ([FHIR-51921](https://jira.hl7.org/browse/FHIR-51921)).
* Removed unused value sets: admission status, allergens, allergy substances, eHDSI condition present on admission and treatment class, exposure agents, selected SDOH value sets, and the document category value set.

#### 🧪 Examples

* Example titles and descriptions harmonised ([FHIR-57680](https://jira.hl7.org/browse/FHIR-57680)); all are in English and declare the EU Core or HDR profile they conform to.
* Added the language of the Bundle and of the resources to the examples ([FHIR-51899](https://jira.hl7.org/browse/FHIR-51899)).
* Added examples for post-coordinated body site laterality: a `BodyStructure` with a laterality-free structure code and a separate laterality, referenced from a Condition, a Procedure and a DeviceUseStatement ([FHIR-53428](https://jira.hl7.org/browse/FHIR-53428)).
* Added a Bundle example with sub-sections, referenced from the Composition profile ([FHIR-51635](https://jira.hl7.org/browse/FHIR-51635)).

#### 📚 Narrative pages

* Home page: removed the "Design approach" paragraph ([FHIR-57645](https://jira.hl7.org/browse/FHIR-57645)) and improved the purpose text ([FHIR-57678](https://jira.hl7.org/browse/FHIR-57678)).
* Background page updated, including the participant statistics ([FHIR-57646](https://jira.hl7.org/browse/FHIR-57646)).
* Challenges page updated ([FHIR-52091](https://jira.hl7.org/browse/FHIR-52091)), with a new section on Hospital Discharge Report vs discharge report ([FHIR-57647](https://jira.hl7.org/browse/FHIR-57647)).
* References page updated ([FHIR-57648](https://jira.hl7.org/browse/FHIR-57648)); authors page updated ([FHIR-57652](https://jira.hl7.org/browse/FHIR-57652)).
* Implementation menu and Model Map Overview page revised ([FHIR-57651](https://jira.hl7.org/browse/FHIR-57651)); description columns removed from the model map tables ([FHIR-57693](https://jira.hl7.org/browse/FHIR-57693)).
* Typos fixed ([FHIR-52170](https://jira.hl7.org/browse/FHIR-52170), [FHIR-52171](https://jira.hl7.org/browse/FHIR-52171)).
* Removed ballot and preview wording; links point to HL7 Europe Base 2.0.1, the Xt-EHR models 1.0.0 and the adopted EHDS Regulation (EU) 2025/327; editorial improvements and British spelling across the pages.
