data <- data.frame(
  Height = c(70, 69, 71, 71, 69, 68, 70, 70, 71, 80, 79, 81, 82, 78, 70, 71, 72, 73, 72, 73, 70, 71, 72, 71, 73, 71, 72, 73, 74, 69, 72, 71),
  Sport = c(rep("Soccer", 9), rep("Basketball", 5), rep("Football", 6), rep("Swimming", 9), rep("Tennis", 3)),
  Combindata:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAAWElEQVR42mNgGPTAxsZmJsVqQApgmGw1yApwKcQiT7phRBuCzzCSDSHGMKINIeDNmWQlA2IigKJwIssQkHdINgxfmBBtGDEBS3KCxBc7pMQgMYE5c/AXPwAwSX4lV3pTWwAAAABJRU5ErkJggg==e = c(rep("others", 27), rep("Basketball", 5))
)

result_combined <- aov(Height ~ Combine, data=data)
summary(result_combined)

drop1(result_combined, test="F")
