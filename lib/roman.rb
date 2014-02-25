
ROMAN = {
  1 => 'I',
  5 => 'V',
  10 => 'X',
  50 => 'L',
  100 => 'C',
  1000 => 'M'
}

def convert(number)
  @number = number
  return_value = []

  ROMAN.map{|k,v| k}.sort.reverse.each do |tier|
    factor = @number / tier
    if factor >= 1
      @number = @number - (factor * tier)
      factor.times {|n| return_value << ROMAN[tier]}
    end
  end
return_value.join
end

