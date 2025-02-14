Extension: ConsentRelatedCondition
Id:   consent-relatedCondition
Title:  "Consent Related Condition"
Description: """The problem or disorder to which the living will applies."""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Consent"
* value[x] only Reference(Condition)

