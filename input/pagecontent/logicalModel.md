
### Overview

The European eHealth Network "GUIDELINE on the electronic exchange of health data under
Cross-Border Directive 2011/24/EU XXXX" - Release 1.1 is addressed to the Member States of the European Union and applies to << extract text from the guideline>>

It could also serve as a guiding principle for the national development and implementation of Patient Summaries.

### HL7 FHIR Models

The eHN XXXX Guideline in section 4 specifies a XXXX DATASET, which is a simplified logical model of a laboratory report. Data set comprises of several basic parts as visualised in the diagram below.

<!-- {% include img.html img="LabReportModel.png" caption="Figure 1: Laboratory dataset model (option 1)" width="70%" %} -->
<!-- {% include img.html img="LabReportModel-1.png" caption="Figure 1: Laboratory dataset model" width="70%" %} -->
<!-- {% include img.html img="ObservationModel.png" caption="Figure 2: Laboratory observation dataset model" width="70%" %} -->

The following table lists the HL7 FHIR logical models used to represent the LABORATORY RESULT DATASET as defined in section 4 of the Release 1.1. of that eHN guideline.

To facilitate the references with the eHN data sets the short description of each element reports the label of the eHN element (e.g., A.1.7.2 Result validator name).

The HL7 FHIR logical model requires that element cardinality is specified, while the eHN data set doesn't define them on purpose. For this reason the elements' cardinality of the following FHIR Logical Model should be interpreted with this in mind, thus they should not be considered as "normative".


<table  style="border-collapse: collapse; width: 100%" border="1" >
<thead>
<tr style="text-align: center;">
<td><strong>Name</strong></td>
<td><strong>Title</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>

{% for sd_hash in site.data.structuredefinitions | sort: "title" -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
  <tr><td><a href="{{sd.path}}">{{sd.name}}</a></td><td>{{sd.title}}</td><td>{{sd.description}}</td></tr>
  {%- endif -%}
{%- endfor -%}

</tbody>
</table>