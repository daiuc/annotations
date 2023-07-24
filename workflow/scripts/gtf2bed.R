suppressMessages(library(data.table))
suppressMessages(library(tidyverse))
suppressMessages(library(glue))


# Retrieve the file names from command line arguments
args <- commandArgs(trailingOnly = TRUE)

# Check if two arguments (file names) are provided
if (length(args) != 2) {
  stop("Requires 2 GTF files")
}

# Extract the file names
file1 <- args[[1]]
file2 <- args[[2]]

SnakeMode <- F

if (!SnakeMode) {
    print('Interactive Mode')
    file1  <- "../../hg38/gencode.v37.primary_assembly.annotation.csv.gz"
    file2  <- "../../hg38/gencode.v43.primary_assembly.annotation.csv.gz"
}