translate <- function(bases) {
    if (length(bases) == 0 || bases == "") return(NULL)


  codon_table <- c(
    AUG = "Methionine",
    UUU = "Phenylalanine", UUC = "Phenylalanine",
    UUA = "Leucine",       UUG = "Leucine",
    UCU = "Serine",        UCC = "Serine",  UCA = "Serine", UCG = "Serine",
    UAU = "Tyrosine",      UAC = "Tyrosine",
    UGU = "Cysteine",      UGC = "Cysteine",
    UGG = "Tryptophan",
    UAA = "STOP",          UAG = "STOP",    UGA = "STOP"
  )

  codons <- substring(bases, seq(1, nchar(bases), 3), seq(3, nchar(bases), 3))

  amino_acids <- c()
  for (codon in codons) {
    protein <- codon_table[codon]
    if (protein == "STOP") break
    amino_acids <- c(amino_acids, unname(protein))
  }

  return(amino_acids)
}

translate("UUUUUUUUUUUUUUU")  # "Phenylalanine" "Phenylalanine"
translate("AUGUUU")  # "Methionine" "Phenylalanine"