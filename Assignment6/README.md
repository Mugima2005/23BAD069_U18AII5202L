# Assignment 6 – Implementation of Multivariate Displays

## Student Details
Roll No: 23BAD082  
Course Code: U18AII5202L  

---

## Objective
To implement multivariate visualization techniques to analyze relationships among multiple variables in a retail business dataset.

---

## Folder Structure

Assignment_6/
├── code/
│   └── assignment6.R  
├── data/
│   └── 6.retail_business.csv  
├── figures/
│   ├── parallel_plot.png  
│   ├── bubble_chart.png  
│   └── trellis_display.png  
├── README.md  
└── config.txt  

---

## Dataset Description

The dataset contains retail sales records with the following attributes:

- Order_ID  
- Region  
- Product_Category  
- Sales  
- Profit  
- Discount  
- Customer_Segment  

---

## Visualizations Implemented

1. **Parallel Coordinate Plot**  
   Displays relationships among Sales, Profit, and Discount across customer segments.

2. **Bubble Chart**  
   Shows Sales vs Profit with bubble size representing Discount and color representing Region.

3. **Trellis Display (Faceting)**  
   Shows Profit by Product Category across different Regions and Customer Segments.

---

## Tools and Libraries Used

- RStudio  
- ggplot2  
- dplyr  
- GGally  

---

## How to Run

1. Open RStudio  
2. Set working directory to Assignment_6 folder  
3. Run the script:

```r
source("code/assignment6.R")
