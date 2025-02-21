library(testthat)
library(substances)

test_that("mass_to_moles works correctly", {
  water <- substance("water", 18.02)
  expect_equal(mass_to_moles(18.02, water), 1)
})

test_that("moles_to_mass works correctly", {
  glucose <- substance("glucose", 180.16)
  expect_equal(moles_to_mass(1, glucose), 180.16)
})

test_that("convert_medical_units works correctly", {
  expect_equal(convert_medical_units(50, "U/L", "ukat/L"), 5e-5)
})
