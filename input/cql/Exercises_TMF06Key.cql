/*
Patterns

Primitives

NOTE: Test data for these is located under the Exercises09 library, so
copy these examples into that library to run them.
*/
library Exercises_TMF06Key

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'


codesystem "Marital Status Codes": 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'
valueset "Marital Status": 'http://hl7.org/fhir/ValueSet/marital-status'

code "Marital Status - Married": 'M' from "Marital Status Codes"

context Patient

define TestPrimitives:
  Patient P
    where P.gender = 'male'
      and P.active is true
      and P.birthDate before Today()
      and P.maritalStatus in "Marital Status"
      and P.maritalStatus ~ "Marital Status - Married"