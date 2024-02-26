# Load necessary packages
library(dplyr)
library(magrittr)

#' Calculate the average house Price in Belfast
#'
#' This function calculates the average house Price in Belfast
#' based on a dataset containing house Prices in different areas.
#'
#' @param house_Prices A data frame containing house Prices data.
#' @return The average house Price in Belfast.
#' @export
#'
#'
# Function to prompt user to add a new data frame
add_new_dataframe <- function() {
  # Prompt user to enter file path
  filepath <- readline(prompt = "Enter file path: ")

  # Read data from file
  data <- read.csv(filepath)

  return(data)
}

# Function to prompt user to choose a city to filter
choose_city_to_filter <- function() {
  # Prompt user for city
  city <- readline(prompt = "Enter city to filter: ")

  return(city)
}

# Function to calculate average house price for a specific city
calculate_avg_house_price <- function(data, city) {
  # Filter house prices for the specified city
  city_prices <- data %>%
    filter(tolower(City) == tolower(city))

  # Calculate the average house price for the specified city
  avg_price <- mean(city_prices$Price)

  return(avg_price)
}

# Function to calculate average house price for a specific city interactively
calculate_avg_house_price_interactive <- function(data) {
  # Prompt user to choose city to filter
  city <- choose_city_to_filter()

  # Calculate and print the average house price for the specified city
  avg_price <- calculate_avg_house_price(data, city)
  cat("Average house price in", city, "is:", avg_price, "\n")
}
