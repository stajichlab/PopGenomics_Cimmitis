library(tidyverse)
library(cn.mops)
bamdir="bam"
BAMFiles <- list.files(path=bamdir,pattern=".bam$",full.names=TRUE)
bamDataRanges <- getReadCountsFromBAM(BAMFiles,refSeqName=c(paste0("scaffold_",1:5)),WL=5000)
res <- haplocn.mops(bamDataRanges)
res <- calcIntegerCopyNumbers(res)

segm <- as.data.frame(segmentation(res))
CNVs <- as.data.frame(cnvs(res))
CNVRegions <- as.data.frame(cnvr(res))

write_csv(segm,"CNV_segments.csv")
write_csv(CNVs,"CNV_cnvs.csv")
write_csv(CNVRegions,"CNV_cnv_regions.csv")
