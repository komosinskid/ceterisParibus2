context("Check select_neighbours() function")

apartmentsTest <- apartments_test

new_apartment <- apartments[1, 2:6]

test_that("Output format - select_neighbours",{
  expect_is(select_neighbours(apartmentsTest, new_apartment, n = 10), "data.frame")
  expect_is(select_neighbours(apartmentsTest, new_apartment, n = NULL, frac = 0.001), "data.frame")
})
