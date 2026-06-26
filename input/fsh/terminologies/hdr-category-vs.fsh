// --------------------------------------------------
ValueSet:   DocCategoryHdrVS
Id:         doc-category-eu-hdr
Title:      "Document Category Value Set"
Description:  """Hospital Discharge Report Document Category value set includes concepts from the LOINC code system that are used to classify the document as a discharge summary note."""
* insert LOINCCopyrightForVS
* insert SetFmmAndStatusRule (1, draft)
* ^experimental = false
* $loinc#LP72467-1 "Discharge summary note"
