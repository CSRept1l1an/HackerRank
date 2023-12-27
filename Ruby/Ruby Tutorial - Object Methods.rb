def odd_or_even(number)
    if number.even?
        return true
      else
        return false
      end
end

(0...gets.to_i).each do |i|
    puts odd_or_even(gets.to_i)
end
