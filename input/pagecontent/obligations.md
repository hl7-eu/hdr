
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
 <blockquote class="stu-note">
  <b>Informative for this version of the guide</b>
  <p>Obligations have been added to this version of the guide only as informative material to collect feedback about their usage.</p>
 </blockquote>
</div>

### Overview

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

The current choice has been that of defining the obligation in StructureDefinitions distinct from those used for defining the structural constraints.

This page describes also the actors that have been defined for specifying the obligations.

### Actors

Three actors have been specified:

* the [Creator](ActorDefinition-actor-creator-eu-hdr.html) ;
* the [Repository](ActorDefinition-actor-repos-eu-hdr.html) ; and
* the [Consumer](ActorDefinition-actor-consumer-eu-hdr.html)

The first is the actor creating the report. This report can be send to a consumer or to a repository for report storage and sharing.
The second actor is the system maintaining a copy of the report received, to store and make it available for the consumers.
The last actor is the system using the report received or retrieved.

<p>{% include actors.svg %}</p>

### Obligations List

<div>

<table class="grid">
      <col style="width:30%"/>
      <tbody>
 <tbody>
      <tr><td><a href="StructureDefinition-bundle-obl-eu-hdr.html">Bundle: obligations</a></td><td>This profile defines obligations for the Hospital Discharge Report for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-carePlan-obl-eu-hdr.html">Care Plan: obligations</a></td><td>This profile defines obligations for the CarePlan resource for the purpose of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-composition-obl-eu-hdr.html">Composition: obligations</a></td><td>This profile defines obligations for a Hospital Discharge Report (HDR) for the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-condition-obl-eu-hdr.html">Condition: obligations</a></td><td>This profile defines obligations for the Condition in the scope of this guide.</td></tr>
      <tr><td><a href="StructureDefinition-consent-obl-eu-hdr.html">Consent: obligations</a></td><td>This profile defines obligations for the Consent resource.</td></tr>
      <tr><td><a href="StructureDefinition-device-obl-eu-hdr.html">Device: obligations</a></td><td>This profile defines obligations for the Device resource.</td></tr>
      <tr><td><a href="StructureDefinition-deviceUseStatement-obl-eu-hdr.html">DeviceUseStatement: obligations</a></td><td>This profile defines obligations for the DeviceUseStatement resource.</td></tr>
      <tr><td><a href="StructureDefinition-encounter-obl-eu-hdr.html">Encounter: obligations</a></td><td>This profile defines obligations for Inpatient Encounter.</td></tr>
      <tr><td><a href="StructureDefinition-familyMemberHistory-obl-eu-hdr.html">FamilyMemberHistory: obligations</a></td><td>This profile defines obligations for the FamilyMemberHistory resource.</td></tr>
      <tr><td><a href="StructureDefinition-flag-obl-eu-hdr.html">Flag: obligations</a></td><td>This profile defines obligations for the Flag resource.</td></tr>
      <tr><td><a href="StructureDefinition-immunization-obl-eu-hdr.html">Immunization: obligations</a></td><td>This profile defines obligations for the Immunization resource.</td></tr>
      <tr><td><a href="StructureDefinition-immunizationRecommendation-obl-eu-hdr.html">ImmunizationRecommendation: obligations</a></td><td>This profile defines obligations for Immunization Recommendations.</td></tr>
      <tr><td><a href="StructureDefinition-Medication-obl-eu-hdr.html">Medication: obligations</a></td><td>This profile defines obligations for the Medication resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationAdministration-obl-eu-hdr.html">MedicationAdministration: obligations</a></td><td>This profile defines obligations for the MedicationAdministration resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationDispense-obl-eu-hdr.html">MedicationDispense: obligations</a></td><td>This profile defines obligations for the MedicationDispense resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationRequest-obl-eu-hdr.html">MedicationRequest: obligations</a></td><td>This profile defines obligations for the MedicationRequest resource.</td></tr>
      <tr><td><a href="StructureDefinition-medicationStatement-obl-eu-hdr.html">MedicationStatement: obligations</a></td><td>This profile defines obligations for the MedicationStatement resource.</td></tr>
      <tr><td><a href="StructureDefinition-observation-infectious-contact-obl-eu-hdr.html">Observation: Infectious Contact: obligations</a></td><td>This profile defines obligations for the Infectious Contact profile.</td></tr>
      <tr><td><a href="StructureDefinition-observation-sdoh-obl-eu-hdr.html">Observation: SDOH: obligations</a></td><td>This profile defines obligations for the Social Determinants of Health profile.</td></tr>
      <tr><td><a href="StructureDefinition-observation-travel-obl-eu-hdr.html">Observation: country visited: obligations</a></td><td>This profile defines obligations for the travel history profile.</td></tr>
      <tr><td><a href="StructureDefinition-procedure-obl-eu-hdr.html">Procedure: obligations</a></td><td>This profile defines obligations for the Procedure resource.</td></tr>
      <tr><td><a href="StructureDefinition-Patient-obl-eu-hdr.html">Patient: Obligations</a></td><td>This profile defines obligations for the Patient resource.</td></tr>
      <tr><td><a href="StructureDefinition-Specimen-obl-eu-hdr.html">Specimen: Obligations</a></td><td>This profile defines obligations for the Specimen resource.</td></tr>
      <tr><td><a href="StructureDefinition-allergyIntolerance-obl-eu-hdr.html">Allergy Intolerance: Obligations</a></td><td>This profile defines obligations for the AllergyIntolerance resource.</td></tr>
      <tr><td><a href="StructureDefinition-HumanName-obl-eu-hdr.html">Human Name: Obligations</a></td><td>This profile defines obligations for the HumanName data type.</td></tr>
    </tbody>   </table>

</div>
