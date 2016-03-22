> BaltimoreNEI <- NEI[NEI$fips=="24510",]
> png('plot2.png')
> BaltimoreEmissionsPerYear <- aggregate(Emissions ~ year, BaltimoreNEI, sum)
> barplot(height = BaltimoreEmissionsPerYear$Emissions, names.arg = BaltimoreEmissionsPerYear$year, xlab = "years", ylab = "Emissions", main = "Total PM_2.5 in Baltimore City Emissions at Various Years")
> dev.off()
