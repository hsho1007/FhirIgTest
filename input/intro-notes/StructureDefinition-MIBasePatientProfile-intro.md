The US Core Patient Profile meets the U.S. Core Data for Interoperability (USCDI) v3 ‘Patient Demographics’ requirements. This profile sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile to promote interoperability and adoption through common implementation. It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource and constrains the way the elements are used when using this profile. It provides the floor for standards development for specific use cases.

**Example Usage Scenarios:**
The following are example usage scenarios for this profile:

- Query for a Patient demographic information using Medical Record Number (MRN), which is a type of identifier. The MRN is identifiable by `identifier.system` and may be location specific.
- Query for a Patient demographic information using first name, last name, birthdate, and gender.

### Mandatory and Must Support Data Elements

The following data-elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system (Must Support definition). They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

**Each Patient Must Have:**

1. a patient identifier (e.g. MRN)
2. a patient name
3. a gender\*

**Each Patient Must Support:**

1. a birth date
2. an address

**Additional USCDI Requirements**
For ONC’s USCDI requirements, each Patient Must Support the following additional elements. These elements are included in the formal definition of the profile and the Patient examples.

1. contact detail (e.g. a telephone number or an email address)
2. a communication language
3. a race
4. an ethnicity
5. a tribal affiliation
6. sex\*
7. gender identity\*
8. date of death
9. previous address
10. previous name
11. suffix
