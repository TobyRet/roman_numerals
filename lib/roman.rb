ROMAN = {
  1 => 'I',
  4 => 'IV',
  5 => 'V',
  9 => 'IX',
  10 => 'X',
  40 => 'XL',
  50 => 'L',
  90 => 'XC',
  100 => 'C',
  400 => 'CD',
  500 => 'D',
  900 => 'CM',
  1000 => 'M'
}

def convert(number)   
  roman_numeral = "" 
  ROMAN.keys.reverse.each do |tier| 
    factor = number / tier 
    number -= factor * tier 
    roman_numeral += ROMAN[tier] * factor if factor < 4
  end
  roman_numeral
end
