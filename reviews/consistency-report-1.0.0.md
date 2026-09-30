# HL7 Europe Hospital Discharge Report – Consistency Review for 1.0.0 (STU 1)

- **Date:** 2026-09-29. Last updated after commit `536a4b1` on branch `release-1.0.0` (PR #147, open), the uncommitted title fixes for 2-1, and the IG Publisher run of 2026-09-29 17:17, following `reviews/review-notes.md`. Items that have been fixed have been removed; they are listed under *Fixed since the first review* at the end of the report.
- **Scope:** FSH sources (`input/fsh`), narrative pages (`input/pagecontent`, `input/includes`), configuration (`sushi-config.yaml`, `publication-request.json`, `ig.ini`), examples, the latest IG Publisher QA output (`output/qa.*`) and `input/ignoreWarnings.txt`.
- **Build status:**
  - SUSHI 3.20.1 reports 0 errors and 0 warnings.
  - The IG Publisher 2.3.4 run of 2026-09-29 17:17 was built as `hl7.fhir.eu.hdr#1.0.0`, status `active`, release label `trial-use`, from the working copy (commit `536a4b1` plus the two uncommitted title changes for 2-1).
  - It reports **0 errors, 1 warning and 0 information messages**, plus 197 suppressed warnings and 685 suppressed hints.

Severity: **High** means fix before publication. **Medium** means it should be fixed for 1.0.0. **Low** means cleanup or editorial.

File references are relative to the repository root. Line numbers are those of the current working copy.

Each open item has an id `<section>-<n>` (e.g. `3.1-2`). Ids are stable: fixed or accepted items keep their id when they move to *Won't fix (accepted)* or *Fixed since the first review*, and new items get the next free number.

---

## 1. Release blockers (High)

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 1-1 | High | `input/pagecontent/changes.md` | Final check of the change log, to be done at the very end of the release work. The page was updated in `86a744c`, but later fixes (including all the open items of this report that get fixed) must also be reflected, and the listed changes must still match the FSH. | Re-check `changes.md` against the FSH and the *Fixed since the first review* list just before publication. |

---

## 2. Configuration and publication

No open items.

---

## 3. Profiles (FSH)

### 3.1 Composition sections vs Bundle entry slices

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.1-3 | Low | `profiles/composition-hdr.fsh:102` | `Observation or DocumentReference or $vitalsigns`: `$vitalsigns` is redundant. | Remove one of them. |
| 3.1-5 | Low | `profiles/encounter-hdr.fsh:50,92` | `reasonReference` and `diagnosis.condition` use plain `Condition` and `Procedure`. | Use the EU Core profiles. |

### 3.2 Invariants

No open items.

All invariant expressions were checked and look correct.

### 3.3 Leftovers in FSH

No open items.

### 3.4 Terminology

No open items. No value set is referenced but missing.

---

## 4. Obligation profiles

No open items.

---

## 5. Examples

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 5-3 | Low | Bundle identifiers | Four different patterns. Swart uses `urn:ietf:rfc:4122` with a bare UUID. | Harmonise them. |

All resource types used in the five example Bundles, except the two FamilyMemberHistory entries (5-4, accepted), have a matching `BundleEuHdr` entry slice. No duplicate instance ids were found.

---

## 6. Narrative pages

### 6.1 Language and editorial conventions

No open items.

### 6.2 `knownIssues.md`: suggested additions

No open items.

---

## 7. QA output and `ignoreWarnings.txt`

This section is based on the IG Publisher 2.3.4 run of 2026-09-29 17:17, built as `1.0.0` / `active` / `trial-use`.

**Visible messages:** 0 errors, 0 warnings and 0 information messages (IG Publisher run of 2026-09-30 09:14).

| ID | Message | Resources | Fix |
|---|---|---|---|

**Publication request check:** no issues reported (version 1.0.0, milestone, trial-use, STU 1).

**Suppressed messages:** 197 warnings and 685 hints. The renamed `bdl-hdr-2` suppression still matches (1 use). The per-type table below is from the first review.

| Type | Warnings | Hints |
|---|---|---|
| Obligation StructureDefinitions | 86 | 600 |
| Profile StructureDefinitions (`composition-eu-hdr` alone has 50) | 54 | 23 |
| Bundles | 41 | 341 |

**Suppressions that hide fixable issues:**

| ID | Lines | Entry (uses) | Fix |
|---|---|---|---|
| 7-3 | 77-82 | Non-matching slices on `composition-eu-hdr` (17) and on the EU Core / HDR profiles of the examples (1-4 each) | Fix the example codes so they match the slices. |
| 7-5 | 117 | `MSG_DRAFT` "Draft code system used" (17) | Refers to draft code systems from dependencies, not to HDR artifacts. The comment above it only says "Draft code system used": say which code systems and why the suppression is acceptable. |
| 7-6 | 110 | `Terminology_TX_NoValid_3_CC` (26) | A blanket suppression by message id. Narrow it to specific messages. |
| 7-7 | 127 | `ext-ab-1` (10) | Add `key` to the additional bindings. |
| 7-8 | 69-73 | Multiple matching profiles for the 5 Luigi De Luca vital signs (1 use each) | Still matched after declaring `$vitalsigns`: the message comes from matching the Bundle entries against the `observation` entry slice. Keep them, with a justification comment. |
| 7-9 | 41, 45, 27/130 | Observation performer (12), UCUM annotation, duplicate anchors (1 each) | Fix the examples. |
| 7-11 | 10 | **New:** `Unknown code 'system' in the CodeSystem …examplescenario-actor-type` has 0 uses in the 15:03 run. | Delete it. |
| 7-12 | 94-98 | **New:** five "No definition could be found for URL value …" suppressions (example identifier systems `urn:ietf:rfc:4122`, `fhir.nl` naming systems, `sukl.cz`) have no justification comment. | Add a comment, e.g. "identifier systems used in the examples, not resolvable". |
| 7-13 | 104, 107, 113 | **New:** further blanket suppressions by message id: `PIN_VERSION` (2), `MSG_DEPENDS_ON_DEPRECATED_NOTE` (2), `NO_VALID_DISPLAY_FOUND_NONE_FOR_LANG_OK` (33). | Narrow them to specific messages, or justify them. |

**Stale entries:** the 49 entries with 0 uses in the 14:04 run have been deleted, together with their comments.

**[7-10]** Only 14 of 81 resources (17%) declare a `language`. Consider adding it to the standalone examples.

---

## 8. Repository hygiene

- **[8-4]** **`_attic/` (101 tracked files) and `_xtehr/` (105 tracked files):** consider keeping them out of the release branch.

---

## 9. Suggested order of work

1. The Composition/Bundle alignment (§3.1).
2. The remaining example items (§5) and suppressions that hide fixable issues (§7).
3. Last, just before publication: the final check of `changes.md` (1-1).

---

## Won't fix (accepted)

Items reviewed and accepted as they are. They keep their id and the structure of the section they come from; the last column gives the rationale.

### 2. Configuration and publication

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 2-2 | Medium | `sushi-config.yaml:327-333` | The group id is misspelled (`eHNHospitalDishargeReport`). Its description, *"entry profiles"*, is wrong: it lists only the Bundle and Composition **obligation** profiles. The base profiles (Bundle, Composition, Encounter, CarePlan, Device, DeviceUseStatement, Goal, MedicationAdministration, MedicationDispense) and the value sets belong to no group. | Accepted as is |
| 2-3 | Low | `sushi-config.yaml` menu | Menu labels and page titles differ ("Model Maps" / "Model Map Overview", "Cross version" / "Cross version analysis"). | Accepted as is |
| 2-4 | Low | Dependencies | `hl7.terminology.r4` is not pinned: 7.4.0 is resolved, while EU Base uses 7.3.0. `xtehr.eu.ehds.models` is an R5 package, which the QA flags as a version mismatch. `hl7.fhir.uv.xver-r5.r4` is `0.1.0`. | Accepted as is |

### 3.1 Composition sections vs Bundle entry slices

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 3.1-1 | Low | `profiles/bundle-hdr.fsh:41-74` | `ClinicalImpression` and `QuestionnaireResponse` can be referenced from the Functional status section but have no Bundle entry slice. The slicing is open, so this is valid but not documented. | Accepted as is |
| 3.1-2 | Medium | `profiles/composition-hdr.fsh` (AdmissionEvaluation l.81, DischargeSummary l.145, HospitalCourse l.157, Synthesis l.288, PatientHx l.345, DischargeDetails l.393) | These sections have no `entry only` constraint, so any resource type is allowed. | Accepted as is |
| 3.1-4 | Low | `profiles/bundle-hdr.fsh:43` | `patient 1..*`, while `Composition.subject` is 1..1. | Accepted as is |
| 3.1-6 | Low | `profiles/composition-hdr.fsh:13` | `extension[basedOn].valueReference only Reference(Resource or ServiceRequest)`: `Resource` makes `ServiceRequest` pointless. | Accepted as is |

### 3.3 Leftovers in FSH

- **[3.3-4]** **Unused rulesets:** `sectionCareTeamRules`, `SectionComRules`, `SectionElementsRules` (references the non-existent `LabStudyTypesEuVs` and `ObservationResultsLaboratoryEu`), `SectionCommonRules`, `ImposeProfile`, `ExtensionContext`, `SetFmmAndStatusRuleInstance`, `ObligationElement`, `NPUCopyrightForVS` and `NIBSCCopyrightForVS`. `LOINCCopyrightForVS` is also unused since `DocCategoryHdrVS` was removed (3.4-1). **Rationale:** Accepted as is.
- **[3.3-5]** **Aliases:** **Rationale:** Accepted as is.
  - 162 of 208 are unused. This includes every `-uv-ips` alias except `$vitalsigns`, all `$eHDSI*`, all `$ihe-ext-*`, and all `$specimen-*-r5`.
  - Placeholder or unchecked URLs: `$iccc3` ("FAKE URL"), `$ISCO-08`, `$medicalDevice-cs`, `$pms`.
  - `$Composition-eu-lab` and `$Observation-resultslab-eu-lab` point to a package that is not a dependency; the second was used only in a commented-out rule, removed with 3.3-2. `$pms` is used only in the commented-out rule kept on purpose in `vaccination.fsh:12`.

### 3.4 Terminology

- **[3.4-2]** (rest) `ConditionHdrVS` also includes ICD-10 and Orphanet codes but carries only the SNOMED CT copyright. **Rationale:** Accepted as is.
- **[3.4-3]** `LOINCCopyrightForVS` (`rulesSet-common.fsh:111`) says "1995-2020". Update it. **Rationale:** Accepted as is.

### 4. Obligation profiles

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 4-3 | Medium | `obligations/composition-hdr.fsh:53` | Admission evaluation is `SHALL:able-to-populate`, but the base profile says this section is reported only exceptionally. | Accepted as is |
| 4-4 | Medium | `obligations/composition-hdr.fsh` | `sectionDischargeSummary` has no obligation, although it is one arm of the `cmp-hdr-2` invariant (Hospital course is SHALL). Vital signs, Allergies, Immunizations and Attachments have entry obligations but none on the section itself. | Accepted as is |
| 4-5 | Low | `encounter-hdr.fsh:9`, `carePlan-hdr.fsh:9`, `medicationAdministration-hdr.fsh:11`, `medicationDispense-hdr.fsh:11`, `medicationRequest-hdr.fsh:11` | Obligations on the resource root, while Composition explicitly avoids them. | Accepted as is |
| 4-6 | Low | Coverage | There are no obligation profiles for Goal, BodyStructure, DiagnosticReport and Location. `obligations.md` doesn't say so. | Accepted as is |

### 5. Examples

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 5-1 | Medium | `HDR-Petr-Novak-example.fsh:1201` | A Travel History observation, although the Travel History section was removed. It is still referenced by the "Cestovatelská anamnéza" sub-section of the Patient history section. | Accepted as is |
| 5-2 | Low | Usage | `#example` and `#inline` are mixed without a clear rule. 9 Novak Observations have no `Usage`. `example-medicationstatement-euhdr` (`medications.fsh:53`) has no Usage. | Accepted as is |
| 5-4 | Info | `Bundle-HDR-Luigi-De-Luca-Example` entries 11 and 12 | The two `FamilyMemberHistory` resources do not match a `BundleEuHdr` entry slice (2 QA information messages). They are referenced by an additional top-level "Family History" section, which the open section slicing allows. | Kept as they are: the entries are referenced by an additional top-level Family History section, allowed by the open section slicing. The message is suppressed in `ignoreWarnings.txt` with a justification. |

### 6.1 Language and editorial conventions

- **[6.1-5]** **Markup.** Remove the leftover `<head>/<title>` elements inside `<div>` fragments in the map pages and `modelmap.xml`. Also remove the mojibake comment (`âœ…`) in `modelmap.xml:7`, and the empty `<a> </a>` and `<p></p>` elements in the notes include. Empty `<a>` / `<p>` elements are also left on all mapping pages, `authors.md:19`, `background.md:7` and `obligations.md:28`. **Rationale:** Accepted as is.

### 6.2 `knownIssues.md`: suggested additions

- **[6.2-1]** The dependency on the R5-based Xt-EHR model package (the FHIR version mismatch reported by the Publisher). **Rationale:** Accepted as is.
- **[6.2-2]** The use of R5 cross-version extensions (`hl7.fhir.uv.xver-r5.r4#0.1.0`). **Rationale:** Accepted as is.
- **[6.2-3]** The `bdl-hdr-2` FHIRPath false positive, which is suppressed in QA. **Rationale:** Accepted as is.
- **[6.2-4]** Obligation areas not revised yet, from the earlier to-do list: EHDSAlert, Patient, Organisation, HealthProfessional, Condition, Observation, Procedure, MedicationUse, DeviceUse and Device. **Rationale:** Accepted as is.
- **[6.2-5]** Resource types that have no obligation profile. **Rationale:** Accepted as is.

### 7. QA output and `ignoreWarnings.txt`

| ID | Lines | Entry (uses) | Rationale |
|---|---|---|---|
| 7-4 | 101, 49-57 | Canonical multiple possible versions (90) | Kept as suppressions: `pin-canonicals` was considered and not adopted. |

### 8. Repository hygiene

- **[8-3]** **`FHIR-eu-hdr.xml`:** belongs in the JIRA-Spec-Artifacts PR. **Rationale:** Accepted as is.

---

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
- Bare obligation paths with no rule (61 lines in 13 files) removed; the generated resources are unchanged (commit `6a90c5a`).
- Obligation profile names harmonised to `<Resource>EuHdrObligation`: 11 profiles renamed (e.g. `PatientEuObligations` → `PatientEuHdrObligation`, `ConditionEuCoreObligation` → `ConditionEuHdrObligation`); ids and canonical URLs unchanged (commit `6a90c5a`).
- The obligation "does not match any known slice" suppression (`ignoreWarnings.txt`, 533 information messages) is explained and justified: the IG Publisher adds the tooling sub-extension `http://hl7.org/fhir/tools/StructureDefinition/snapshot-source` to every obligation extension copied into a snapshot, and that sub-extension is not a slice of the `obligation` extension. The HDR obligations themselves only use `code` and `actor` (commit `37d3824`).
- **Examples (commit `37d3824`):**
  - `lab-swart-3` and `lab-swart-4` declared as `MedicalTestResultEuCore` instead of the obligation profile.
  - Novak `Practitioner-Admitter` and `Practitioner-Referrer` ids now match their fullUrls.
  - Examples declared as plain base resources now declare the EU Core / HDR profiles (Swart, Luigi De Luca, Paolo Marcheschi, Reijer Wolff, Novak); the vital-sign Observations declare `$vitalsigns` and use the `VSCat` category slice.
  - Novak: all titles harmonised to `Type: text` in English, Czech titles and descriptions translated, the descriptions citing `CZ_…` profiles reworded, and missing titles added.
  - Missing titles and descriptions added to the Luigi De Luca, Paolo Marcheschi and Reijer Wolff inline resources.
  - Novak: Czech TODO comments, the commented-out Infectious contact, Goal and Advance directives instances, the commented-out Advance directives section and the commented-out Bundle entries for non-existent resources removed. The commented-out Infectious contacts sub-section (with `TemporaryHDRSystem`) is gone as well.
  - Luigi De Luca: leftover `// EuHdr` comments removed.
  - `observations.fsh` (entirely commented out) moved to `_attic/examples`.
- **Commit `86a744c` (PR #146):**
  - **[8-1]** `to-do.txt` removed from the repository.
  - **[8-2]** `Requirements-fromNarrative.json` (generated by the IG Publisher) removed from the repository and added to `.gitignore`.
  - **[8-5]** The 13 `input/images-source/*-map.plantuml` diagrams moved to `_attic/images-source`: none is used by a page (their page entries in `sushi-config.yaml` are commented out), and several reference removed profiles.
  - **[8-6]** `hdr-mindmap.plantuml`, `header-mindmap.plantuml` and `body-mindmap.plantuml` moved to `_attic/images-source`, like the `hdr-mindmap` page.
  - Novak: the commented-out Vital signs sub-section of the Admission evaluation section and the commented-out `ExampleAbdominalCircumference` Bundle entry were removed.
  - `ignoreWarnings.txt`: the 49 stale entries (and the comments of groups left empty) were deleted; the Luigi De Luca FamilyMemberHistory "does not match any known slice defined in the profile …bundle-eu-hdr" message is suppressed with a justification.
  - `changes.md` updated (former §6.1): Xt-EHR models v1.0.0; Medical Devices, Procedures History and Encounter status no longer listed as removed; FHIR-59479, FHIR-51635, FHIR-59075 and the `Bundle.language` / `bdl-hdr-2` change added; a "Consistency review for the 1.0.0 publication" summary added; trailing newline added.
  - Stale wording (former §6.2): the medication feedback paragraph, the commented-out QA preview banner in `index.md`, "currently developed" in `scope.md`, and "The models are expected to continue evolving" on 10 pages.
  - Links (former §6.3): versioned Xt-EHR links on the DeviceUse and Encounter mapping pages and for the actors; EHDS Regulation (EU) 2025/327 link in `index.md` and `background.md`; `/en/` removed from the `references.md` model link (both `references.md` links resolve); "EHDSMedicationUse Mapping" label in `modelmap.xml`.
  - Content (former §6.4): eHN wording in `index.md` and `scope.md` (exchange out of scope); `cmp-hdr-2` stated in `design.md` and the notes include; flat-structure recommendation added to `design.md`; obligation profiles table rebuilt from the profiles (24 rows, sorted); `EHDSDevice` added to `logicalmodels.md`; `challenges.md`, `crossversionanalysis.md`, `authors.md` and `background.md` (224 contributors) reworded; DeviceUse `bodySite` row documents the R5 backport and `dus-hdr-1`; RelatedPerson mapping titles; note rows in the discharge report mapping explained; yellow-row legend on the three pages using it; Encounter `header.date` / `header.source` rows; laboratory `extension:bodyStructure` and `uncertainty.type` rows.
- The commented-out `ImmunizationRecommendationEuHdr` example was removed from `vaccination.fsh` (commit `6a90c5a`); the file keeps only the live Immunization example.
- All the above is merged into `master` (PR #144 and PR #145).
- **[3.2-1]** `cmp-hdr-1` ("A section SHALL have text, sub-sections, or both.") now applies to `Composition.section` instead of the Composition root, so it checks every section and sub-section (commit `1365dcb`).
- The stale `special-url` entries (`eHDSIConditionPOA`, `eHDSITreatmentClass`) were removed from `sushi-config.yaml`.
- The *Section LOINC codes* known issue, which mentioned temporary local codes, was removed from `knownIssues.md`.
- `FHIR-eu-hdr.xml` in the repository now lists version 1.0.0. The QA warning about the Jira file remains until the PR to HL7/JIRA-Spec-Artifacts is merged (§2).
- **Resolved by the re-run of 2026-09-29 15:03:**
  - **[6.2-6]** No artifact is kept at a lower maturity: all HDR profiles and value sets are FMM 2 / trial-use, the obligation profiles FMM 0 / informative, so there is nothing to add to `knownIssues.md`.
  - **[7-2]** The Luigi De Luca FamilyMemberHistory information messages are suppressed in `ignoreWarnings.txt` with a justification (commit `86a744c`); the 15:03 run shows 0 information messages.
- **Commit `5bb34f8` (PR #146):**
  - **[3.3-5]** (part) The 9 value set aliases defined twice, identically, in `alias-ig.fsh` and `alias-valuesets.fsh` were removed from `alias-ig.fsh` (with their empty "Value Sets" heading); `alias-valuesets.fsh` keeps them. The rest of 3.3-5 stays open.
  - **[3.4-1]** `DocCategoryHdrVS` (`doc-category-eu-hdr`), defined but never bound, was removed: moved to `_attic/terminology`, the comment on `CompositionEuHdr.category` removed, the artifact marked as deprecated in the Jira spec file. This also removed the "waiting a decision" TODO on `CompositionEuHdr.category` (part of 3.3-1).
  - **[3.4-2]** (part) `ConditionHdrVS` title changed from "Condition Value Set" to "Condition (HDR)", then to "Condition Value Set (HDR)" (see 2-1). The copyright part is accepted (see *Won't fix*).
  - **[5-5]** Commented-out rules and instances removed from the examples (97 lines): Swart (the commented-out `lab-swart-1` / `lab-swart-2` instances with their section and Bundle entries, and one rule), Novak (67 lines), Luigi De Luca (2), Paolo Marcheschi (1), Reijer Wolff (1) and `vaccination.fsh` (1). The generated resources are unchanged. `vaccination.fsh:12` is kept on purpose ("to be reactivated when the cross version package will be fixed").
  - **[6.1-1]** British spelling on the narrative pages: "organise/organisation", "standardised", "recognises/recognised", "harmonisation" (16 occurrences in `challenges.md`, `design.md`, `index.md`, `scope.md`, `obligations.md`, the laboratory mapping page and the notes include), and in the `OrganizationEuHdrObligation` description. "Organization" as a FHIR resource name and ids in URLs are unchanged.
  - **[6.1-2]** eHN guidelines named "eHealth Network Guideline on Hospital Discharge Report" at first mention, then "eHN HDR Guidelines" (`index.md`, `scope.md`, `logicalmodels.md`, `references.md`).
  - **[6.1-3]** "Xt-EHR Joint Action" in `obligations.md`.
  - **[6.1-4]** `challenges.md`: parenthetical hyphens replaced by en dashes; `authors.md`: straight apostrophes only.
  - **[6.1-6]** Trailing newline added to `copyright.md`, `crossversionanalysis.md`, `dependencies.md`, `scope.md` and the two `composition-eu-hdr-*-shared.xml` includes.
- **Commit `536a4b1` (PR #147):**
  - **[3.3-1]** Stale TODO and "verify" comments removed from `CompositionEuHdr` ("too restrictive", "ro be revised", "TO BE REVISED", "Review the slice definiton", "review the CarePlan profile", the Xt-EHR 0.2.1 notes, "Check if CarePlanEuHdr is needed", "mapped from medicationSummary ?", "see the open points below").
  - **[3.3-2]** Commented-out blocks and rules removed from `CompositionEuHdr`: presentedForm extension, Discharge instructions section, Encounters section, IPS `CodeableConcept-uv-ips` rules, `section ..0` rules, the alternative SNOMED CT section code and the EU Lab `entry only` rule.
  - **[3.3-3]** Leftovers removed: `carePlan-hdr.fsh` ("Add slices … ?"), `encounter-hdr.fsh` ("voc binding" notes), `medicationDispense-hdr.fsh` ("// MS //" notes and a commented `medicationReference` rule), `bundle-hdr.fsh` (commented IPS profile aliases).
  - **[3.3-6]** Commented-out rules removed from `allergy-hdr-obl.fsh`, `composition-hdr.fsh` (obligations), `specimen-obl.fsh`, `medicationAdministration-hdr.fsh`, `rulesSet-common.fsh` (including the commented-out `JCTLMCopyrightForVS` ruleset) and `encounter-vs.fsh`.
  - All changes are comment-only: the generated resources are identical to those of commit `5bb34f8`. Explanatory comments (e.g. on `SectionComRulesWithTitle`, the presentedForm note in the Composition obligation profile) are kept.
  - **[4-1]** `ObservationEuHdrObligation` now derives from `Observation` instead of `MedicalTestResultEuCore`, so it no longer requires `category` and `effective[x]` where the base profiles allow any Observation (Physical findings, Functional status, Vital signs, `Encounter.reasonReference`).
  - **[4-2]** `LaboratoryObservationEuHdrObligation` (parent `MedicalTestResultEuCore`) is now used for the `results-medicalTestResult` slice of the Significant results section in `CompositionEuHdrObligation`, and is allowed in that section's entries.
- **Commit `a182811` (PR #147):**
  - **[2-1]** (part) Titles that collided with names in the published Jira spec file changed, so that the Publisher assigns the right keys: Novak `ExampleWeight` "Observation: Body weight, Petr Novák" (was taking the Swart key `Observation-gewicht-swart`), `ConditionHdrVS` "Condition Value Set (HDR)" (was taking the key of the deprecated `StructureDefinition/condition-eu-hdr`). The 17:17 run regenerated `FHIR-eu-hdr.xml` with the correct keys.
- **IG Publisher run of 2026-09-30 09:14:**
  - **[2-1]** The Jira spec file on HL7/JIRA-Spec-Artifacts now matches the IG; `FHIR-eu-hdr.xml` regenerated (0.1.0-ballot marked as deprecated; the Encounter Type value set keeps the key of its former id).
  - **[7-1]** The QA warning about the Jira spec file is gone: 0 errors, 0 warnings, 0 information messages.
