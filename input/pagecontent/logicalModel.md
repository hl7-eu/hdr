
This page lists HL7 FHIR logical models used to represent the HOSPITAL DISCHARGE REPORT DATASET as defined in section 4 of that eHN guideline.

To facilitate the references with the eHN data sets the short description of each element reports the label of the eHN element (e.g., A.1.7.2 Result validator name).

The HL7 FHIR logical model requires that element cardinality is specified, while the eHN data set doesn't define them on purpose. For this reason the elements' cardinality of the following FHIR Logical Model should be interpreted with this in mind, thus they should not be considered as "normative".

These models will be likely substituted by the HDR logical models under development by the Xt-EHR Joint Action, currently consultable in the [EHDS Logical Information Models](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/artifacts.html#ehds-hospital-discharge-report-domain-logical-models) site.


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