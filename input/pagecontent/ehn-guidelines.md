
### Overview

The European eHealth Network "GUIDELINE on the electronic exchange of health data under
Cross-Border Directive 2011/24/EU Hospital Discharge Report" - Release 1.1 is addressed to the Member States of the European Union and applies to support the exchange of Hospital Discharge Report for continuity of care in a cross-border setting.

These guidelines could serve as a guiding principle for the national development and implementation of Hospital Discharge Reports.

### eHN Data Set

The eHN Hospital Discharge Report Guideline in section 4 specifies a HOSPITAL DISCHARGE REPORT DATASET, which records all clinically relevant information pertaining to the patient’s stay in a hospital, which are essential for the continuity of care.

The Hospital Discharge Report (HDR) has two main components:

- The header and
- The body.

The **header** contains essential administrative and identification data about the patient, healthcare providers, and other key participants in the patient's care.

The **body** consists of the core clinical details regarding the patient's stay, treatment, and discharge plan.

{% include hdr-mindmap.svg %}

#### Header

The Hospital Discharge Report Header component provides documentation for the:

- **Identification of the patient/subject:** This includes critical identification information like the patient's *given name*, *family name*, *date of birth*, and *national healthcare patient ID*. It also covers *nationality*, *gender*, and the patient’s *country of affiliation*.
- **Patient/subject related contact information:** This involves the patient’s *address* and *telecommunication contact details* (e.g., phone numbers and email addresses). It may also include details of a *preferred healthcare professional* (name, identifier, role, organization).
- **Health insurance and payment information:** Key data related to health insurance, including the *insurance code*, *name of the health insurance provider*, and the *patient's health insurance number*.
- **Information recipient:** Refers to the intended recipient of the hospital discharge report. This includes *recipient's name*, *organization*, *address*, and *telecom details*.
- **Author:** Documents the *author of the report*, including their identifier (e.g., license number), name, and organizational information. The author is responsible for signing off on the content of the report.
- **Attester:** The healthcare professional who verifies the content of the report. This includes the *attester’s identifier*, *name*, *organization*, and the *date and time of attestation*.
- **Legal authenticator:** The person taking legal responsibility for the report. Includes the *identifier*, *name*, *organization*, and *date of authentication*.
- **Document metadata:** Contains the document's unique *identifier*, *type*, and metadata such as the *date and time* of creation or modification, ensuring proper tracking of the report.

{% include header-mindmap.svg %}

#### Body

The Hospital Discharge Report Body component includes:

- **Presented form:** The Hospital Discharge Report in its narrative form; that is, in a printable representation.
- **Advance directives:** Legal documents like living wills or DNR orders guiding treatment decisions.
- **Alerts:** Important medical alerts like allergies or other critical patient conditions.
- **Encounter:** Details of the hospital encounter, including admission date, reason, and type (inpatient/outpatient).
- **Admission evaluation:** Key findings and diagnostic results from the admission process.
- **Hx general Reported:** A comprehensive record of the patient’s medical history prior to the hospital stay.
- **Course of hospitalisation:** Progress of the patient during the hospital stay, including treatments and interventions.
- **Discharge details:** Information about the discharge date, destination, and post-discharge care instructions.
- **Care plan and other recommendations after discharge:** Detailed follow-up care plan, including medications and therapy recommendations.

{% include body-mindmap.svg %}


#### eHN Data Set as HL7 FHIR logical models

The HL7 FHIR logical models used to represent the HOSPITAL DISCHARGE REPORT DATASET as defined in section 4 of that eHN guideline are documented in the [HL7 FHIR Models](logicalModel.html) page.
