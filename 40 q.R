df <- data.frame(
  month=c(1,2,3,4,5,6),
  spends=c(1000,4000,5000,4500,3000,4000),
  sales=c(9914,40487,54324,50044,34719,42551)
)
print(df)
reg <-lm(spends~sales,data=df)
summary(reg)
new_spend <- data.frame(spends=13500)
predicted_sales <- predict(reg, data = new_spend)
print(predicted_sales)