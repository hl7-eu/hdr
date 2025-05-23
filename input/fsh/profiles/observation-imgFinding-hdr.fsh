Profile: ObservationImgFindingEuHdr
Parent: Observation
Id: observation-imgFinding-eu-hdr
Title: "Observation: Imaging Finding (HDR)"
Description: "This profile constrains the Observation resource to represent a finding during imaging procedure for the purpose of this guide, adapted from the Imaging Study Report work. "


* insert SetFmmAndStatusRule (1, draft)

* basedOn
  * insert SliceElement( #type, $this )
* basedOn contains imorderaccession 0..1
* basedOn[imorderaccession] // only Reference( ImOrder )
  * identifier 0..1  
    * system 1..1
    * value 1..1
    * type 1..1
    * type = $v2-0203#ACSN
  
* partOf
  * insert SliceElement( #type, $this )
* partOf contains 
    imagingstudy 0..* and
    procedure 0..* 
* partOf[imagingstudy] only Reference( ImagingStudy )
  * ^short = "Imaging study that produced this observation"
* partOf[procedure] only Reference( ProcedureEuHdr )
  * ^short = "Procedure that produced this observation"
  
* category
  * insert SliceElement( #value, $this )
* category contains imaging 1..1
* category[imaging] = http://terminology.hl7.org/CodeSystem/observation-category#imaging

* code from $results-radiology-observations-uv-ips (preferred)

* subject only Reference( PatientEuCore )

* performer only Reference( PractitionerRoleEuCore )
 
* derivedFrom
  * insert SliceElement( #type, $this )
* derivedFrom contains 
    imagingstudy 0..* 
    // and   imagingselection 0..* 
* derivedFrom[imagingstudy] only Reference( ImagingStudy )
  * ^short = "Imaging study that produced this observation"
/* * derivedFrom[imagingselection] only Reference( ImImagingSelection )
  * ^short = "Series or image that produced this observation" */

* valueString ^short = "Finding description"

