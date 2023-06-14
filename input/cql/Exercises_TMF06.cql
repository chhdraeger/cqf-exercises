/*
Patterns

Primitives
*/
library Exercises_TMF06

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'


codesystem "Marital Status Codes": 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'
valueset "Marital Status": 'http://hl7.org/fhir/ValueSet/marital-status'

code "Marital Status - Married": 'M' from "Marital Status Codes"

context Patient

/*
Update this library to use FHIRHelpers and simplify the expressions to take advantage of the
implicit conversions in FHIRHelpers

This includes deleting the ToCode and ToConcept functions at the end
of this library, they are provided implicitly as part of FHIRHelpers and the
conversions.
*/

define TestPrimitives:
  Patient P
    where P.gender.value = 'male'
      and P.active.value is true
      and P.birthDate.value before Today()
      and ToConcept(P.maritalStatus) in "Marital Status"
      and ToConcept(P.maritalStatus) ~ "Marital Status - Married"

define function ToCode(coding FHIR.Coding):
    if coding is null then
        null
    else
        System.Code {
          code: coding.code.value,
          system: coding.system.value,
          version: coding.version.value,
          display: coding.display.value
        }

define function ToConcept(concept FHIR.CodeableConcept):
    if concept is null then
        null
    else
        System.Concept {
            codes: concept.coding C return ToCode(C),
            display: concept.text.value
        }
