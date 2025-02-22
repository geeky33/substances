# Substances Package: Task Completion Report

# Introduction

This report outlines the completion of easy and medium-level tasks for the substances package in R. The package facilitates `substance-aware` unit conversions, including `mass-to-mole` transformations and medical unit conversions.

# Task Breakdown

### Easy Task

Creating Substances:

Successfully created instances of substances like water and glucose.


```r
water <- substance("water", 18.02)
glucose <- substance("glucose", 180.16)
print(water)
```

Mass-to-Moles Conversion:

Converted mass values to moles for different substances.

```r
moles_water <- mass_to_moles(36.04, water)
print(moles_water)

moles_glucose <- mass_to_moles(360.32, glucose)
print(moles_glucose)
```

Moles-to-Mass Conversion:

Converted mole values back to mass.
```r
mass_water <- moles_to_mass(1, water)
print(mass_water)

mass_glucose <- moles_to_mass(5, glucose)
print(mass_glucose)
```
### Medium Task

Retrieving a Substance from the Database:

Successfully fetched glucose from the predefined database.
```r
glucose_from_db <- get_substance("glucose")
print(glucose_from_db)
```

Arithmetic Operations on Substances:

Added two glucose objects and scaled the molecular weight.

```r
total_mass <- glucose + glucose
print(total_mass@molecular_weight)

double_glucose <- glucose * 2
print(double_glucose@molecular_weight)
```


Medical Unit Conversion:

Converted values between nonstandard medical units.
```r
medical_conversion <- convert_medical_units(50, "U/L", "ukat/L")
print(medical_conversion)
```

## Hard Task

We have developed an R package that includes functions, tests, vignettes, and proper documentation in Rd files. The package was created using `devtools`, ensuring that it follows best practices for R package development.

The package is installable using:

```r
devtools::install_github("geeky33/substances", build_vignettes = TRUE)
```

Users can recreate the results in RStudio by installing and using the package accordingly. The package includes comprehensive documentation and test cases to ensure reliability.

---
