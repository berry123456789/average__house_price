context("tests average")

test_that("a csv file can be uploaded successfully"){
  #adding new data frame
  data <- add_new_dataframe()
}


test_that("the average is calculated correctly", {
  # Calculate average house Price for a specific City
  calculate_avg_house_price_interactive(data)
})
