library(readr)
multiTimeline_5 <- read_csv("Downloads/multiTimeline-5.csv", 
                            skip = 1)
View(multiTimeline_5)



# Load necessary libraries
library(ggplot2)
library(lubridate)

# Read the data
data <- read_csv("Downloads/multiTimeline-5.csv", 
                 skip = 1)
names(data) <- c("Week", "Value")
data$Week <- as.Date(data$Week)

# Define the start and end dates for the highlight
start_date <- as.Date("2022-09-04")
end_date <- as.Date("2022-10-14")

# Create the plot
# Load necessary libraries
library(ggplot2)
library(lubridate)
library(readr) # Added for read_csv

# Read the data
data <- read_csv("Downloads/multiTimeline-5.csv", 
                 skip = 1)
names(data) <- c("Week", "Value")
data$Week <- as.Date(data$Week, format = "%Y-%m-%d") # Ensure the format matches your data

# Define the start and end dates for the highlight
start_date <- as.Date("2022-09-04")
end_date <- as.Date("2022-10-14")

# Define the x-axis date range
x_start <- as.Date("2022-02-01") # Beginning of February 2022
x_end <- as.Date("2023-12-31")   # End of December 2023

# Create the plot
ggplot(data, aes(x = Week, y = Value)) +
  geom_line() + # Add the line plot
  geom_rect(xmin = start_date, xmax = end_date, ymin = -Inf, ymax = Inf, 
            fill = "yellow", alpha = 0.0099) + # Highlight the specified date range
  scale_x_date(limits = c(x_start, x_end),
               date_breaks = "3 months", 
               date_labels = "%b %Y") + # Display every third month
  labs(title = "Trend Over Time for Truth Social: (Global)",
       x = "Date", y = "Value of search") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Rotate x-axis labels


