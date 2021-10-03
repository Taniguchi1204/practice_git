def fizz_buzz(number)
  if number % 15 == 0
    "fizz_buzz"
  elsif number % 5 == 0
    "Buzz"
  elsif number % 3 == 0
    "Fizz"
  else
    number.to_s
  end
end

