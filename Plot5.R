> BaltimoreCarsOnRoadNEI <- NEI[NEI$fips == "24510" & NEI$type == "ON-ROAD",]
> TotalBaltimoreCarsOnRoadEmissionsPerYear <- aggregate(Emissions ~ year, BaltimoreCarsOnRoadNEI, sum)
> png("plot5.png")
> g <- ggplot(TotalBaltimoreCarsOnRoadEmissionsPerYear, aes(factor(year), Emissions))
> g <- g + geom_bar(stat = "identity") + xlab("year") + ylab ("Emissions") + ggtitle('Total Emissions Per Year in Baltimore for Cars On the Road')
> print(g)
> dev.off()
