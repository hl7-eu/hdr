
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <blockquote class="stu-note">
  <b>Informative for this version of the guide</b>
  <p>Obligations have been added to this version of the guide only as informative material to collect feedback about their usage.</p>
 </blockquote>
</div>

### Overview

Obligations are a means offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL apply to the data elements specified by the profiles.

Obligations are defined in StructureDefinitions distinct from those used to define the structural constraints.

This page also describes the actors used for specifying the obligations.

### Actors

This version of this guide adopts the actors specified by the Xt-EHR Joint Action:

* the [Consumer](https://www.xt-ehr.eu/fhir/models/1.0.0/ActorDefinition-actor-consumer.html): a system that receives electronic health data originating from another system and processes or displays that data. In this role, the system is responsible for ingesting and validating the received data and for preserving the meaning, structure, and associated metadata of the information in accordance with the applicable Consumer obligations, ensuring correct interpretation and presentation to end users or other systems.

* the [Producer](https://www.xt-ehr.eu/fhir/models/1.0.0/ActorDefinition-actor-producer.html): a system that generates or makes available structured electronic health data for exchange. In this role, the system is responsible for being technically capable of populating the relevant data elements in accordance with the applicable “able-to-populate” obligations and for associating the required metadata, such as authorship, provenance, status, and temporal information, before the data are made available to downstream systems.

### Obligations List

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<p> </p>

<table class="grid">
      <col style="width:30%"/>
     <tbody>
      <tr><td><a href="StructureDefinition-allergyIntolerance-obl-eu-hdr.html">AllergyIntolerance: obligations</a></td><td>This profile defines obligations for the AllergyIntolerance resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-bundle-obl-eu-hdr.html">Bundle: obligations</a></td><td>This profile defines obligations for the Hospital Discharge Report for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-carePlan-obl-eu-hdr.html">CarePlan: obligations</a></td><td>This profile defines obligations for the CarePlan resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-composition-obl-eu-hdr.html">Composition: obligations</a></td><td>This profile defines obligations for a Hospital Discharge Report (HDR) for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-condition-obl-eu-hdr.html">Condition: obligations</a></td><td>This profile defines obligations for the Condition resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-device-obl-eu-hdr.html">Device: obligations</a></td><td>This profile defines obligations for the Device resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-deviceUseStatement-obl-eu-hdr.html">DeviceUseStatement: obligations</a></td><td>This profile defines obligations for the DeviceUseStatement resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-encounter-obl-eu-hdr.html">Encounter: obligations</a></td><td>This profile defines obligations for Inpatient Encounter in HL7 FHIR for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-flag-obl-eu-hdr.html">Flag: obligations</a></td><td>This profile defines obligations for the Flag resource to represent alerts or warnings in FHIR for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-immunization-obl-eu-hdr.html">Immunization: obligations</a></td><td>This profile defines obligations for the Immunization resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-medication-obl-eu-hdr.html">Medication: obligations</a></td><td>This profile defines obligations for the Medication resource for the purpose of this guide, adapted from the MPD work.</td></tr>
      <tr><td><a href="StructureDefinition-medicationAdministration-obl-eu-hdr.html">MedicationAdministration: obligations</a></td><td>This profile defines obligations for the MedicationAdministration resource for the purpose of this guide, adapted from the MPD work.</td></tr>
      <tr><td><a href="StructureDefinition-medicationDispense-obl-eu-hdr.html">MedicationDispense: obligations</a></td><td>This profile defines obligations for the MedicationDispense resource for the purpose of this guide, adapted from the MPD work.</td></tr>
      <tr><td><a href="StructureDefinition-medicationRequest-obl-eu-hdr.html">MedicationRequest: obligations</a></td><td>This profile defines obligations for the MedicationRequest resource for the purpose of this guide, adapted from the MPD work.</td></tr>
      <tr><td><a href="StructureDefinition-medicationStatement-obl-eu-hdr.html">MedicationStatement: obligations</a></td><td>This profile defines obligations for the MedicationStatement resource for the purpose of this guide, adapted from the MPD work.</td></tr>
      <tr><td><a href="StructureDefinition-laboratoryObservation-obl-eu-hdr.html">Observation (laboratory): obligations</a></td><td>This profile defines obligations for laboratory observations in the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-observation-obl-eu-hdr.html">Observation: obligations</a></td><td>This profile defines obligations for observations in the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-organization-obl-eu-hdr.html">Organization: obligations</a></td><td>This profile defines obligations for an organisation in FHIR for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-patient-obl-eu-hdr.html">Patient: obligations</a></td><td>This profile defines obligations for a human Patient in FHIR for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-practitioner-obl-eu-hdr.html">Practitioner: obligations</a></td><td>This profile defines obligations for a health professional represented as a Practitioner in FHIR for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-practitionerRole-obl-eu-hdr.html">PractitionerRole: obligations</a></td><td>This profile defines obligations for a health professional role in FHIR for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-procedure-obl-eu-hdr.html">Procedure: obligations</a></td><td>This profile defines obligations for the Procedure resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-relatedPerson-obl-eu-hdr.html">RelatedPerson: obligations</a></td><td>This profile defines obligations for a related person in FHIR for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-specimen-obl-eu-hdr.html">Specimen: obligations</a></td><td>This profile defines obligations for Specimen in FHIR for the purpose of this guide.</td></tr>
    </tbody>
   </table>
</div>
