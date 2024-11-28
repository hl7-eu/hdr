// --------------------------------------------------
ValueSet:   PoaIndicatorHdrVS
Id:        poa-indicator-eu-hdr
Title:      "Condition Present on Admission (POA) Value Set"
Description:  """Hospital Discharge Report Condition Present on Admission value set includes concept to assert if a condition from Present on Admission code system."""
* insert SetFmmandStatusRule (1, draft)

// remove local code systems

// TO BE REVISED

* $loinc#89251-3 "Condition present on admission" // SCT 3881000175103 Clinical finding present on admission (US ?) the LOINC code is not expceyt to have an answer Yes/No...
* $sct#277056009 "Hospital acquired" // is a qualifier could we use it ?
* $v3-NullFlavor#NI "NoInformation" // not proper becuse it doesn't say uncknoen classification for the condition 

/* 
* POAIndicatorEuHdrCs#POA "Present on admission"
* POAIndicatorEuHdrCs#HAC "Hospital acquired condition"
* POAIndicatorEuHdrCs#NA "Not applicable or unknown"
 */