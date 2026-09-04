

### Sections structure

To address the [**Hospital Discharge Report Structure Challenge**](challenges.html), we have opted for a **flexible approach** rather than imposing a rigid format.

The **"flat structure"** documented in the guide should be understood as a sort of **"section library"** that can be reused in both **flat and nested structures**. This approach allows implementers to organize the report according to local or institutional needs while maintaining a standardized content model.

In practice:

1. A few sections are required.
2. **Section slices are open**, meaning that implementers have the freedom to include additional **"first-level" sections**.
3. With the exception of a few specific cases, **sub-sections are allowed**, giving healthcare providers the ability to create a structure that best fits their clinical context.

By offering this level of flexibility, the implementation guide supports diverse healthcare environments while promoting consistency in content and interoperability.


### Section entry optionality

In order to support the different maturity levels foreseen for the **European EHR eXchange Format** (structured, text-only, unstructured), this version of the guide does not require entries to be present in the HDR sections.  

However, the presence of entries in the HDR sections is generally recommended to ensure a more structured and interoperable document.  

This recommendation is expressed in this guide through **specific obligations**, which guide implementers toward achieving a higher level of data quality and interoperability.


### Bundle and resource language

`Bundle.language` **SHALL** be populated and represents the **main language** of the Bundle.

Individual resources contained in `Bundle.entry.resource` **MAY** populate their own `language` element. If populated, the individual resource language **SHOULD** be consistent with the main language declared in `Bundle.language`.

For this comparison, only the **primary language subtag** is considered. Regional variants of the same language are therefore considered matching. For example, `fr-BE`, `fr-FR`, and `fr-CA` are considered matching because they share the same primary language subtag, `fr`. The comparison is case-insensitive (for example, `en-US` and `EN-gb` are considered matching).

This expectation is conveyed by the warning-severity invariant `bdl-language-main-match` on the [Bundle (HDR)](StructureDefinition-bundle-eu-hdr.html) profile.


