**Quick Start**

Below is an overview of the required Server RESTful FHIR interactions for this profile - for example, search and read operations - when supporting the US Core interactions to access this profile’s information (Profile Support + Interaction Support). Note that systems that support only US Core Profiles (Profile Only Support) are not required to support these interactions. See the US Core Server CapabilityStatement for a complete list of supported RESTful interactions for this IG.

- The syntax used to describe the interactions is described here.

- Servers providing access to patient data can use US Core SMART Scopes for:
  - resource level scopes (for example, patient/Patient.rs).
- See the General Requirements section for additional rules and expectations when a server requires status parameters.
- See the General Guidance section for additional guidance on searching for multiple patients.

#### Mandatory Search Parameters:

The following search parameters and search parameter combinations SHALL be supported:

1. **SHALL** support both read Patient by id **AND** Patient search using the \_id search parameter:

   `GET [base]/Patient/[id]` or `GET [base]/Patient?_id=[id]`

   Example:

   1. GET [base]/Patient/1032702
   2. GET [base]/Patient?_id=1032702
      \_Implementation Notes: (how to search by the logical id of the resource)_

2. **SHALL** support searching a patient by an identifier such as a MPI using the `identifier` search parameter:

   `GET [base]/Patient?identifier={system|}[code]`

   Example:

   1. GET [base]/Patient?identifier=http://hospital.smarthealthit.org|1032702
      _Implementation Notes: Fetches a bundle containing any Patient resources matching the identifier (how to search by token)_
