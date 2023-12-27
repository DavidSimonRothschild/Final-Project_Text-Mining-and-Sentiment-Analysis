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
ggplot(data, aes(x = Week, y = Value)) +
  geom_line() + # Add the line plot
  geom_rect(aes(xmin = start_date, xmax = end_date, ymin = -Inf, ymax = Inf), 
            fill = "yellow", alpha = 0.008) + # Highlight the specified date range
  labs(title = "Trend Over Time for Truth Social: (Global)",
       x = "Date", y = "Value of search") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Rotate x-axis labels

