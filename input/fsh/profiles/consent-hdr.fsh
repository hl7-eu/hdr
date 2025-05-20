Profile: ConsentHdrEu
Parent: Consent
Id: consent-eu-hdr
Title:    "Consent (Advance Directives HDR)"
Description: """This profile constrains the Consent resource for the purpose representing Advance Directives for the scope of this guide."""

* insert SetFmmAndStatusRule (1, draft)

* extension contains $note named note 0..*
* extension[note] ^short = "Comment"

* extension contains ConsentRelatedCondition named relatedCondition 0..*
* extension[relatedCondition].valueReference ^short = "Related conditions"


* scope = #adr //add CS
* dateTime ^short = "Living will date and time"
* category ^short = "Living will type"
* source[x] ^short = "Living will document"
// ==> add value set


