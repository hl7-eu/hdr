Profile: FamilyMemberHistoryEuHdrObligation
Parent: FamilyMemberHistoryEuHdr
Id: familyMemberHistory-obl-eu-hdr
Title: "FamilyMemberHistory: obligations"
Description: "This profile represents the constraints applied to the FamilyMemberHistory resource by this guide."


* insert SetFmmandStatusRule ( 0, informative)
* dataAbsentReason  insert ObligationSet2
* patient  insert ObligationSet1
* relationship  insert ObligationSet2

* bornDate 

* deceasedAge insert ObligationSet3
* deceasedDate insert ObligationSet3

* condition insert ObligationSet2
  * code   insert ObligationSet1
  * note   insert ObligationSet3