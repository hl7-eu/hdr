This guide is part of the group of HL7 FHIR Implementation Guides published by HL7 Europe (see figure 1) to support the priority categories identified by the [European Health Data Space Regulation](https://data.consilium.europa.eu/doc/document/PE-76-2024-INIT/en/pdf) (EHDS).


<div>
<img src="ig-overview.png" class="figure-img img-responsive img-rounded center-block" width="70%">
<p><strong>Fig. 1: HL7 EU FHIR IG overview</strong></p>
<p> </p>
</div>

### The EHDS regulation

The EHDS regulation defines a framework to:

* empower individuals to take control of their health data and facilitate the exchange of data for the delivery of healthcare across the EU [primary use of data](https://health.ec.europa.eu/ehealth-digital-health-and-care/electronic-cross-border-health-services_en)
* foster a genuine single market for electronic health record systems
* provide a consistent, trustworthy, and efficient system for reusing health data for research, innovation, policy-making, and regulatory activities [secondary use of data](https://tehdas.eu/)


#### The European EHR eXchange Format (EEHRxF)

A key role in the regulation is played by the **European EHR eXchange Format** (EEHRxF) defined as a *"commonly used, machine-readable and allow transmission of personal electronic health data between different software applications, devices and healthcare providers.*
*The format should support transmission of structured and unstructured health data."*

When the regulation will enter into application EHR-systems will be required to support the EEHRxF for providing and receiving personal electronic health data under a **priority category for primary use** established under the EHDS Regulation. 
The six priority categories are summarized in the following picture, including the **Hospital Discharge Report** subject of this guide.

<div>
<img src="ehds-domain.png" class="figure-img img-responsive img-rounded center-block" width="70%">
<p><strong>Fig. 2: EHDS priority categories</strong></p>
</div>

The EEHRxF will be defined by the European Commission through a set of Implementation Acts: a proposal for these Acts is being prepared by the [Joint Action 09 (Xt-EHR)](https://www.xt-ehr.eu/)


### EEHRxF: not a one-fits-all solution

The EEHRxF intended use is not limited to the Cross-Borders exchange, but it includes all the possible contexts and purposes of the primary use of health data.

Considering this, there is not a one-fit-all solution covering all these scopes, but this expectation can be fullfilled only by a coherent ecosystem of specifications- hopefully based on standards - covering European common rules, cross-border and National specifications.

The follwooing figure summarized this layered approach

<div>

<img src="ehds-ig-strategy.png" class="figure-img img-responsive img-rounded center-block" width="70%">
<p><strong>Fig. 3: EEHRxF proposed IG approach</strong></p>
</div>

### A result of a collaborative effort

This activity has been carried out in a neutral working space by engaging EEHRxF-related initiatives (Xt-EHR, MyHealth@EU Architecture WG, EU-funded projects), national and regional agencies, relevant stakeholders, and interested communities (e.g. EU HL7 Affiliates, IHE Europe).

More that 150 individuals from 23 countries contributed to this result.
