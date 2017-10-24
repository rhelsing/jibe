require 'pry'

class Theory

  def notes
    ["c", "c#", "d", "d#", "e", "f", "f#", "g", "g#", "a", "a#", "b"]
  end

  def major
    [0, 2, 2, 1, 2, 2, 2]
  end

  def minor
    [0, 2, 1, 2, 2, 1, 2]
  end

  def scale(key)
    root = key.gsub('m','').downcase
    scale = [root]
    if(key.downcase.include?("m"))
      minor[1..-1].each do |n|
        scale <<  notes[(notes.index(scale.last)+n)%notes.size]
      end
    else
      major[1..-1].each do |n|
        scale <<  notes[(notes.index(scale.last)+n)%notes.size]
      end
    end
    return scale
  end

  def roman_index(roman)
    case roman.downcase.split('-').first
    when 'i'
      0
    when 'ii'
      1
    when 'iii'
      2
    when 'iv'
      3
    when 'v'
      4
    when 'vi'
      5
    when 'vii'
      6
    end
  end

  def chord(c, scale)
    root = roman_index(c)
    if c.split('-').count > 1
      return "#{scale[root]} #{scale[(root+2)%scale.size]} #{scale[(root+4)%scale.size]} #{scale[(root+6)%scale.size]}"
    else
      return "#{scale[root]} #{scale[(root+2)%scale.size]} #{scale[(root+4)%scale.size]}"
    end
  end

  def progression(progression, scale)
    chords = []
    progression.split(' ').each do |c|
      chords << chord(c, scale)
    end
    return chords
  end

end
