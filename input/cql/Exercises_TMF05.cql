/*
Terminology

CodeSystems
ValueSets
Codes
Concepts
Comparison
Membership Testing

NOTE: Test data for these is located under the Exercises05 library, so
copy these examples into that library to run them.
*/
library Exercises_TMF05

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "Marital Status Codes": 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'
valueset "Marital Status": 'http://hl7.org/fhir/ValueSet/marital-status'

code "Marital Status - Married": 'M' from "Marital Status Codes"

context Patient

/*
Given the following gender definition, write a "Patient Gender is Male" definition
*/
define "Patient Gender": Patient.gender

/*
Write a "Married in Martial Status" definition to test whether the
"Marital Status - Married" code is in the "Marital Status" value set 
(see line 23)
*/
define "Married in Marital Status": ____

/*
Given the following marital status definition, write a "Patient is Married" definition
*/
define "Patient Marital Status": Patient.maritalStatus