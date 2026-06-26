### EHDS Logical Data Models

The [**Xt-EHR Joint Action**](https://www.xt-ehr.eu/) has developed a set of logical data models, also referred to as information models, that are intended to support the future European Health Data Space (EHDS) Implementing Acts.

These models represent evolving and refined interpretations of the data sets described in the [**eHealth Network (eHN) Guidelines**](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines). This Implementation Guide aims to align the Hospital Discharge Report specification with the relevant EHDS logical models and to provide HL7 FHIR profiles that realise the requirements identified in those models.

The logical models listed below are those used by this guide, starting from the Xt-EHR `EHDSDischargeReport` model and the models directly referred to by it. Generic base models, such as `EHDSDocument` and `EHDSDataSet`, are not listed here.

<div class="model-map-block">
      <div class="callout-wrapper">
      <div class="callout-box">
        <strong>Ongoing alignment:</strong>
            The models are expected to continue evolving, with updates incorporated into this Implementation Guide to maintain alignment with the EHDS Implementing Acts.
      </div>
      </div>
</div>

---

### Xt-EHR Logical Models Used By This Guide

#### Discharge Report

| **Model** | **Description** |
| --- | --- |
| [EHDSDischargeReport](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSDischargeReport.html) | Generic model for discharge reports. This guide constrains and implements it for the Hospital Discharge Report use case. |

---

#### Header And Administrative Models

| **Model** | **Used for** |
| --- | --- |
| [EHDSPatient](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSPatient.html) | Subject of care and possible intended recipient. |
| [EHDSRelatedPerson](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSRelatedPerson.html) | Intended recipient or related person involved in the discharge report context. |
| [EHDSHealthProfessional](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSHealthProfessional.html) | Author, attester, legal authenticator, performer, or other health professional role. |
| [EHDSOrganisation](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSOrganisation.html) | Organisation involved in the document header, care provision, custody, or intended communication. |
| [EHDSEncounter](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSEncounter.html) | Encounter information for the hospital episode described by the report. |

---

#### Clinical Content Models

| **Model** | **Used for** |
| --- | --- |
| [EHDSAlert](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSAlert.html) | Alerts and warnings that health professionals should be aware of. |
| [EHDSCondition](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSCondition.html) | Diagnoses, problems, treated conditions, and condition-based functional status information. |
| [EHDSObservation](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSObservation.html) | Objective findings, observations, functional status information, and non-laboratory test results. |
| [EHDSLaboratoryObservation](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSLaboratoryObservation.html) | Laboratory observations included in test results. |
| [EHDSProcedure](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSProcedure.html) | Procedures performed during the encounter. |
| [EHDSDeviceUse](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSDeviceUse.html) | Medical devices and implants whose use was started, stopped, or modified during the encounter. |
| [EHDSMedicationUse](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSMedicationUse.html) | Pharmacotherapy during the encounter and medication summary information after discharge. |
| [EHDSCarePlan](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSCarePlan.html) | Care plans and structured recommendations after discharge. |
| [EHDSAttachment](https://www.xt-ehr.eu/fhir/models/1.0.0/StructureDefinition-EHDSAttachment.html) | Attachments included with the discharge report. |

---

Detailed mappings between these logical models and the FHIR profiles used in this guide are provided in the [Model Map Overview](modelmap.html).
