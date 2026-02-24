Instance: ExampleHDREncounter
InstanceOf: EncounterEuHdr
Title: "Encounter: Poc example"
Description: "Encounter: example of Encounter based on the dataset created for the PoC"
Usage: #inline
* id = "b49cdbed-299c-4b95-aa9d-273811521147"
* status = $encounter-status#finished "Finished"
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference (ExampleHDRPatient)
* period.start = "2024-11-11T15:46:00+01:00"
* period.end = "2024-11-12T15:46:00+01:00"
* serviceProvider = Reference (SampleOrganization)


Instance: SampleOrganization
InstanceOf: OrganizationEuHdr
Title: "Organization: Poc example"
Description: "Organization: example of Encounter based on the dataset created for the PoC"
Usage: #inline
* id = "ff4d98d1-69c9-43db-896e-58d11c15662c"
* name = "The healthcare provider organization information."

