### HDR Structure


One of the primary challenges in implementing a standardized Hospital Discharge Report (HDR) across Europe - and even within the same country - is the variation in how different jurisdictions and healthcare settings organize discharge information. Although there is a common logical structure typically followed – consisting of **admission/anamnestic information**, **hospital course data**, and **discharge information** – the actual organization of HDRs can vary significantly in terms of how information is grouped and how sections are nested.

Some healthcare settings favor **flat structures**, where information is organized as a linear list of sections without significant hierarchical nesting. This approach is often perceived as more straightforward for data processing and integration, but it may compromise **readability** and the ability to present **complex relationships** between clinical data.

In contrast, other settings use a **nested structure**, where sections are organized hierarchically to group related information. This structure is more intuitive and readable for healthcare professionals, as it clearly groups interconnected information, but it also adds complexity to **data extraction** and **interoperability**.

An additional challenge lies in how the information is **displayed to human readers**, which may vary even when the underlying structure is standardized. Different healthcare systems and IT solutions may use diverse presentation formats, ranging from **text-heavy documents** with minimal formatting to **structured layouts** that include tables, graphs, or visual highlights. These variations in display can significantly impact the **usability and accessibility** of discharge reports, especially when shared across systems with differing capabilities.


### HDR versus Discharge Report

The EHDS Regulation identifies the **Discharge Report** as one of the priority categories of electronic health data for cross-border exchange. However, the term "discharge report" is not used with exactly the same meaning in all Member States, healthcare systems, or implementation contexts. In some countries it is broadly equivalent to the **Hospital Discharge Report (HDR)**, describing the clinical documentation produced at the end of an inpatient hospital stay. In other settings, the same term may also cover reports produced after an emergency department encounter, an ambulatory specialist visit, a day-care episode, or other forms of discharge from a healthcare service.

This Implementation Guide therefore focuses on the **Hospital Discharge Report** as a clearly defined and clinically significant subset of the broader EHDS Discharge Report priority domain. The HDR is understood here as the document that summarizes an inpatient hospital episode, including the reason for admission, relevant clinical history, diagnoses, procedures, hospital course, results, treatments, discharge status, and follow-up recommendations.

This scope choice is intended to support consistent implementation and testing, while remaining aligned with the EHDS priority domain. It does not imply that other types of discharge-related reports are outside the EHDS Regulation or are less relevant for continuity of care. Rather, it recognizes that additional specialized guides may be needed in the future to address other kinds of "discharge report", such as emergency department discharge reports or ambulatory visit reports.

Common building blocks that can support the generation of discharge reports more generally are specified in the Base and Core Implementation Guides. These reusable elements provide a shared foundation for future specialized discharge report guides, including those covering report types beyond the hospital discharge report. They also provide an initial response to the expectation of specifying a generic "discharge report" framework.
