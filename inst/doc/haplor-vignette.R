## ---- echo=TRUE, eval=FALSE----------------------------------------------
#  devtools::install_github("izhbannikov/haplor", buildVignette=TRUE)

## ---- echo=TRUE, message=FALSE-------------------------------------------
library(haploR)
results <- queryHaploreg(query=c("rs10048158","rs4791078"))
head(results)

## ---- echo=TRUE, message=FALSE-------------------------------------------
library(haploR)
results <- queryHaploreg(file=system.file("extdata/snps.txt", package = "haploR"))
head(results)

## ---- echo=TRUE, message=FALSE-------------------------------------------
library(haploR)
# Getting a list of existing studies:
studies <- getStudyList()
# Let us look at the first element:
studies[[1]]
# Let us look at the second element:
studies[[2]]
# Query Hploreg to explore results from 
# this study:
results <- queryHaploreg(study=studies[[2]])
head(results)

## ---- echo=TRUE, message=FALSE-------------------------------------------
library(haploR)
data <- queryRegulome(c("rs4791078","rs10048158"))
head(data)

## ---- echo=TRUE----------------------------------------------------------
sessionInfo()

