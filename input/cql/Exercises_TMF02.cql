/*
Preliminaries

Lexical Elements
Language Constructs
Identifiers
Case-Sensitivity

There are several lexical errors throughout this library. Correct the errors to
obtain a lexically correct library.
*/
library Exercises_TMF02

// # Lexical Errors

/*
// This is a comment
// Whitespace is all the "invisibles" (spaces, tabs, returns)

define 'This is a quoted identifier': 
  @2021-29-03 + 3 days 

define 1Statement: 
  .1 = 0.1 

// # Syntax Errors

define "Relative Comparison Expression":
  4 < = 5 

define "Quantity Expression":
  5 g/dL 

// # Semantic Errors

define "Reference Expression":
  "quantity expression" 

define "String Concatenation":
  1 + 'John' 

define "Implicit Decimal Conversion":
  1 + 2.0 
