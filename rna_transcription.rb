class Complement
  def self.of_dna(x)
    if x == 'G'
      return 'C'
    elsif x == 'C'
      return 'G'
    elsif x == 'T'
      return 'A'
    elsif x == 'A'
      return 'U'
    end
  end
end

# class RnaTranscription

# end
