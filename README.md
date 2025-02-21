# substances: Substance-Aware Unit Conversions in R

## Overview

The `substances` package enables substance-aware unit conversions in R. It facilitates transformations between mass and molar units, supports nonstandard medical unit conversions, and extends the functionality of the `units` package by incorporating molecular weight calculations and domain-specific unit conversions.

## Installation

To install the development version from GitHub, use:

```r
# Install devtools if not already installed
install.packages("devtools")

# Install substances package
devtools::install_github("geeky33/substances", build_vignettes = TRUE)
```

## Features

- Define substances with molecular weight and unit properties.
- Convert between mass and moles for a given substance.
- Perform conversions between nonstandard medical units.
- Support arithmetic operations on substances.

## Usage

### Load the Package

```r
library(substances)
```

### Creating Substances

```r
# Define a new substance
water <- new("substances", name = "water", molecular_weight = 18.02, unit = "g/mol")
```

### Mass-to-Molar Conversions

```r
# Convert 36.04 grams of water to moles
mass_to_moles(36.04, water)  # Output: 2 moles

# Convert 2 moles of water to mass
moles_to_mass(2, water)  # Output: 36.04 grams
```

### Medical Unit Conversions

```r
# Convert 50 U/L to ukat/L
convert_medical_units(50, "U/L", "ukat/L")  # Output: 5e-5 ukat/L
```

### Arithmetic Operations on Substances

```r
ethanol <- new("substances", name = "ethanol", molecular_weight = 46.07, unit = "g/mol")

# Adding two identical substances
combined_ethanol <- ethanol + ethanol
combined_ethanol@molecular_weight  # Output: 92.14 g/mol

# Scaling a substance
scaled_ethanol <- ethanol * 2
scaled_ethanol@molecular_weight  # Output: 92.14 g/mol
```

## License

This package is licensed under the MIT License.