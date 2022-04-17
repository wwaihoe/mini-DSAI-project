# Import polycor library
library("polycor")

# Import dataset
prepped_dataset = read_csv("./datasets/prepped_dataset.csv")

# cardio & gluc
polychor(prepped_dataset[,"cardio"],prepped_dataset[,"gluc"])
# [1] 0.1726017

# cardio & cholesterol
polychor(prepped_dataset[,"cardio"],prepped_dataset[,"cholesterol"])
# [1] 0.3606978