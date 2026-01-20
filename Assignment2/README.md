# Advanced Visualization in R – E-Commerce Transaction Analysis

## 📌 Objective
To explore **data distribution** and **variability** using advanced visualization techniques in R.

## 🧾 Scenario
A startup analyzes **e-commerce transaction data** to understand customer spending behavior and detect **abnormal purchase patterns**.

---

## ✅ In-Lab Tasks
This assignment includes the following visualizations:

### 1. Histogram of Transaction Amounts
- Used to understand the **distribution of customer spending**
- Helps identify **right-skewed / left-skewed behavior**

### 2. Boxplot to Detect Outliers
- Detects **abnormal transactions**
- Highlights **outliers** such as fraud or high-value customers

### 3. Heatmap of Monthly Sales Intensity
- Shows **monthly sales concentration**
- Helps identify **peak months and low-sales periods**

---

## 📂 Dataset Details
### Columns Used
- `Transaction_ID`
- `Customer_ID`
- `Transaction_Date`
- `Product_Category`
- `Transaction_Amount`
- `Payment_Mode`
- `Region`

---

## 🛠️ Tools & Libraries Used
- **R Programming**
- `ggplot2`

Install ggplot2 if not available:
```r
install.packages("ggplot2")

