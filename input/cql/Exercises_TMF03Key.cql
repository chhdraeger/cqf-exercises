/*
Operators

Comparisons
Equality vs Equivalence
*/
library Exercises_TMF03Key

// # String Equality and Equivalence

define "String Equality":
  ('Abel' = 'abel') is false

define "String Equivalence":
  ('Abel' ~ 'abel') is true

define "String Comparison":
  ('Abel' < 'abel') is true

define "String Equality With Null":
  ('Abel' = null) is null

define "String Equivalence With Null":
  ('Abel' ~ null) is false

// # null Equality vs Equivalence

define T1: { X: 1, Y: null }
define T2: { X: 1, Y: null }
define T3: { X: 1, Y: 2 }

define TEqual:
  (T1 = T2) is true

define TEqualWithNull:
  (T2 = T3) is null

define TEquivalent:
  (T2 ~ T3) is false

// # structured type Code

define C1:
  Code {
    code: 'ABC',
    display: 'Code ABC',
    system: 'http://example.com',
    version: '2017-01'
  }

define C2:
  Code {
    code: 'ABC',
    display: 'Variant Description',
    system: 'http://example.com',
    version: '2017-05'
  }

define CEqual:
  (C1 = C2) is false

define CEquivalent:
  (C1 ~ C2) is true


