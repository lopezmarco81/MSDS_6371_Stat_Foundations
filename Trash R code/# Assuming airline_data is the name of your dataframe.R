boxplot(airline_data$Delta, airline_data$Spirit, 
        names=c("Delta", "Spirit"), 
        main="Boxplot of Delays for Delta and Spirit", 
        ylab="Delay (in minutes)", 
        col=c("skyblue", "lightcoral"),
        border="black")
