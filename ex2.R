# Read and clean the MLB data set (MLB_cleaned.csv Download MLB_cleaned.csv, MLB_cleaned.xlsx Download MLB_cleaned.xlsx) (Links to an external site.). 

# Check the data with the function summary()

# ensure you get the appropriate statistics for all columns.

data <- read.csv("data.csv")

clean.data <- data |> 
  drop_na() |> 
  unique()

summary(clean.data)

# Select only the players for the team ‘ARZ’. Compare the column Team with ‘ARZ’ and use subsetting to select the rows.

arz <- clean.data[clean.data$Team == "ARZ", ] # subsetting with TRUE/FALSE vector to select only arz players 


# How many players does the team ‘ARZ’ have in the data set?
nrow(arz)  # count rows in subset. They have 28 players 

# What is the weight of the heaviest player on the team, ‘ARZ’ (use a function)?
weight <- function(x) {
  
  # find the largest weight with max()
  max(x$Weight.pounds.)
  
}

weight(arz) # call the function. The weight of the heaviest arz player is 254 pounds

# What is the average age of all players in the dataset?
mean(clean.data$Age) # the average age is 28.7 

# Add a column called BMI and add the body mass index for each player.
BMI.data <- clean.data |> mutate(BMI = (Weight.pounds. / Height.inches. ^ 2) * 703) # BMI = Weight/height 

BMI.data
# Write the new, cleaned data.frame (including BMI) to a CSV file and open it in Excel to check the file.
write.csv(BMI.data, "clean-with-BMI.csv")
