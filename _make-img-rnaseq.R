### not best match for this booklet
### But best quick and dirty solution
### This code example is taken from Gviz
### https://bioconductor.org/packages/release/bioc/vignettes/Gviz/inst/doc/Gviz.R

library(Gviz)
library(BSgenome.Hsapiens.UCSC.hg19)

sTrack <- SequenceTrack(Hsapiens)

afrom <- 
  44944400
ato <- 
  44947200
alTrack <- AlignmentsTrack(system.file(package="Gviz", "extdata",
                                       "snps.bam"), isPaired=TRUE)

svg(filename = "images/mreads_gviz.svg", height = 4)
plotTracks(c(alTrack, sTrack),
           chromosome="chr21", from=afrom, to=ato)
dev.off()
