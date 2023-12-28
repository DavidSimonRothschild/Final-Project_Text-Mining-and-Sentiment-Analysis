
library(ggplot2)
library(cowplot)

# Define a color palette
my_colors <- c("blue", "red")

# Plot for offensive_language
ol <- ggplot(data = labeled_data, aes(x=offensive_language, y=count)) +
  geom_col(fill=my_colors[1]) +
  theme_minimal() +
  labs(title="Offensive Language Analysis",
       x="Offensive Language",
       y="Count")

# Plot for hate_speech
hs <- ggplot(data = labeled_data, aes(x=hate_speech, y=count)) +
  geom_col(fill=my_colors[2]) +
  theme_minimal() +
  labs(title="Hate Speech Analysis",
       x="Hate Speech",
       y="Count")

# Combine the plots
combined_plot <- plot_grid(ol, hs, ncol = 1, align = 'v', axis = 'tblr',
                           label_size = 15, label_fontface = 'bold')

# Print the combined plot
print(combined_plot)
