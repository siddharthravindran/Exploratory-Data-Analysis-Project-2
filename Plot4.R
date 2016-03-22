> NEISCC <- merge(NEI, SCC, by = "SCC")
> CoalEmissions <- grepl ("coal", NEISCC$Short.Name, ignore.case = TRUE)
> NEISCCCoal <- NEISCC[CoalEmissions,]
> TotalCoalEmissionsPerYear <- aggregate(Emissions ~ year, NEISCCCoal, sum)
> png("plot4.png")
> g <- ggplot(TotalCoalEmissionsPerYear, aes(factor(year), Emissions))
> g <- g + geom_bar(stat = "identity") + xlab("year") + ylab("Emissions") + ggtitle('Total Emissions from Coal Sources from 1999 to 2008')
> print(g)
> dev.off()
