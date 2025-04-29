
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
      <col style="width:20%"/>
      <tbody>

         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-allergyIntolerance-obl-eu-hdr.html"
                  title="StructureDefinition/allergyIntolerance-obl-eu-hdr">Allergy Intolerance: Obligations</a>
            </td>
            <td>
<p>This profile defines obligations for the AllergyIntolerance resource for the purpose of this project.</p>
</td>
         </tr>

 <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-carePlan-obl-eu-hdr.html"
                  title="StructureDefinition/carePlan-obl-eu-hdr">Care Plan: obligations</a>
            </td>
            <td>
<p>This profile defines obligations for the CarePlan resource for the purpose of this guide.</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-encounter-obl-eu-hdr.html"
                  title="StructureDefinition/encounter-obl-eu-hdr">Encounter: Obligations</a>
            </td>
            <td>
<p>This profile defines obligations for Inpatient Encounter in HL7 FHIR for the scope of this guide.</p>
</td>
         </tr>

         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-bundle-obl-eu-hdr.html"
                  title="StructureDefinition/bundle-obl-eu-hdr">Bundle (HDR)</a>
            </td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-Patient-obl-eu-hdr.html"
                  title="StructureDefinition/Patient-obl-eu-hdr">Patient: Obligations</a>
            </td>
            <td>
<p>This profile defines obligations for an human Patient in FHIR for the purpose of this guide.</p>
</td>
         </tr>
         <tr>
            <td style="column-width:30%">
               <a href="StructureDefinition-Specimen-obl-eu-hdr.html"
                  title="StructureDefinition/Specimen-obl-eu-hdr">Specimen: Obligations</a>
            </td>
            <td>
<p>This profile defines obligations for Specimen in FHIR for the purpose of this guide.</p>
</td>
         </tr>

      </tbody>
   </table>

</div>
