### HDR Structure


One of the primary challenges in implementing a standardized Hospital Discharge Report (HDR) across Europe - and even within the same country - is the variation in how different jurisdictions and healthcare settings organize discharge information. Although there is a common logical structure typically followed – consisting of **admission/anamnestic information**, **hospital course data**, and **discharge information** – the actual organization of HDRs can vary significantly in terms of how information is grouped and how sections are nested.

Some healthcare settings favor **flat structures**, where information is organized as a linear list of sections without significant hierarchical nesting. This approach is often perceived as more straightforward for data processing and integration, but it may compromise **readability** and the ability to present **complex relationships** between clinical data.

In contrast, other settings use a **nested structure**, where sections are organized hierarchically to group related information. This structure is more intuitive and readable for healthcare professionals, as it clearly groups interconnected information, but it also adds complexity to **data extraction** and **interoperability**.

An additional challenge lies in how the information is **displayed to human readers**, which may vary even when the underlying structure is standardized. Different healthcare systems and IT solutions may use diverse presentation formats, ranging from **text-heavy documents** with minimal formatting to **structured layouts** that include tables, graphs, or visual highlights. These variations in display can significantly impact the **usability and accessibility** of discharge reports, especially when shared across systems with differing capabilities.


### Leveraging ISO IDMP

European Medicines Agency has implemented ISO IDMP (FHIR R5) for marketing authorisation applications and registered product data. Therefore, many national medicines agencies are implementing ISO IDMP compatible systems or mapping layers to conform to the IDMP data model used by EMA and marketing authorisation holders. Also, electronic product information projects use ISO IDMP data model through FHIR R5 MedicationDefinition resources.

At the same time, eHealth services are motivated to use a similar data model in order to use good quality data from the original source. As ISO IDMP model is regulatory-oriented and too granular for most eHealth services, we have identified a core data set applicable for prescription and dispensation services. This subset is compliant with ISO IDMP, but is significantly reduced and slightly simplified. This ensures consistency between regulatory data and the eHealth data - on a real as well as virtual product level.

All data elements in Medication profile are optional, allowing each implementation to implement the granularity needed for their use case. While national systems often rely on a common medicinal product dictionary and may just exchange medication codes, crossborder services expect the medication information to be described on attribute level. Also, many national specifications prefer to include medication attributes in addition to the code in order to simplify the process on the receiver side.

### HL7 FHIR versions

European countries who already have a FHIR implementation, are using mostly R4, but some are also using R5. European Medicines Agency and national medicines agencies use R5 for ISO IDMP compatible data. Many countries don't have any FHIR implementations yet.

Considering the context, this FHIR Implentation Guide is created in R4 and R5 in parallel. Both IG versions contain the same content, but differences in FHIR core specification result in slightly different profiles, extensions, and examples. However, functionally the two specifications are the same, and should be perfectly compatible. Please report any discrepancies you may find.

