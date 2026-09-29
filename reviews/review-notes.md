# Consistency review notes – HL7 Europe Hospital Discharge Report

Decisions and conventions for this guide, read by the `fhir-ig-consistency` review before it raises findings. Items listed here are not re-raised as findings.

## Decisions

- **`CompositionEuHdr` parent:** `Composition`, not `CompositionEuCore`, because `CompositionEuCore` requires `section.text` (1..1). A change request to relax it to 0..1, with a "text or sub-sections" section invariant, is raised against EU Base. The EU Core slice name `informationRecipient` is kept.
- **`pin-canonicals`:** not adopted. The "multiple possible versions" suppressions stay.
- **Luigi De Luca example:** the two `FamilyMemberHistory` entries have no `BundleEuHdr` entry slice and are kept on purpose (referenced by an additional "Family History" section; open section slicing).
- **Obligation "does not match any known slice" suppression:** justified. The IG Publisher adds the `snapshot-source` tooling sub-extension to every obligation extension copied into a snapshot.
- **Encounter mappings:** `class` and `type` both map to `EHDSEncounter.type`, and `participant.period` maps to `header.date`. Both are intentional and documented on the Encounter mapping page.
- **`changes.md`:** updated at the very end of the release work. Flag the gaps, but don't treat them as blocking until then.

## Conventions

- Invariant ids: `<resource>-hdr-<n>` (e.g. `bdl-hdr-2`, `cmp-hdr-1`).
- Obligation profile names: `<Resource>EuHdrObligation`; titles "<ResourceType>: obligations".
- Maturity: HDR profiles and value sets `(2, trial-use)`; obligation profiles `(0, informative)`.
- EU Base links point to the pinned version (`/base/2.0.1/`); Xt-EHR model links to `/models/1.0.0/`.
- British English on the narrative pages.
