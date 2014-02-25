
ROMAN = {
  1 => 'I',
  5 => 'V',
  10 => 'X',
  50 => 'L',
  100 => 'C',
  1000 => 'M'
}

def convert(number)   
  roman_numeral = "" 

  ROMAN.keys.reverse.each do |tier| 
    factor = number / tier 
      number -= factor * tier
      roman_numeral += ROMAN[tier] * factor
  end
  roman_numeral
end

puts convert(2224)