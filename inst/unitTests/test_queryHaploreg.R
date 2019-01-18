test_queryHaploreg <- function() {
    # Test vector of SNPs
    x <- queryHaploreg(query=c("rs10048158","rs4791078"), 
                       timeout=1000000)
    checkEqualsNumeric(dim(x)[1], 33)
    # Test loading from file
    x <- queryHaploreg(file=system.file("extdata/snps.txt", package = "haploR"), 
                       timeout=1000000)
    checkEqualsNumeric(dim(x)[1], 33)
    # Test loading from study
    #studies <- getStudyList()
    #x <- queryHaploreg(study=studies[[1]], 
    #                   timeout=Haploreg.settings[["curl.timeout"]])
    study <- list(name="Î²2-Glycoprotein I (Î²2-GPI) plasma levels (Athanasiadis G, 2013, 9 SNPs)",
                 id="1756")
    x <- queryHaploreg(study=study, 
                       timeout=1000000)
    checkEqualsNumeric(dim(x)[1], 117)
}
