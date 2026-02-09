# ==============================
# 1. Import Dataset
# ==============================
df <- read.csv("your_dataset.csv", stringsAsFactors = FALSE)
# If Excel:
# library(readxl)
# df <- read_excel("your_dataset.xlsx")

# ==============================
# 2. Basic Cleaning
# ==============================
df <- na.omit(df)        # remove missing values
df <- unique(df)        # remove duplicates

# ==============================
# 3. Select Engagement Columns
# (change names as per your dataset)
# ==============================
x <- df$likes
y <- df$comments

# ==============================
# 4. Alpha Blending
# ==============================
plot(x, y,
     pch = 16,
     col = rgb(0, 0, 1, alpha = 0.05),
     xlab = "Likes",
     ylab = "Comments",
     main = "Alpha Blending")

# ==============================
# 5. Jittering
# ==============================
plot(jitter(x, amount = 5),
     jitter(y, amount = 5),
     pch = 16,
     col = rgb(1, 0, 0, alpha = 0.05),
     xlab = "Likes",
     ylab = "Comments",
     main = "Jittering")

# ==============================
# 6. Aggregation & Binning
# ==============================
library(ggplot2)

ggplot(df, aes(likes, comments)) +
  stat_bin2d(bins = 40) +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Aggregation & Binning",
       x = "Likes",
       y = "Comments")
