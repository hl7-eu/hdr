Instance: actor-creator-eu-hdr
InstanceOf: ActorDefinition
Title: "HDR Creator"
Description: """Hospital Discharge Report Creator: a system generating and sending/providing a Hospital Discharge Report to a Consumer or to a Repository for report storage and sharing."""
Usage: #example

* url = "http://hl7.eu/fhir/laboratory/actor-creator-eu-hdr"
* name = "HDRCreator"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Hospital Discharge Report creators. That is the actor creating the report that can be sent to a consumer or to a repository for report storage and sharing."""

Instance: actor-consumer-eu-hdr
InstanceOf: ActorDefinition
Title: "HDR Consumer"
Description: """Hospital Discharge Report Report Consumer: a system receiving/querying and using a Hospital Discharge Report."""
Usage: #example

* url = "http://hl7.eu/fhir/laboratory/actor-consumer-eu-hdr"
* name = "HDRConsumer"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Hospital Discharge Report consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""

Instance: actor-repos-eu-hdr
InstanceOf: ActorDefinition
Title: "HDR Repository"
Description: """Hospital Discharge Report Report Repository: a system maintaining a copy of the received Hospital Discharge Report, to store and make it available for the consumers."""
Usage: #example

* url = "http://hl7.eu/fhir/laboratory/actor-repos-eu-hdr"
* name = "HDRRepos"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Hospital Discharge Report Repositories. That is any system maintaining a copy of the report received, to store and make it available for the consumers."""