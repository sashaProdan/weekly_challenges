class InvalidCodonError < StandardError; end

class Translation
  CODONS   = %w(AUG UUU UUC UUA UUG UCU UCC UCA UCG UAU
                UAC UGU UGC UGG UAA UAG UGA)

  PROTEINS = %w(Methionine Phenylalanine Phenylalanine Leucine Leucine
                Serine Serine Serine Serine Tyrosine Tyrosine Cysteine
                Cysteine Tryptophan STOP STOP STOP)

  TABLE = Hash[CODONS.zip(PROTEINS)]

  def self.of_codon(codon)
    TABLE.values_at(codon).join('')
  end

  def self.of_rna(strand)
    arr = strand.chars.to_a
                .each_slice(3).to_a
                .map { |s| s.join('') }

    proteins = []
    arr.each do |codon|
      raise InvalidCodonError unless TABLE.keys.include?(codon)
      return proteins if of_codon(codon) == 'STOP'
      proteins << of_codon(codon)
    end
    proteins
  end
end
