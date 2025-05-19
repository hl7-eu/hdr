// --------------------------------------------------
ValueSet:   AllergensHdrVS
Id:         allergens-eu-hdr
Title:      "Allergens Value Set"
Description:  """List of substances that can cause an allergic reactions or an Intolerance.
This Values Set is a composition of the eHDSI Value Set:
- eHDSIAllergenNoDrug
- eHDSIActiveIngredient
- eHDSISubstance"""

* insert SetFmmAndStatusRule (1, draft)
* ^experimental = false

* codes from valueset $eHDSIAllergenNoDrug
* codes from valueset $eHDSISubstance
* codes from valueset $eHDSIActiveIngredient

