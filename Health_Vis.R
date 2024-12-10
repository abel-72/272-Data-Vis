install.packages("readr")

install.packages("GGally")
install.packages("NHANES")

library(tidyverse)
library(GGally)
library(readr)
library(NHANES)

data("NHANES")
View(NHANES)

##create a subtable that only has BMI, age, gender and cholesterol

health_data <- NHANES %>% select(BMI,Age, Gender, TotChol)

##create a histogram of BMI using ggplot

ggplot(health_data, aes (x=BMI)) +
  geom_histogram(bindwith = 1, fill = "skyblue", colour = "black") +
  labs(title = "Mean height in Wales is higher than European Average")+
  theme_minimal()


## create a correlation plot

val_cor <- health_data %>% select(BMI,Age,TotChol) %>%
  cor(use = "complete.obs")
ggcorr(val_cor, label = TRUE, label_alpha = TRUE)

clone code, change code, make branch, pull request