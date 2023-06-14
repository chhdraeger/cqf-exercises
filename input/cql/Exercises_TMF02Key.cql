/*
Preliminaries

Lexical Elements
Language Constructs
Identifiers
Case-Sensitivity

There are several lexical errors throughout this library. Correct the errors to
obtain a lexically correct library.
*/
library Exercises_TMF02Key // 1) Library needs to match file name

// # Lexical Errors

/*
// This is a comment
// Whitespace is all the "invisibles" (spaces, tabs, returns)
*/ // 2) Multi-line comments need a close
define "This is a quoted identifier": // 3) Quoted identifier missing a close quote
  @2021-03-29 + 3 days // 4) DateTime literals use ISO date/time format

define Statement1: // 5) Unquoted identifiers can't begin with numbers
  0.1 = 0.1 // 6) decimal (and quantity) literals must have a leading zero

// # Syntax Errors

define "Relative Comparison Expression":
  4 <= 5 // 9) No space between <= operator

define "Quantity Expression":
  5 'g/dL' // 10) Units of a quantity are specified with a string

// # Semantic Errors

define "Reference Expression":
  "Quantity Expression" // 11) Identifiers are case-sensitive

define "String Concatenation":
  '1' + 'John' // 12) Can't add strings and integers

define "Implicit Decimal Conversion":
  1 + 2.0 
