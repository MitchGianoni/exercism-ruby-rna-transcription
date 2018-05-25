require 'pry'

class Complement
  def self.of_dna(dna)
    if dna.length == 1
      if dna == 'G'
        rna = 'C'
      elsif dna == 'C'
        rna = 'G'
      elsif dna == 'T'
        rna = 'A'
      elsif dna == 'A'
        rna = 'U'
      else
        rna = ''
      end
      return rna
    else
      dna_array = dna.split('')
      i = 0
      while i < dna_array.length
        if dna_array[i] == 'G'
          dna_array[i] = 'C'
          i += 1
        elsif dna_array[i] == 'C'
          dna_array[i] = 'G'
          i += 1
        elsif dna_array[i] == 'T'
         dna_array[i] = 'A'
         i += 1
        elsif dna_array[i] == 'A'
          dna_array[i] = 'U'
          i += 1
        else
          dna_array = ['']
          i = dna_array.length
        end
      end

      return dna_array.join('')
    end
  end
end

Complement.of_dna('ACGTGGTCTTAA')
