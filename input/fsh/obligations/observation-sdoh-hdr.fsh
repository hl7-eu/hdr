Profile: ObservationSdohEuHdrObligation
Parent: ObservationSdohEuHdr
Id: observation-sdoh-obl-eu-hdr
Title: "Observation: SDOH: obligations"
Description: "Profile for Social Determinants of Health (SDOH) observations that involve assessment (e.g., by a provider, payer, etc.) as opposed to being derived only from screening surveys (as is the case for the SDOHCC Screening Response Observation)."

* insert SetFmmandStatusRule ( 0, informative)

* text insert ObligationSet2
* status insert ObligationSet2
* category[SocialHistory] insert ObligationSet1 

* code insert ObligationSet1 
* subject insert ObligationSet1 
* effective[x] insert ObligationSet2
* performer insert ObligationSet3
* value[x] insert ObligationSet1 
* note 