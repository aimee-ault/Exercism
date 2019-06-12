class Complement
  DNA_TO_RNA_MAPPING = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(str)
    str.gsub(/[GCTA]/, DNA_TO_RNA_MAPPING)
  end
end
