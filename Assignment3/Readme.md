# Multivariate Visualization in Healthcare Data (R)

## 📌 Objective
To discover relationships among multiple health variables using **multivariate visualization** techniques in **R language**.

## 🏥 Scenario
A hospital analytics team studies patient health records to identify relationships between:
- Age  
- BMI  
- Glucose Level  
- Blood Pressure  

This helps in early disease prediction and understanding health risk patterns.

---

## 📂 Dataset Used
**Dataset Name:** `Healthcare_data`  
**Columns:**
- `Patient_ID`
- `Age`
- `Gender`
- `BMI`
- `Blood_Pressure`
- `Glucose_Level`
- `Cholesterol`
- `Disease_Risk`

---

## ✅ Tasks Performed
### 1) Generate Scatter Plot Matrix
- Used scatterplot matrix to visualize relationships between multiple variables at once.

### 2) Apply Color Encoding for Age Groups
- Age was grouped into categories:
  - 0–20
  - 21–35
  - 36–50
  - 51+

### 3) Identify Correlated Health Indicators
- Used correlation matrix to identify strong relationships between health parameters.

---

## 🛠️ Tools / Packages Used
- `GGally` (Scatter plot matrix)
- Base R functions (`cut()`, `cor()`)

---

## 💻 R Code
```r
install.packages("GGally")
library(GGally)

# Create Age Groups
Healthcare_data$AgeGroup <- cut(Healthcare_data$Age,
                                breaks = c(0, 20, 35, 50, 100),
                                labels = c("0-20", "21-35", "36-50", "51+"))

# Scatter Plot Matrix (with Age Group color)
ggpairs(Healthcare_data,
        columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
        aes(color = AgeGroup, alpha = 0.6))

# Correlation Matrix
cor(Healthcare_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")],
    use = "complete.obs")

