
<!-- Horizontal banner -->

<div style="
  /* reserve space for the ToC on the right */
  margin: 0 340px 1.25rem 0;   /* top right bottom left; adjust 340px to your ToC width */
  border: 2px solid #003366;
  border-radius: 8px;
  padding: 1em;
  background-color: #f9f9ff;
  box-sizing: border-box;

  /* optional: pull the banner up a bit to align with the ToC's top */
  /* margin-top: -0.75rem;  uncomment/tweak if you want tighter vertical alignment */
">
  <div style="margin-bottom: 1em;">
    <img src="xtehr-logo.png" alt="XTEHR Logo" style="max-width: 100%; height: 40px;" />
  </div>
  <div style="text-align: left;">
    <strong>Acknowledgment</strong><br/>
    The development of this Implementation Guide version has been supported by the 
    <strong>Xt-EHR Joint Action</strong>.  
    Xt-EHR provided expertise, alignment with European health policy priorities, 
    and validation of specifications to enable consistency with EHDS requirements.
  </div>
</div>


<!-- <div class="model-map-block">
      <div class="callout-wrapper">
        <div class="callout-box">
          <strong>This is a QA preview version:</strong>
              this Implementation Guide is published for <b>review and discussion purposes only.</b>
			  <p>
The content is subject to change and is provided <b>as-is</b>, without warranty of any kind and <b>without liability for its use</b>.</p>
        </div>
      </div>
    </div> -->
    

<div xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">
	<p><b>Obligations</b></p>
		<p>Obligations have been added to this version of the guide only as <b>informative</b> material to collect feedback about their use.</p>		
		<p>For more details about obligations, please refer to the <a href="obligations.html">Obligations page</a>.</p>
	</blockquote>
</div>

<div xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">
<p><b>Section Codes</b></p>
<p>Not all the LOINC codes used in this version align with the purpose of the sections, and in some cases, temporary 'local' codes have been assigned.</p>
<p>A collaboration with LOINC has been established to identify the most appropriate codes for the HDR sections.</p>
<p><b>Adopters should be aware that codes may be subject to change.</b></p>
	</blockquote>
</div>


### Scope

This Implementation Guide specifies a set of rules to be applied to HL7 FHIR to define how to represent a **Hospital Discharge Report** in the **European** context, consistent with the European eHN Guidelines (see the [European eHealth - Key documents](https://health.ec.europa.eu/ehealth-digital-health-and-care/key-documents_en)).

Its main goal is to define the content components and preferred structure for composing a Hospital Discharge Report. 

This includes both jurisdictional and cross-border scenarios. 

This guide doesn't describe how this report is exchanged.

### Purpose
The goal of this Implementation Guide is to define a European standard for the Hospital Discharge Report, facilitating harmonization across national initiatives and laying the groundwork for the European EHR eXchange Format (E-EHRxF), by specifying how to exchange personal electronic health data in the priority category of 'discharge reports' listed in Article 14 of the EHDS Regulation.

This project is promoted by HL7 Europe and developed in collaboration with several other European and national organizations and projects.

The aspiration is for this guide to be used as a basis for European national guides, the European EHRxF and, consequently, by MyHealth@EU for EU cross-border services.

### Background

This guide is part of the group of HL7 FHIR Implementation Guides published by HL7 Europe to support the priority categories identified by the [European Health Data Space Regulation](https://data.consilium.europa.eu/doc/document/PE-76-2024-INIT/en/pdf) (EHDS).

This activity has been carried out in a neutral working space by engaging EEHRxF-related initiatives (Xt-EHR, MyHealth@EU Architecture WG, EU-funded projects), national and regional agencies, relevant stakeholders, and interested communities (e.g. EU HL7 Affiliates, IHE Europe).

More details about the project background can be found in the [background page](background.html).
