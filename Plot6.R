> LAnBaltimoreCarsOnRoadNEI <- NEI[(NEI$fips == "24510"|NEI$fips == "06037") & NEI$type == "ON-ROAD",]
> LAnBaltimoreCarsOnRoadEmissionsPerYear <- aggregate(Emissions ~ year + fips, LAnBaltimoreCarsOnRoadNEI, sum)
> LAnBaltimoreCarsOnRoadEmissionsPerYear$fips[LAnBaltimoreCarsOnRoadEmissionsPerYear$fips == "24510"] <- "Baltimore, MD"
> LAnBaltimoreCarsOnRoadEmissionsPerYear$fips[LAnBaltimoreCarsOnRoadEmissionsPerYear$fips == "06037"] <- "Los Angeles, CA"
> png("plot6.png")
> g <- ggplot(LAnBaltimoreCarsOnRoadEmissionsPerYear, aes(factor(year), Emissions))
> g <- g + facet_grid(.~fips)
> g <- g + geom_bar(stat="identity") + xlab("year") + ylab("Emissions") + ggtitle( 'Total Emissions from On Road Cars in Baltimore, MD (fips ="24510") vs Los Angeles, CA (fips= "06037") from 1999-2008')
> print(g)
> dev.off()
