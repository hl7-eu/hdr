
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <blockquote class="stu-note">
  <b>Informative for this version of the guide</b>
  <p>Obligations have been added to this version of the guide only as informative material to collect feedback about their usage.</p>
 </blockquote>
</div>

### Overview

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

The current choice has been that of defining the obligation in StructureDefinitions distinct from those used for defining the structural constraints.

This page describes also the actors that have been used for specifying the obligations.

### Actors

This version of this guide adopts the actors specified by the Xt-EHR joint action:

* the [Consumer](https://www.xt-ehr.eu/fhir/models/en/ActorDefinition-actor-consumer.html): a system that receives electronic health data originating from another system and processes or displays that data. In this role, the system is responsible for ingesting and validating the received data and for preserving the meaning, structure, and associated metadata of the information in accordance with the applicable Consumer obligations, ensuring correct interpretation and presentation to end users or other systems.

* the [Producer](https://www.xt-ehr.eu/fhir/models/en/ActorDefinition-actor-producer.html): a system that generates or makes available structured electronic health data for exchange. In this role, the system is responsible for being technically capable of populating the relevant data elements in accordance with the applicable “able-to-populate” obligations and for associating the required metadata, such as authorship, provenance, status, and temporal information, before the data are made available to downstream systems.

### Obligations List

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<p> </p>

<table class="grid">
      <col style="width:30%"/>
     <tbody>
      <tr><td><a href="StructureDefinition-bundle-obl-eu-hdr.html">Bundle: obligations</a></td><td>This profile defines obligations for the Hospital Discharge Report for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-carePlan-obl-eu-hdr.html">Care Plan: obligations</a></td><td>This profile defines obligations for the CarePlan resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-composition-obl-eu-hdr.html">Composition: obligations</a></td><td>This profile defines obligations for a Hospital Discharge Report (HDR) for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-condition-obl-eu-hdr.html">Condition: obligations</a></td><td>This profile defines obligations for the Condition in the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-device-obl-eu-hdr.html">Device: obligations</a></td><td>This profile defines obligations for the Device resource.</td></tr>
      <tr><td><a href="StructureDefinition-deviceUseStatement-obl-eu-hdr.html">DeviceUseStatement: obligations</a></td><td>This profile defines obligations for the DeviceUseStatement resource.</td></tr>
      <tr><td><a href="StructureDefinition-encounter-obl-eu-hdr.html">Encounter: obligations</a></td><td>This profile defines obligations for Inpatient Encounter.</td></tr>
      <tr><td><a href="StructureDefinition-flag-obl-eu-hdr.html">Flag: obligations</a></td><td>This profile defines obligations for the Flag resource.</td></tr>
      <tr><td><a href="StructureDefinition-immunization-obl-eu-hdr.html">Immunization: obligations</a></td><td>This profile defines obligations for the Immunization resource.</td></tr>
      <tr><td><a href="StructureDefinition-medication-obl-eu-hdr.html">Medication: obligations</a></td><td>This profile defines obligations for the Medication resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationAdministration-obl-eu-hdr.html">MedicationAdministration: obligations</a></td><td>This profile defines obligations for the MedicationAdministration resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationDispense-obl-eu-hdr.html">MedicationDispense: obligations</a></td><td>This profile defines obligations for the MedicationDispense resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationRequest-obl-eu-hdr.html">MedicationRequest: obligations</a></td><td>This profile defines obligations for the MedicationRequest resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationStatement-obl-eu-hdr.html">MedicationStatement: obligations</a></td><td>This profile defines obligations for the MedicationStatement resource.</td></tr>
      <tr><td><a href="StructureDefinition-procedure-obl-eu-hdr.html">Procedure: obligations</a></td><td>This profile defines obligations for the Procedure resource.</td></tr>
      <tr><td><a href="StructureDefinition-patient-obl-eu-hdr.html">Patient: Obligations</a></td><td>This profile defines obligations for the Patient resource.</td></tr>
      <tr><td><a href="StructureDefinition-specimen-obl-eu-hdr.html">Specimen: Obligations</a></td><td>This profile defines obligations for the Specimen resource.</td></tr>
      <tr><td><a href="StructureDefinition-allergyIntolerance-obl-eu-hdr.html">Allergy Intolerance: Obligations</a></td><td>This profile defines obligations for the AllergyIntolerance resource.</td></tr>
      <tr><td><a href="StructureDefinition-humanName-obl-eu-hdr.html">Human Name: Obligations</a></td><td>This profile defines obligations for the HumanName data type.</td></tr>
    </tbody>
   </table>
</div>
