# =========================================
#Roll no: 23BAD069
# =========================================
# Scatter Plot Matrix + Age Group Colors
# Correlation (Health Indicators)
# Dataset: Healthcare_data
# =========================================

library(GGally)

# Create Age Groups
Healthcare_data$AgeGroup <- cut(Healthcare_data$Age,
                                breaks = c(0, 20, 35, 50, 100),
                                labels = c("0-20", "21-35", "36-50", "51+"))

# Scatter Plot Matrix (with Age Group color)
ggpairs(Healthcare_data,
        columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
        aes(color = AgeGroup, alpha = 0.6))

# Identify correlated health indicators (Correlation Matrix)
cor(Healthcare_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")],
    use = "complete.obs")
