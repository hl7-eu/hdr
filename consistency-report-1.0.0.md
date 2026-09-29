# HL7 Europe Hospital Discharge Report – Consistency Review for 1.0.0 (STU 1)

- **Date:** 2026-09-29. Last updated after commit `2f40f44` on branch `release-1.0.0` (PR #144) and the IG Publisher run of 2026-09-29 12:12. Items that have been fixed have been removed; they are listed under *Fixed since the first review*.
- **Scope:** FSH sources (`input/fsh`), narrative pages (`input/pagecontent`, `input/includes`), configuration (`sushi-config.yaml`, `publication-request.json`, `ig.ini`), examples, the latest IG Publisher QA output (`output/qa.*`) and `input/ignoreWarnings.txt`.
- **Build status:**
  - SUSHI 3.20.1 reports 0 errors and 0 warnings.
  - The IG Publisher 2.3.4 run of 2026-09-29 12:12 was built as `hl7.fhir.eu.hdr#1.0.0`, status `active`, release label `trial-use`, and includes all commits up to `2f40f44`.
  - It reports **0 errors, 1 warning and 2 information messages**, plus 200 suppressed warnings and 682 suppressed hints.

## Fixed since the first review

- The QA reflects the release configuration (1.0.0 / active / trial-use).
- The IPS `file://` links are gone: the IPS 2.0.1 package was re-fetched.
- `ci-build` was removed from `publication-request.json`, and the QA no longer flags the publication request.
- The stale *"In this ballot publication…"* callouts were removed from `map-ehdscareplan.xml`, `map-ehdsdeviceuse.xml` and `map-ehdslaboratoryobservation.xml`.
- The obligations and section-codes STU notes were removed from `index.md`; `knownIssues.md` covers both.
- **Release blockers fixed (commit `74243ba`):**
  - Maturity and status: every HDR profile and value set now has `SetFmmAndStatusRule (2, trial-use)` (aligned with EU Base 2.0.1), and `ProcedureEuHdrObligation` has `(0, informative)` like the other obligation profiles.
  - `CarePlanEuHdrObligation` no longer has obligations on the deprecated `activity.detail`, `detail.kind` and `detail.description`. The obligations on `activity` and `activity.reference` remain.
  - Broken links fixed: `map-ehdsdischargereport.xml` (DeviceUse page link, and EU Base `map-ehdsmedicationstatement.html`), `map-ehdsrelatedperson.xml` (`patient-eu-core`) and `modelmap.xml` (`flag-patient-eu-core`).
  - `knownIssues.md` now documents the pre-release `ihe.pharm.mpd.r4#1.0.0-comment-2` dependency.
  - The 22:57 QA confirms the 9 *"resource status 'active' and the standards status 'draft' are not consistent"* warnings are gone.
- All EU Base links in the mapping pages and `modelmap.xml` now point to `/base/2.0.1/`, matching the dependency (31 links, commit `74243ba`).
- The IG description in `sushi-config.yaml` now refers to the EHDS logical model instead of the eHN guidelines.
- **Bundle and Composition alignment (commit `9d1dc3d`):**
  - Removed the unreachable `immunizationRecommendation` and `familyMemberHistory` entry slices from `BundleEuHdr` and `BundleEuHdrObligation`.
  - Added `relatedPerson`, `binary` and `serviceRequest` entry slices to `BundleEuHdr`. `BundleEuHdrObligation` narrows `relatedPerson` to `RelatedPersonEuHdrObligation`.
  - `CompositionEuHdr.author` and `extension[information-recipient]` now reference `DeviceEuHdr` instead of `Device`.
- The 07:44 QA confirms the generated pages link to EU Base `/base/2.0.1/`.
- **Composition and configuration (commits `8a58b9e`, `7444b53`):**
  - `CompositionEuHdr` was derived from `CompositionEuCore`, then rolled back to `Composition` because `CompositionEuCore` requires `section.text` (1..1). A change request to relax it to 0..1, with a "text or sub-sections" section invariant, is being raised against EU Base. The EU Core slice name `informationRecipient` is kept.
  - The two QA errors on `Composition.attester.party` caused by the `CompositionEuCore` parent are gone.
  - Section entries now use `ProcedureEuCore`, `AllergyIntoleranceEuCore` and `ImmunizationEuCore`.
  - The leftover `/// add profile` comment on `extension[basedOn]` was removed.
  - `license: CC0-1.0` is set.
  - The Expansion Parameters page is published.
  - The outdated `hdr-mindmap` page was moved to `_attic` and removed from the pages list.
  - `sushi-config.yaml`: the trailing spaces in the menu titles, the leftover laboratory id comment and the commented-out obligation group entries were removed.
- The Novak Discharge details sub-sections are fixed: "Objective findings at discharge" no longer overwrites "Functional status at discharge".
- `pin-canonicals` was considered and not adopted; the canonical-version suppressions stay.
- **Profile texts (commit `3a12398`):**
  - Composition: EPS/IPS copy-paste texts replaced; the IPS "no information" sentences removed from the Medical devices, Problem list and Immunizations entries; the Functional status entry texts passed to the ruleset so they are no longer overwritten; placeholder slice texts (Procedures history, Pharmacotherapy, Allergies, Results) replaced; typo "addtion" fixed.
  - Composition `^requirements`: `EHDSDischargeReport.` prefix added to all section mappings; the non-existent `body.dischargeSummary.generatedNarrative` mapping removed.
  - Encounter ("Encounter note", `text` requirement prefix), MedicationDispense ("prescription"), Bundle (`identifier` short "Document identifier") and DeviceUseStatement (description) texts fixed.
  - Obligation profile descriptions harmonised (Device, DeviceUseStatement, Condition, AllergyIntolerance, Flag, Procedure, HumanName), and the incorrect AllergyIntolerance `^purpose` removed.
  - Titles use the resource-type spelling: "AllergyIntolerance: obligations", "CarePlan: obligations", "HumanName: obligations", "CarePlan (HDR)", "Observation (laboratory): obligations".
  - Goal: description expanded and `subject` restricted to `PatientEuCore`.
  - Reviewed without change: Encounter `class` and `type` both map to `EHDSEncounter.type`, and `participant.period` maps to `header.date`; both are intentional and documented on the Encounter mapping page.
- The commented-out `cpl-hdr-1` invariant was removed from `CarePlanEuHdr`.
- The Novak Discharge details sub-section fix is committed (`e01e689`).
- The §3.3 profile-text fixes are committed (`3a12398`).
- **Invariant ids harmonised (commit `b13a0cc`):** `bdl-language-main-match` → `bdl-hdr-2`, `text-or-section` → `cmp-hdr-1`, `discharge-summary-or-hospital-course` → `cmp-hdr-2`. The `ignoreWarnings.txt` suppression, the Design page and the example comments are updated.
- **Obligation cleanup (commit `72e5186`):**
  - `HumanNameEuObligations` removed (moved to `_attic`); the Patient and Practitioner obligation profiles already carry the name obligations.
  - Bare paths on non-existent slices removed: Composition `extension[compositionVersionR5]` (and the bare `extension[basedOn]`), Immunization `extension[basedOn]`, Medication `strength.extension[strengthSubstance]`.
  - The commented-out `ImmunizationRecommendationEuHdrObligation` removed.
- The §6.5 editorial improvements to the narrative pages are applied (commit `2f40f44`).
- The FCP logos in `ig-template/content/assets/images/` are committed (`d9f3a48`).
- The leftover laboratory IG and template comments were removed from `ig.ini` (`e01e689`).
- Bare obligation paths with no rule (61 lines in 13 files) removed; the generated resources are unchanged (working copy, not yet committed).
- Obligation profile names harmonised to `<Resource>EuHdrObligation`: 11 profiles renamed (e.g. `PatientEuObligations` → `PatientEuHdrObligation`, `ConditionEuCoreObligation` → `ConditionEuHdrObligation`); ids and canonical URLs unchanged (working copy, not yet committed).
- The obligation "does not match any known slice" suppression (`ignoreWarnings.txt`, 533 information messages) is explained and justified: the IG Publisher adds the tooling sub-extension `http://hl7.org/fhir/tools/StructureDefinition/snapshot-source` to every obligation extension copied into a snapshot, and that sub-extension is not a slice of the `obligation` extension. The HDR obligations themselves only use `code` and `actor` (working copy, not yet committed).
- **Examples (working copy, not yet committed):**
  - `lab-swart-3` and `lab-swart-4` declared as `MedicalTestResultEuCore` instead of the obligation profile.
  - Novak `Practitioner-Admitter` and `Practitioner-Referrer` ids now match their fullUrls.
  - Examples declared as plain base resources now declare the EU Core / HDR profiles (Swart, Luigi De Luca, Paolo Marcheschi, Reijer Wolff, Novak); the vital-sign Observations declare `$vitalsigns` and use the `VSCat` category slice.
  - Novak: all titles harmonised to `Type: text` in English, Czech titles and descriptions translated, the descriptions citing `CZ_…` profiles reworded, and missing titles added.
  - Missing titles and descriptions added to the Luigi De Luca, Paolo Marcheschi and Reijer Wolff inline resources.
  - Novak: Czech TODO comments, the commented-out Infectious contact, Goal and Advance directives instances, the commented-out Advance directives section and the commented-out Bundle entries for non-existent resources removed. The commented-out Infectious contacts sub-section (with `TemporaryHDRSystem`) is gone as well.
  - Luigi De Luca: leftover `// EuHdr` comments removed.
  - `observations.fsh` (entirely commented out) moved to `_attic/examples`; `vaccination.fsh` keeps only the live Immunization example.
- All the above is in PR #144 (`release-1.0.0` → `master`).
- The stale `special-url` entries (`eHDSIConditionPOA`, `eHDSITreatmentClass`) were removed from `sushi-config.yaml`.
- The *Section LOINC codes* known issue, which mentioned temporary local codes, was removed from `knownIssues.md`.
- `FHIR-eu-hdr.xml` in the repository now lists version 1.0.0. The QA warning about the Jira file remains until the PR to HL7/JIRA-Spec-Artifacts is merged (§2).

Severity: **High** means fix before publication. **Medium** means it should be fixed for 1.0.0. **Low** means cleanup or editorial.

File references are relative to the repository root. Line numbers are those of the current working copy.

---

## 1. Release blockers (High)

| # | Area | Finding | Fix |
|---|---|---|---|
| 1 | Change log | `changes.md` contradicts the FSH: see §6.1. It lists *Medical Devices* and *Procedures History* sections as removed, although they still exist. It lists the Encounter status VS as removed, although it is in use. It says Xt-EHR model v0.3.0, but the dependency is 1.0.0. | Correct the entries and add the missing recent work. Deferred: `changes.md` will be updated at the very end of the release work. |

---

## 2. Configuration and publication

| Sev | Location | Finding | Fix |
|---|---|---|---|
| Medium | Jira | `FHIR-eu-hdr.xml` in the repository has been updated, but the QA compares against the file published on GitHub and still warns that it is out of date. | Submit `template/jira-new.xml` as a PR to HL7/JIRA-Spec-Artifacts. |
| Medium | `sushi-config.yaml:327-333` | The group id is misspelled (`eHNHospitalDishargeReport`). Its description, *"entry profiles"*, is wrong: it lists only the Bundle and Composition **obligation** profiles. The base profiles (Bundle, Composition, Encounter, CarePlan, Device, DeviceUseStatement, Goal, MedicationAdministration, MedicationDispense) and the value sets belong to no group. | Create a *Profiles* group with the base profiles. Move `bundle-obl-eu-hdr` and `composition-obl-eu-hdr` to the *Obligations* group. Add a *Terminology* group. |
| Low | `sushi-config.yaml` menu | Menu labels and page titles differ ("Model Maps" / "Model Map Overview", "Cross version" / "Cross version analysis"). | Harmonise the labels. |
| Low | Dependencies | `hl7.terminology.r4` is not pinned: 7.4.0 is resolved, while EU Base uses 7.3.0. `xtehr.eu.ehds.models` is an R5 package, which the QA flags as a version mismatch. `hl7.fhir.uv.xver-r5.r4` is `0.1.0`. | Pin `hl7.terminology.r4`. Document the rest in `knownIssues.md`. |

---

## 3. Profiles (FSH)

### 3.1 Composition sections vs Bundle entry slices

| Sev | Location | Finding | Fix |
|---|---|---|---|
| Low | `profiles/bundle-hdr.fsh:41-74` | `ClinicalImpression` and `QuestionnaireResponse` can be referenced from the Functional status section but have no Bundle entry slice. The slicing is open, so this is valid but not documented. | Add slices, or document that these types go in the open slicing. |
| Medium | `profiles/composition-hdr.fsh` (AdmissionEvaluation l.91, DischargeSummary l.155, HospitalCourse l.167, Synthesis l.305, PatientHx l.380, DischargeDetails l.431) | These sections have no `entry only` constraint, so any resource type is allowed. | Constrain the entries, or set `entry ..0` for narrative-only sections. |
| Low | `profiles/composition-hdr.fsh:112` | `Observation or DocumentReference or $vitalsigns`: `$vitalsigns` is redundant. | Remove one of them. |
| Low | `profiles/bundle-hdr.fsh:43` | `patient 1..*`, while `Composition.subject` is 1..1. | Use 1..1, or document why more than one Patient is allowed. |
| Low | `profiles/encounter-hdr.fsh:50,92` | `reasonReference` and `diagnosis.condition` use plain `Condition` and `Procedure`. | Use the EU Core profiles. |
| Low | `profiles/composition-hdr.fsh:13` | `extension[basedOn].valueReference only Reference(Resource or ServiceRequest)`: `Resource` makes `ServiceRequest` pointless. | Decide the target. |

### 3.2 Invariants

| Sev | Location | Finding | Fix |
|---|---|---|---|
| Low | `profiles/composition-hdr.fsh:53,468-471` | `cmp-hdr-1` (`text.exists() or section.exists()`) is attached to the Composition root (`* obeys cmp-hdr-1`), not to `section`. It therefore checks `Composition.text` and the top-level sections only, never the sub-sections, and it is always true because `section 1..` (l.52) already requires a section. | Attach it to `section` (`* section obeys cmp-hdr-1`) and reword the description to "A section SHALL have text, sub-sections, or both." Because `Composition.section.section` is a content reference to `Composition.section`, it then applies at every nesting level. This is the invariant proposed to EU Base together with relaxing `section.text` to 0..1. |

All invariant expressions were checked and look correct.

### 3.3 Leftovers in FSH

- **Stale TODO comments in `profiles/composition-hdr.fsh`:**
  - l.36: category binding "waiting a decision"
  - l.187
  - l.216: "ro be revised"
  - l.246: "TO BE REVISED"
  - l.291
  - l.314 and l.327
  - l.325 and l.354: refer to Xt-EHR 0.2.1 and are now obsolete
  - l.344
  - l.427-429: "see the open points below", but there are none
- **Commented-out blocks in `profiles/composition-hdr.fsh`:** Discharge instructions (l.332-340), Encounters section (l.457-464), presentedForm (l.14-21).
- **Other files:**
  - `profiles/carePlan-hdr.fsh:41`
  - `profiles/encounter-hdr.fsh:35,118`
  - `profiles/medicationDispense-hdr.fsh:22,26,27`
  - `profiles/bundle-hdr.fsh:85,95,96`: commented IPS profile aliases
- **Unused rulesets:** `sectionCareTeamRules`, `SectionComRules`, `SectionElementsRules` (references the non-existent `LabStudyTypesEuVs` and `ObservationResultsLaboratoryEu`), `SectionCommonRules`, `ImposeProfile`, `ExtensionContext`, `SetFmmAndStatusRuleInstance`, `ObligationElement`, `NPUCopyrightForVS` and `NIBSCCopyrightForVS`.
- **Aliases:**
  - About 165 of about 208 are unused. This includes every `-uv-ips` alias except `$vitalsigns`, all `$eHDSI*`, all `$ihe-ext-*`, and all `$specimen-*-r5`.
  - 9 are defined twice, identically, in `alias-ig.fsh:24-32` and `alias-valuesets.fsh:4-13`.
  - Placeholder or unchecked URLs: `$iccc3` ("FAKE URL"), `$ISCO-08`, `$medicalDevice-cs`, `$pms`.
  - `$Composition-eu-lab` and `$Observation-resultslab-eu-lab` point to a package that is not a dependency.
  - Prune the alias files.

### 3.4 Terminology

- `DocCategoryHdrVS` is defined, but its binding is commented out (`composition-hdr.fsh:36`). Bind it (extensible) or drop it.
- `ConditionHdrVS` also includes ICD-10 and Orphanet but carries only the SNOMED copyright. The title "Condition Value Set" is generic; suggest "Condition (HDR)".
- `LOINCCopyrightForVS` (`rulesSet-common.fsh:111`) says "1995-2020". Update it.
- No value set is referenced but missing.

---

## 4. Obligation profiles

| Sev | Location | Finding | Fix |
|---|---|---|---|
| Medium | `obligations/observation-hdr.fsh:2` | `ObservationEuHdrObligation` has parent `MedicalTestResultEuCore`, which requires category and effective[x]. The Composition obligation profile uses it for physical findings, functional status and vital signs (`obligations/composition-hdr.fsh:58,62,66,149`), and the Encounter obligation profile for `reasonReference` (`obligations/encounter-hdr.fsh:12`). This adds conformance constraints that the base profiles don't have. The Bundle obligation profile now uses plain `Observation`, so the two are also inconsistent. | Change the parent to `Observation`, or use plain `Observation` in the Composition and Encounter obligation profiles as well. |
| Medium | `obligations/laboratoryObservation-hdr.fsh` | A near-duplicate of `ObservationEuHdrObligation`. No profile references it; only two examples use it. | Use it for the results slices, or merge or remove it. |
| Medium | `obligations/composition-hdr.fsh:53` | Admission evaluation is `SHALL:able-to-populate`, but the base profile says this section is reported only exceptionally. | Use `OblShouldPopulateShallProcess`. |
| Medium | `obligations/composition-hdr.fsh` | `sectionDischargeSummary` has no obligation, although it is one arm of the `cmp-hdr-2` invariant (Hospital course is SHALL). Vital signs, Allergies, Immunizations and Attachments have entry obligations but none on the section itself. | Add section-level obligations. |
| Low | `examples/instances/vaccination.fsh:1-21` | The commented-out `ImmunizationRecommendationEuHdr` example is still in the file, although the profile, its obligation profile and the Bundle slice are gone. | Remove it, or move it to `_attic`. |
| Low | `encounter-hdr.fsh:9`, `carePlan-hdr.fsh:9`, `medicationAdministration-hdr.fsh:11`, `medicationDispense-hdr.fsh:11`, `medicationRequest-hdr.fsh:11` | Obligations on the resource root, while Composition explicitly avoids them. | Pick one convention. |
| Low | Coverage | There are no obligation profiles for Goal, BodyStructure, DiagnosticReport and Location. `obligations.md` doesn't say so. | Document this. |

---

## 5. Examples

| Sev | Location | Finding | Fix |
|---|---|---|---|
| Medium | `HDR-Petr-Novak-example.fsh:1201` | A Travel History observation, although the Travel History section was removed. It is still referenced by the "Cestovatelská anamnéza" sub-section of the Patient history section. | Keep it as sub-section content, or remove both. |
| Low | Usage | `#example` and `#inline` are mixed without a clear rule. 9 Novak Observations have no `Usage`. `example-medicationstatement-euhdr` (`medications.fsh:53`) has no Usage. | Define a rule. |
| Low | Bundle identifiers | Four different patterns. Swart uses `urn:ietf:rfc:4122` with a bare UUID. | Harmonise them. |
| Low | `HDR-Petr-Novak-example.fsh` | The commented-out Vital signs sub-section of the Admission evaluation section (an older copy of the one defined later) and the commented-out `ExampleAbdominalCircumference` Bundle entry are still in the file. | Remove them if not needed. |
| Info | `Bundle-HDR-Luigi-De-Luca-Example` entries 11 and 12 | The two `FamilyMemberHistory` resources do not match a `BundleEuHdr` entry slice (2 QA information messages). They are referenced by an additional top-level "Family History" section, which the open section slicing allows. | Kept as they are (decision). |

All resource types used in the five example Bundles, except the two FamilyMemberHistory entries above, have a matching `BundleEuHdr` entry slice. No duplicate instance ids were found.

---

## 6. Narrative pages

### 6.1 `changes.md`

| Sev | Line | Finding → Proposed |
|---|---|---|
| High | 7 | "Aligned with the **Xt-EHR model** v0.3.0" → "v1.0.0". |
| High | 21-26 | *Medical Devices* and *Procedures History* are listed as removed, but `sectionMedicalDevices` (`composition-hdr.fsh:208`) and `sectionProceduresHx` (`:228`) still exist. Remove them from the list. |
| High | 30 | *Encounter status* is listed as a removed value set, but `EncounterStatusHdrVS` is still used (`encounter-hdr.fsh:20`). Remove it from the list. |
| Medium | – | Missing entries: FHIR-59479 (bundle and obligation entry alignment, including CarePlanEuHdr, SpecimenEuHdrObligation and Observation in the Bundle obligation profile), FHIR-51635 (sub-section example), FHIR-59075 (EU Base 2.0.1), and `Bundle.language` 1..1 with the `bdl-hdr-2` invariant (formerly `bdl-language-main-match`). |
| Low | 11 | "Updated `modelmap.xml`…" names a source file. Use "Updated the Model Map Overview page…". |
| Low | 39 | The file has no trailing newline. |

### 6.2 Stale ballot or preview wording

| Location | Original | Proposed |
|---|---|---|
| `input/includes/composition-eu-hdr-intro-shared.xml:8` | "Reviewers are invited to provide their feedback about the usage of the Medication related resources (e.g. MedicationStatement,  MedicationRequest,...) in the medication lists used by the HDR…more clear boundaries" | "Implementers are invited to provide feedback, via HL7 Jira, on the use of medication-related resources (e.g. MedicationStatement, MedicationRequest) in the HDR medication lists…clearer boundaries." |
| `index.md:29-38` | The commented-out "QA preview version" banner is still in the source (not rendered) | Remove it. |
| `scope.md:8` | "the EHDS logical models currently developed by the Xt-EHR joint action" | "the EHDS logical models (v1.0.0) published by the Xt-EHR Joint Action" |
| `modelmap.xml:12` (and the map pages, `logicalmodels.md:13`) | "The models are expected to continue evolving…" | "Future versions of the Xt-EHR models and of the EHDS Implementing Acts may require updates to these mappings." |

### 6.3 Broken or inconsistent links

| Sev | Location | Finding → Fix |
|---|---|---|
| Medium | `map-ehdsdeviceuse.xml:29`, `map-ehdsencounter.xml:29` | Unversioned Xt-EHR links → `…/fhir/models/1.0.0/…`. |
| Medium | `background.md:1`, `index.md:60` | The EHDS link points to the draft text (`PE-76-2024-INIT`) → Regulation (EU) 2025/327, `http://data.europa.eu/eli/reg/2025/327/oj`, as in `references.md`. |
| Low | `obligations.md:21,23` | The actor links use `/models/en/…` → `/models/1.0.0/…`. |
| Low | `references.md:4,8` | A `/1.0.0/en/` URL pattern, and a D7.3 URL with an upload path. Check both resolve. |
| Low | `modelmap.xml:185` | The label "EHDSMedicationStatement Mapping" is in the EHDSMedicationUse row → "EHDSMedicationUse Mapping". |

### 6.4 Content inconsistencies

| Sev | Location | Finding → Proposed |
|---|---|---|
| Medium | `index.md:43`, `scope.md:1` | "consistent with / aligned with the eHealth Network (eHN) Guidelines" → "based on the Xt-EHR EHDS logical models, which refine the eHN Guidelines on Hospital Discharge Reports". |
| Medium | `index.md:49` vs `scope.md:1` | Index says the guide "doesn't describe how this report is exchanged", while Scope says "representing and exchanging". Align them, e.g. in Scope: "…(transport and exchange mechanisms are out of scope)". |
| Medium | `design.md:11` | "A few sections are required." → "At least one of the Discharge summary or Hospital course sections SHALL be present (invariant `cmp-hdr-2`)." |
| Medium | `design.md` vs `includes/composition-eu-hdr-notes-shared.xml:29` | The notes file recommends the flat structure and links the sub-sections example. `design.md` duplicates the rest of the text but not this. Align them, or keep one copy. |
| Medium | `obligations.md:30-52` | The table is missing `organization-`, `practitioner-`, `practitionerRole-`, `relatedPerson-`, `laboratoryObservation-` and `observation-obl-eu-hdr`. Add them and sort alphabetically. |
| Medium | `logicalmodels.md:30-38` | `EHDSDevice` is missing, although the discharge report references it and it has a map page. Add: "EHDSDevice – Device acting as author or attester, and device used by the patient (via EHDSDeviceUse)." |
| Medium | `challenges.md:15` | "priority categories of electronic health data for cross-border exchange" → "priority categories of personal electronic health data for primary use". |
| Medium | `crossversionanalysis.md:3` | "parallel flavours for HL7 FHIR R4 and R5", but no R5 version is linked, and `downloads.md` only offers R4 and R4B. Add the R5 link, or reword. |
| Medium | `authors.md:12` | "responsible for preparing the implementing acts" → "responsible for preparing proposals and guidelines supporting the EHDS implementing acts". |
| Medium | `map-ehdsdeviceuse.xml:131` | The bodySite row doesn't mention the R5 backport extension or `dus-hdr-1`, which `changes.md` introduces. Add them. |
| Medium | `map-ehdsrelatedperson.xml:4` | "RelatedPerson (HDR)" suggests an HDR profile that doesn't exist → "EHDSRelatedPerson → RelatedPerson". |
| Low | `map-ehdsdischargereport.xml:435,479,509` | `.note` is mapped to `.text` here, while elsewhere it is mapped to `extension:section-note`. Harmonise, or explain. |
| Low | `map-ehdsdischargereport.xml:557` | The `presentedForm` row is yellow, but this page has no legend for the colour. |
| Medium | `map-ehdscareplan.xml:102`, `map-ehdslaboratoryobservation.xml:106,480,487,494` | **New since the callouts were removed:** these rows are still highlighted yellow (`highlight-yellow`), but no page explains the colour any more. | Resolve the rows and drop the highlight, or add a short legend, e.g. "Rows highlighted in yellow identify mappings that need further review with the Xt-EHR Joint Action." |
| Low | `map-ehdsencounter.xml:88,104-106` | `header.source` is marked "no-map" but has a target. The `header.date` target and its note disagree. |
| Low | `map-ehdslaboratoryobservation.xml:189,225,360` | Uses both `extension[bodyStructure]` and `extension:xxx`. `uncertainty.type` gives the resource as MedicalTestResultEuCore, where it should be Quantity. |
| Low | `background.md:52` vs `authors.md` | "More than 200 distinct participants from 29 countries" vs "224 individual contributors". Use one figure. |

### 6.5 Language and editorial conventions

**General conventions to apply across the pages:**

- **Spelling.** Pages mix British and US English ("organisation" / "organization", "realise" / "organize"). HL7 Europe normally uses British English.
- **Naming of the eHN guidelines.** Use the full name from `references.md` once, then "eHN HDR Guidelines".
- **Naming of the Joint Action.** Always write "Xt-EHR Joint Action".
- **Punctuation.** Don't mix hyphens and dashes (`challenges.md:4`), or straight and curly apostrophes (`authors.md:14`).
- **Markup.** Remove the leftover `<head>/<title>` elements inside `<div>` fragments in the map pages and `modelmap.xml`. Also remove the mojibake comment (`âœ…`) in `modelmap.xml:7`, and the empty `<a> </a>` and `<p></p>` elements in the notes include.

### 6.6 `knownIssues.md`: suggested additions

- The dependency on the R5-based Xt-EHR model package (the FHIR version mismatch reported by the Publisher).
- The use of R5 cross-version extensions (`hl7.fhir.uv.xver-r5.r4#0.1.0`).
- The `bdl-hdr-2` FHIRPath false positive, which is suppressed in QA.
- Obligation areas not revised yet, from the earlier to-do list: EHDSAlert, Patient, Organisation, HealthProfessional, Condition, Observation, Procedure, MedicationUse, DeviceUse and Device.
- Resource types that have no obligation profile.
- Any artifacts kept at a lower maturity.

---

## 7. QA output and `ignoreWarnings.txt`

This section is based on the IG Publisher 2.3.4 run of 2026-09-29 12:12, built as `1.0.0` / `active` / `trial-use`.

**Visible messages:** 0 errors, 1 warning and 2 information messages.

| # | Message | Resources | Fix |
|---|---|---|---|
| 1 | The Jira spec file is out of date (the QA compares against GitHub) | IG | Submit `template/jira-new.xml` to HL7/JIRA-Spec-Artifacts (§2). |
| 2 (information) | *"This element does not match any known slice defined in the profile …bundle-eu-hdr"* | `Bundle-HDR-Luigi-De-Luca-Example`, entries 11 and 12 (FamilyMemberHistory) | See §5. |

**Publication request check:** no issues reported (version 1.0.0, milestone, trial-use, STU 1).

**Suppressed messages:** 200 warnings and 682 hints. The renamed `bdl-hdr-2` suppression still matches (1 use). The per-type table below is from the first review.

| Type | Warnings | Hints |
|---|---|---|
| Obligation StructureDefinitions | 86 | 600 |
| Profile StructureDefinitions (`composition-eu-hdr` alone has 50) | 54 | 23 |
| Bundles | 41 | 341 |

**Suppressions that hide fixable issues:**

| Lines | Entry (uses) | Fix |
|---|---|---|
| 126, 130-133 | Non-matching slices on `composition-eu-hdr` (17) and others | Fix the example codes so they match the slices. |
| 171, 75-100 | Canonical multiple possible versions (69) | Kept as suppressions (`pin-canonicals` not adopted). |
| 187 | `MSG_DRAFT` "Draft code system used" (17) | Refers to draft code systems from dependencies, not to HDR artifacts (these are all trial-use now). Keep it, but add a comment explaining it. |
| 180 | `Terminology_TX_NoValid_3_CC` (26) | A blanket suppression. Narrow it to specific messages. |
| 198 | `ext-ab-1` (10) | Add `key` to the additional bindings. |
| 118-122 | Multiple matching profiles for the vital signs | Declare `$vitalsigns` on the examples. |
| 61, 69, 27/201 | Observation performer (12), UCUM annotation, duplicate anchors | Fix the examples. |

**Stale entries** (0 uses, safe to delete):

- L10, L21, L24, L38-40
- L44-46, L48-49, L52-58
- L64-65, L72
- L77, L79-80, L82-87, L93-94, L96, L98, L100
- L106, L110-111, L127-128, L136-137, L143, L146, L150
- L165-167, L190

Only 14 of 83 resources declare a `language`. Consider adding it to the standalone examples.

---

## 8. Repository hygiene

- **`to-do.txt`:** its items are only partially complete (see §6.1). Remove it from the release tag.
- **`Requirements-fromNarrative.json`:** Publisher-generated. Remove it and add it to `.gitignore`.
- **`FHIR-eu-hdr.xml`:** belongs in the JIRA-Spec-Artifacts PR.
- **`_attic/` (81 files) and `_xtehr/` (105 files):** consider keeping them out of the release branch.
- **`input/images-source/*-map.plantuml`:** some files (AdvanceDirectives, PatientHistory, …) reference removed profiles. Delete them.
- **`input/images-source/hdr-mindmap.plantuml`, `header-mindmap.plantuml`, `body-mindmap.plantuml`:** used only by the `hdr-mindmap` page, which is now in `_attic`. They are still rendered at build time. Move them to `_attic` too.

---

## 9. Suggested order of work

1. Fix the groups (§2).
2. The remaining stale wording and links (§6.2-6.3). Update `changes.md` (§6.1) at the very end, including all fixes made during this review.
3. Obligation profile fixes (§4): the Observation parent, section-level obligations.
4. The Composition/Bundle alignment (§3.1).
5. Example fixes (§5) and the `ignoreWarnings.txt` cleanup (§7).
6. Content consistency on the pages (§6.4) and the general conventions (§6.5, §6.6).
