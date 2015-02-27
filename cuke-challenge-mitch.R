download.file("http://r-bio.github.io/data/holothuriidae-specimens.csv",
            
              "data/holothuriidae-specimens.csv")
download.file("http://r-bio.github.io/data/holothuriidae-nomina-valid.csv",
              "data/holothuriidae-nomina-valid.csv")

hol <- read.csv(file="data/holothuriidae-specimens.csv", stringsAsFactors=FALSE)
nom <- read.csv(file="data/holothuriidae-nomina-valid.csv", stringsAsFactors=FALSE)
hol
# 1; # of specimens = 2984
nrow(hol)

#2; 
table(hol$dwc.institutionCode)
# part a = number of institutions = 4
# part b = 
barplot(table(hol$dwc.institutionCode))


# 3
hol
hol_year <- hol[,c("dwc.year")]
str(hol_year)
head(hol_year)
order_year <- order(hol_year)
hol_year[order_year]
## or

# 3a -> 1902
# 3b -> 

hol_years <- subset(hol,"dwc.year"==2006 &"dwc.year"==2007 &"dwc.year"==2008&"dwc.year"==2009&"dwc.year"==2010&"dwc.year"==2011&"dwc.year"==2012&"dwc.year"==2013&"dwc.year"==2014)
hol_years
hol
hol_years <- subset(hol_year[order_year],"dwc.year"==2006 &"dwc.year"==2007 &"dwc.year"==2008&"dwc.year"==2009&"dwc.year"==2010&"dwc.year"==2011&"dwc.year"==2012&"dwc.year"==2013&"dwc.year"==2014)
hol_years ## ok that was wrong


sum(table(hol$dwc.year[hol$dwc.year>2005]))

##1472

length(hol$dwc.year)
nrow(hol) 

1472/length(hol$dwc.year)

hol$dwc.year

## 4

nzchar(hol$dwc.class)

table(nzchar(hol$dwc.class))

sum(nzchar(hol$dwc.class))

hol$dwc.class <- "Holothuroidea"

nzchar(hol$dwc.class)

summary(nzchar(hol$dwc.class))

sum(nzchar(hol$dwc.class))

nzchar(nom$Genus.current)
nzchar(nom$Subgenus.current)

nom$Genus.current[nzchar(nom$Subgenus.current)]



