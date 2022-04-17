# Import polycor library
library("polycor")

# Import dataset
Prepped_dataset = read_csv("./Prepped dataset.csv")

# cardio & gluc
polychor(Prepped_dataset[,"cardio"],Prepped_dataset[,"gluc"])
# [1] 0.1726017

# cardio & cholesterol
polychor(Prepped_dataset[,"cardio"],Prepped_dataset[,"cholesterol"])
# [1] 0.3606978