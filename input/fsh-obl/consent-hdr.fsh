Profile: ConsentHdrEuObligation
Parent: ConsentHdrEu
Id: consent-obl-eu-hdr
Title:    "Consent (Advance Directives HDR)"
Description: """This profile defines obligations for the Consent resource for the purpose representing Advance Directives for the scope of this guide."""

* insert SetFmmandStatusRule (1, draft)
* insert SetFmmandStatusRule ( 0, informative)

* extension contains $note named note 0..*
* extension[note] ^short = "Comment"

* extension contains ConsentRelatedCondition named relatedCondition 0..*
* extension[relatedCondition].valueReference ^short = "Related conditions"


* scope = #adr //add CS
* dateTime ^short = "Living will date and time"
* category ^short = "Living will type"
* source[x] ^short = "Living will document"
// ==> add value set


