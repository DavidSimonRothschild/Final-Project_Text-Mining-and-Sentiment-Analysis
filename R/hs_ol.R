# Import a pickle file
library(ggplot2)
ol <- ggplot(data = labeled_data, aes(x=offensive_language, y= count)) + geom_col()+theme_minimal()


hs <- ggplot(data = labeled_data, aes(x=hate_speech, y= count)) + geom_col()+theme_minimal()

# combine the plots ol and hs
library(cowplot)
plot_grid(ol, hs, labels = c( "offensive_language", "hate_speech"), ncol = 1)))

# plot the combined plot
plot_grid(ol, hs, labels = c( "offensive_language", "hate_speech"), ncol = 1)


# plot the combined plot
plot_grid(ol, hs, labels = c( "offensive_language", "hate_speech"), ncol = 1)


