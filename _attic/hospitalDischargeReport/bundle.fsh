Instance: MyHealthEUExampleBundle
InstanceOf: BundleEuHdr
Title: "MyHealth@EU HDR Bundle"
Description: "An example FHIR Bundle for MyHealth@EU using the hdr-myhealtheu profile"
Usage: #example

* identifier.system = "http://example.org"
* identifier.value = "7c8218d6-7a5b-4974-8221-c9102ad4fb41"
* type = #document
* timestamp = "2024-11-18T14:30:00+01:00"

// Include Composition and Patient
* entry[composition][+].fullUrl = "urn:uuid:83b8f6d4-b345-4673-a127-59131ac352c9"
* entry[composition][=].resource = ExampleHDRComposition
* entry[patient][+].fullUrl = "urn:uuid:1d4bbc93-63b7-4f2b-8f0f-8380aa138f49"
* entry[patient][=].resource = ExampleHDRPatient
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:5b87ea1e-01ad-4239-81ec-3a16b5c4f4ec"
* entry[allergyIntolerance][=].resource = ExampleAllergyIntolerance
* entry[device][+].fullUrl = "urn:uuid:a53bdf53-9b4b-4b9d-aaab-ac346c61ea94"
* entry[device][=].resource = ExampleDevice
* entry[encounter][+].fullUrl = "urn:uuid:b49cdbed-299c-4b95-aa9d-273811521147"
* entry[encounter][=].resource = ExampleHDREncounter
* entry[medicationStatement][+].fullUrl = "urn:uuid:b46f7abd-6e20-44e7-bf9a-a0bd9685fd3e"
* entry[medicationStatement][=].resource = ExampleMedicationStatement
* entry[practitioner][+].fullUrl = "urn:uuid:5947e818-0a8c-4f3d-b900-d933da7ed15d"
* entry[practitioner][=].resource = ExamplePractitioner
* entry[practitionerRole][+].fullUrl = "urn:uuid:b06b2c2c-15dd-4e58-b27e-37326ba51407"
* entry[practitionerRole][=].resource = ExamplePractitionerRole
* entry[organization][+].fullUrl = "urn:uuid:ff4d98d1-69c9-43db-896e-58d11c15662c"
* entry[organization][=].resource = SampleOrganization
* entry[procedure][+].fullUrl = "urn:uuid:5b87ea1e-01ad-4239-81ec-3a16b5c4f4ec"
* entry[procedure][=].resource = ExampleProcedure
