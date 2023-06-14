/*
Operators

Comparisons
Equality vs Equivalence
*/
library Exercises_TMF03

// # String Equality and Equivalence

define "String Equality":
  ('Abel' = 'abel') is ____

define "String Equivalence":
  ('Abel' ~ 'abel') is ____

define "String Comparison":
  ('Abel' < 'abel') is ____

define "String Equality With Null":
  ('Abel' = null) is ____

define "String Equivalence With Null":
  ('Abel' ~ null) is ____

// # null Equality vs Equivalence

define T1: { X: 1, Y: null }
define T2: { X: 1, Y: null }
define T3: { X: 1, Y: 2 }

define TEqual:
  (T1 = T2) is ____

define TEqualWithNull:
  (T2 = T3) is ____

define TEquivalent:
  (T2 ~ T3) is ____

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
  (C1 = C2) is ____

define CEquivalent:
  (C1 ~ C2) is ____


