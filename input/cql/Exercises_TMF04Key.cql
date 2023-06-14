/*
Operators

Date Comparison
Date Arithmetic
Calendar Durations vs UCUM
Duration and Difference
*/
library Exercises_TMF04Key

// # Date Comparisons

define "Date Equal":
  @2014-01-15 = @2014-02-15

define "Date Less Than":
  @2014-01-15 < @2014-02-15

define "Date Less Or Equal":
  @2014-01-15 <= @2014-02-15

define "Same Year As":
  @2014-01-15 same year as @2014-02-15

define "Same Year Or Before":
  @2012-01-15 same year or before @2014-02-15

define "Before Year Of":
  @2012-01-15 before year of @2014-02-15

// # UCUM

define "Day Quantity":
  1 day

define "Years Quantity":
  2 years

define "Minutes Quantity":
  30 minutes

define "UCUM Days":
  1 'd'

define "UCUM Annum":
  2 'a'

define "UCUM Minutes":
  30 'min'

define "Calendar Years Equal To UCUM Annum (a)":
  1 year = 1 'a'

define "Calendar Years Equivalent To UCUM Annum (a)":
  1 year ~ 1 'a'

define "Calendar Months Equivalent To UCUM Month (mo)":
  1 month ~ 1 'mo'

define "Calendar Weeks Equal To UCUM Weeks (wk)":
  1 week = 1 'wk'

// # Date Arithmetic

define "1 Year Ago":
  Today() - 1 year

define "Add 30 Minutes":
  @2014-02-01T14:30 + 30 minutes

define "Add 24 Months":
  @2014 + 24 months

// # Duration And Difference

define "Duration In Months Between":
  duration in months between @2014-01-31 and @2014-02-01

define "Difference In Months Between":
  difference in months between @2014-01-31 and @2014-02-01

