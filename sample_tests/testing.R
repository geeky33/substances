library(substances)

# Create substances
water <- substance("water", 18.02)
glucose <- substance("glucose", 180.16)

print(water)

# Convert mass to moles
moles_water <- mass_to_moles(36.04, water)
print(moles_water)

moles_glucose <- mass_to_moles(360.32, glucose)
print(moles_glucose)

# Convert moles to mass
mass_water <- moles_to_mass(1, water)
print(mass_water)

mass_glucose <- moles_to_mass(5, glucose)
print(mass_glucose)

# Fetch glucose from the database
glucose_from_db <- get_substance("glucose")
print(glucose_from_db)

# Add two glucose objects
total_mass <- glucose + glucose
print(total_mass@molecular_weight)

# Scale glucose molecular weight
double_glucose <- glucose * 2
print(double_glucose@molecular_weight)

# Convert medical units
medical_conversion <- convert_medical_units(50, "U/L", "ukat/L")
print(medical_conversion)
