# Consistency review notes – HL7 Europe Hospital Discharge Report

Decisions and conventions for this guide, read by the `fhir-ig-consistency` review before it raises findings. Items listed here are not re-raised as findings.

## Decisions

- **`CompositionEuHdr` parent:** `Composition`, not `CompositionEuCore`, because `CompositionEuCore` requires `section.text` (1..1). A change request to relax it to 0..1, with a "text or sub-sections" section invariant, is raised against EU Base. The EU Core slice name `informationRecipient` is kept.
- **`pin-canonicals`:** not adopted. The "multiple possible versions" suppressions stay.
- **Luigi De Luca example:** the two `FamilyMemberHistory` entries have no `BundleEuHdr` entry slice and are kept on purpose (referenced by an additional "Family History" section; open section slicing).
- **Obligation "does not match any known slice" suppression:** justified. The IG Publisher adds the `snapshot-source` tooling sub-extension to every obligation extension copied into a snapshot.
- **Encounter mappings:** `class` and `type` both map to `EHDSEncounter.type`, and `participant.period` maps to `header.date`. Both are intentional and documented on the Encounter mapping page.
- **`changes.md`:** updated at the very end of the release work. Flag the gaps, but don't treat them as blocking until then.
- **Obligations:** obligations are set where the review found them; no additional section-level obligations (e.g. on Discharge summary), Admission evaluation stays SHALL, obligations on the resource root are allowed, and not every resource type needs an obligation profile.
- **Groups and menu:** the current `sushi-config.yaml` groups (including the `eHNHospitalDishargeReport` id) and the menu labels are kept as they are.
- **Accepted leftovers:** unused rulesets are kept; the LOINC copyright year in `LOINCCopyrightForVS` and the SNOMED-only copyright on `ConditionHdrVS` are kept.
- **Examples:** the Novak Travel History observation is kept, and `#example` / `#inline` usage is not harmonised.
- **Dependencies:** `hl7.terminology.r4` is not pinned; the R5 and early-version dependencies are accepted.
- **`knownIssues.md`:** no further additions (R5 model dependency, R5 cross-version extensions, `bdl-hdr-2` false positive, unrevised obligation areas, resource types without an obligation profile).
- **Page markup:** the `<head>/<title>` elements in the mapping page fragments and the empty `<a>` / `<p>` elements are kept.

## Conventions

- Invariant ids: `<resource>-hdr-<n>` (e.g. `bdl-hdr-2`, `cmp-hdr-1`).
- Obligation profile names: `<Resource>EuHdrObligation`; titles "<ResourceType>: obligations".
- Maturity: HDR profiles and value sets `(2, trial-use)`; obligation profiles `(0, informative)`.
- EU Base links point to the pinned version (`/base/2.0.1/`); Xt-EHR model links to `/models/1.0.0/`.
- British English on the narrative pages.
